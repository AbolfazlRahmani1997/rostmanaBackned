<?php

namespace App\Http\Controllers;

//use Illuminate\Contracts\Validation\Validator;
use App\Http\Requests\registerRequest;
use App\Plant;
use Illuminate\Http\Request;
use App\User;

use Illuminate\Support\Facades\DB;
use Morilog\Jalali\Jalalian;
use App\log;
use Hekmatinasser\Verta\Verta;
use App\Profile;
use App\builder;
use App\automode;
use App\gender;
use App\watermode;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

//use Illuminate\Validation\Validator;


class UserController extends Controller
{
    public function getUser(Request $request){
        $user=User::find($request->user()->id);

    $user->load('Profile');
    $user->load('Plants');
    $user->load('Builder');
        $biluders=[];
        foreach ($user->Builder as $builuder){
            $builuder->load('Plant');

        }
        foreach ($biluders as $plnats){
            $plant=Plant::where('id',$plnats->plant_id)->with('CategoryPlant','fertilizer','soil')->get();
        }
        return response()->json(array('user'=>$user,'Builder'=> $biluders),'200');


    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->ajax()){
            $data = User::with('Profile')->get();
            return Datatables::of($data)->make(true);
        }else{
        return view('Dashbord.User.index')->with('Users',User::all());
        }}





    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Dashbord.User.form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $User=new User();
        $User->phonenumber=$request->phonenumber;
        $User->password=Hash::make($request->password);
        $User->save();
        $Profile=new Profile();
        $Profile->firstname=$request->firstname;
        $Profile->lastname=$request->lastname;

        if($request->file()){
        $image = $request->file('avatar');
        $name = time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/avatar');
        $image->move($destinationPath, $name);
        $Profile->avatar=$name;

        }
        $User->Profile()->save($Profile);
        return view('Dashbord.User.index')->with('Users',User::all());

    }

    /**
     * Display the specified resource.
     *
     * @tparam int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $User=User::find($id);
        return view('Dashbord.User.viwe')->with('User',$User);
    }

    /*** Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('Dashbord.User.form')->with('User',User::find($id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */



    public function update(Request $request)
    {
        $user = User::with('profile')->whereId($request->user()->id)->first();

        if ($user) {
            if (isset($request->phonenumber)) {
//                $user->phonenumber=$request->all('phonenumber');
//                $user->update();
                $user->email_verified_at = Null;
            }


            $user->load('Profile');
//            $user->Profile->update($request->all('firstname', 'lastname', 'sex', 'address', 'Birth'));

            if (isset($request->firstname)) {
                $user->Profile->firstname =$request->firstname ;

                if (isset($request->lastname)) {
                    $user->Profile->lastname = $request->lastname;
                }
                if (isset($request->sex)) {
                    $user->Profile->sex =$request->sex;
                }
                if (isset($request->address)) {
                    $user->Profile->address = $request->address;
                }
                if (isset($request->Birth)) {
                    $user->Profile->Birth = $request->Birth;
                }
                if (isset($request->avatar)) {
                    $file_data = $request->input('avatar');
//            $name = time().'.'.$image->getClientOriginalExtension();
                    $file_name = 'image_' . time() . '.png';
                    if ($file_data != "") { // storing image in storage/app/public Folder
                        Storage::disk('public/avatar')->put($file_name, base64_decode($file_data));
                    }
                    $destinationPath = public_path('/avatar');
                    $user->Profile->avatar = $file_name;
                }
                $user->save();
                return response()->json($user, 200);
            } else {
                return response()->json("error", 200);
            }


        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
   public function vitrified(Request $request){

       $number=rand(100000,999999);
       $number=111111;
       $result=Cache::add($request->User()->id,$number);
//            $result=Cache::get($request->User()->id);

           return Cache::get($request->User()->id);

   }

    public function histort(Request $request,$id)
    {

        $jDate1 = Jalalian::fromFormat('Y-m-d', $request->date1);
            $jDateFrom= $jDate1->toCarbon()->toDateTimeString();
        $jDate2 = Jalalian::fromFormat('Y-m-d', $request->date2);
        $jDateTo= $jDate2->toCarbon()->toDateTimeString();

        $totalArray=array();
        $logs= DB::table('logs')->where('builder_id','=',$id)->whereBetween('created_at', [$jDateFrom,$jDateTo])->orderBy('created_at','DESC')->get()->groupBy(function($d) {
            $jDate1 = Jalalian::fromFormat('Y-m-d H:i:s',$d->created_at);
            return $jDate1->format('Y-m-d');
        });
        foreach ($logs as $log){
            $OFF_ON_FAN=($log->count())-$log->where('fan_status','=','1')->count();
            $OFF_ON_Fogger=($log->count())-$log->where('fogger_status','=','1')->count();
            $OFF_ON_Element=($log->count())-$log->where('Element','=','1')->count();
            $OFF_ON_light_status=($log->count())-$log->where('light_status','=','1')->count();
            $OFF_ON_pump_w=($log->count())-$log->where('pump_w','=','1')->count();
//       dd(Carbon::parse($log[0]->created_at)->format('Y-m-d'));
            $logsa=array("time"=>Carbon::parse($log[0]->created_at)->format('Y-m-d '),"Day"=>Carbon::parse($log[0]->created_at)->format('l'),'temp'=>number_format('', 2),'humidity_air'=>$log->avg('humidity_air'),'humidity_soil'=>$log->avg('humidity_soil'),'Num_OFF_FAN'=>$OFF_ON_FAN,'Num_OFF_Fogger'=>$OFF_ON_Fogger,'Num_OFF_light'=>$OFF_ON_light_status,'Num_OFF_pump_w'=>$OFF_ON_pump_w,'num_ON_Element'=>$OFF_ON_Element);
            array_push($totalArray,$logsa);
        }
        return response()->json($totalArray);

    }
   public function vitrifiedChk(Request $request){
       $code=Cache::get($request->User()->id);
       if ($request->vcode==$code){
           Cache::forget($request->User()->id);
           $User=User::find($request->User()->id);
           $data=\Carbon\Carbon::now()->toDateTimeString();
           $User->email_verified_at=$data;
            $User->save();
           return response()->json(['User'=>$User],200);
       }else{
           return response()->json("not vertifiy",400);
       }

   }
    public function destroy($id)
    {
        $user=User::find($id);

        $user->Delete();

        return redirect()->route('User.index');
    }

    public function login(Request $request)
    {
//        $user = User::where('phonenumber', $request->phonenumber)->where("email_verified_at","!=","")
//        ->first();
        $user = User::where('phonenumber', $request->phonenumber)->first();
        if($user){
            if (Hash::check($request->password, $user->password)) {
                $tokenResult = $user->createToken('Personal Access Token');
                $token = $tokenResult->token;
                if ($request->remember_me)
                    $token->expires_at = Carbon::now()->addWeeks(1);
                $token->save();
                return response()->json([
                    'access_token' => $tokenResult->accessToken,
                    'expires_at' => Carbon::parse(
                        $tokenResult->token->expires_at
                    )->toDateTimeString()
                ],'200');

            } else {
                $response = ['Password incorrect'];
                return response()->json($response, 422);
            }
        }else {
            $response = ['User doesn\'t exist'];
            return response()->json($response,200);
        }
    }
    public function register(Request  $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'phonenumber' => 'required|max:11|unique:users',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ],['phonenumber.required'=>"شماره تلفن الزامی است ",
            'phonenumber.max'=>"شماره تلفن بیش از 11 رقم می باشد ",
            'phonenumber.unique'=>'شماره وارد شده تکراری می باشد ',
            'password.required' => 'A password is required',
            'c_password.required' => 'A password is required']);

       // if there is some error's, show  to user
        if ($validator->fails()) {
            return response()->json($validator->errors(),400);
        }

        $input['password']=Hash::make($input['password']);
        $user = User::create($input);
        $token = $user->createToken('NewToken')->accessToken;
        return response()->json([
            'token' => $token,
        ], 201);
    }

    public function datatables(Request $request)
    {
        $data = User::with('Profile')->get();
        return Datatables::of($data)->make(true);
    }
//TODO send code by sms
    public function updateD()
    {




    }

}
