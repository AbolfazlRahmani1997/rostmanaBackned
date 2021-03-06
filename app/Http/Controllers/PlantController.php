<?php

namespace App\Http\Controllers;

use App\builder;
use App\Categoryfertilizer;
use App\CategoryPlant;
use App\Categorysoil;
use App\Plant;
use App\User;
use Illuminate\Http\Request;
use phpDocumentor\Reflection\File;
use Yajra\DataTables\DataTables;

class PlantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->ajax()){
            $data = Plant::with('CategoryPlant','fertilizer','soil')->get();
            return Datatables::of($data)->make(true);
        }
        return view('Dashbord.Plant.index')->with('Plants',Plant::all());
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Dashbord.Plant.form')->with('Planttypes',CategoryPlant::all())->with('soils',Categorysoil::all())->with('fertilizers',Categoryfertilizer::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $plant=Plant::create($request->all());
        if($request->file()) {

        $image = $request->file('photo');
        $name = time() . '.' . $image->getClientOriginalExtension();
        $destinationPath = public_path('/Plant');
        $image->move($destinationPath, $name);
        $plant->photo=$name;

    }else{
            $request->photo='defualt';
    }

//        $plant->photo=$name;
        $plant->save();
        return view('Dashbord.Plant.index')->with('Plants',Plant::all());
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Plant  $plant
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Plant=Plant::find($id);

    return response()->json(['Plant'=>$Plant],200);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Plant  $plant
     * @return \Illuminate\Http\Response
     */

    public function singaddPlant(Request $request)
    {
        $User=User::find($request->User()->id);

        if($User->Plants()->sync($request->plant_id,false)){
         return response()->json(['masseg'=>'گیاه با موقثیت اضافه شد '],200);
        }
        return response()->json(['masseg'=>'گیاه با موقثیت اضافه نشد '],200);

    }
    public function showSingel($id)
    {
        $Plant=Plant::find($id);
        return response()->json(['Plant'=>$Plant],200);

    }
    public function edit($id)
    {
        $plant=Plant::find($id);

        return view('Dashbord.Plant.form')->with('Plant',$plant)->with('Planttypes',CategoryPlant::all())->with('soils',Categorysoil::all())->with('fertilizers',Categoryfertilizer::all());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Plant  $plant
     * @return \Illuminate\Http\Response
     */
    public function addtobuilder(Request $request,$id)
    {
        $builder=builder::find($id);
        $builder->Plant()->sync($request->states,false);
    return redirect()->route('Builder.show',$id);


    }



    public function addtouser(Request $request,$id){
        $user=User::find($id);

        $user->Plants()->sync($request->states,false);
       return redirect()->route('User.show',$user->id);
    }
    public function select2(Request $request)
    {
        $data = [];

        if($request->has('q')){

            $search = $request->q;
//            $data =Plant::select("id","name")
//                ->where('E_name','LIKE',"%$search%")
//                ->get();
            $data=Plant::all();
        }
        return response()->json($data);
    }
    public function update(Request $request, $id)
    {
        $Plant=Plant::find($id);
        $Plant->update($request->except(['photo']));
        if($request->file())
        {
            $photo_old=$Plant->photo;
            \Illuminate\Support\Facades\File::delete(public_path( $Plant->photo));

            $image = $request->file('photo');
            $name = time() . '.' . $image->getClientOriginalExtension();
            $destinationPath = public_path('/Plant');
            $image->move($destinationPath, $name);
            $Plant->photo=$name;
            $Plant->save();

        }
        return redirect()->route('Plant.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Plant  $plant
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Plant=Plant::find($id);
//        \Illuminate\Support\Facades\File::delete(public_path( $Plant->photo));
        $Plant->Delete();
        return redirect()->route('Plant.index');
    }
}
