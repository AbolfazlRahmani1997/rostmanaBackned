<?php

namespace App\Http\Controllers;
use App\automode;
use App\Comand;
use App\gender;
use App\Http\Requests\logsRquest;
use App\log;
use App\builder;
use App\Plant;
use App\User;
use App\watermode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use phpDocumentor\Reflection\Types\Null_;
use Yajra\DataTables\DataTables;

class BuilderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function SetConf(Request $request)
    {
        $builder=builder::where('qrcode',$request->qrcode)->get();
        return $builder->Comand();

    }
    public function UpdateLog(Request $request){



       $builder=builder::where('qrcode',$request->qrcode)->get()->first();
      $log=log::where('builder_id',$builder->id)->get()->last();
       $log=new log();

       $log->fogger_status=$request->fogger_status;
       $log->fan_status=$request->fan_status;
       $log->humidity_air=$request->humidity_air;
       $log->humidity_soil=$request->humidity_soil;
       $log->temp=$request->temp;
       $log->light=$request->light;
       $log->name=$request->name;
       $log->water_level=$request->water_level;
       $builder->Log()->save($log);

return response()->json("asdf",200);
    }


    public function index(Request $request)
    {
        if($request->ajax()){
        $data = builder::with('gender','watermode','automode','Plant')->get();
        return Datatables::of($data)->make(true);
        }
        return view('Dashbord.Builder.index');
        }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('Dashbord.Builder.form')->with('materials',gender::all())->with('watermodes',watermode::all())->with('automodes',automode::all())->with('Plants',Plant::all())->with('Users',User::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $builder=new builder($request->all());
        if($request->file()) {
            $image = $request->file('icon');
            $name = time() . '.' . $image->getClientOriginalExtension();
            $destinationPath = public_path('/builder');
            $image->move($destinationPath, $name);
            $builder->icon=$name;

        }else{
            $request->photo='defualt';
        }
        $builder->qrcode="123456";
        $builder->save();
        $user=User::find($request->User);
        $user->builder()->attach($builder->id);
        $firstConfig=new Comand();
        $builder->Comand()->save($firstConfig);
        return view('Dashbord.Builder.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\builder  $builder
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $builder=builder::find($id);
        return view('Dashbord.Builder.viwe')->with('builder',$builder)->with('Logs',$builder->Log);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\builder  $builder
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $builder=builder::find($id);
        return view('Dashbord.Builder.form')->with('builder',$builder)->with('materials',gender::all())->with('watermodes',watermode::all())->with('automodes',automode::all())->with('Plants',Plant::all())->with('Users',User::all());

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\builder  $builder
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $builder=builder::find($id);
        $builder->update($request->all('name','model','length','width','picture','plant_id','gender_id','automode_id','watermode_id'));
        if($request->file('icon')){
            $image = $request->file('icon');
            $name = time() . '.' . $image->getClientOriginalExtension();
            $destinationPath = public_path('/builder');
            $image->move($destinationPath, $name);
            $builder->icon=$name;
            $builder->save();
        }
        return view('Dashbord.Builder.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\builder  $builder
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $builder=builder::find($id);
        $builder->Delete();
        return redirect()->route('Builder.index');
    }

    public function laststatus($id)
    {
        $builder=builder::find($id);
        $log=$builder->Log()->orderBy('created_at','desc')->first();

        return response()->json($log);
    }
}
