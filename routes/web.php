<?php


//use App\Events\MyEvent;
//use App\Event\MyEvent;
//use App\Event\MyEvent;
use App\Events\MyEvent;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\User;
use Morilog\Jalali\Jalalian;

Route::get('/404',function (){

   return view('welcome');
})->name('404');
Route::get('/', function () {
//   dd( base_path());;
return view('Website.index.index');

})->name('indexPage');
Route::get('/about', function () {
    return view('Website.aboutUs.index');

})->name('aboutPage');
Route::get('/application', function () {

    return view('Website.application.index');

})->name('appPage');

Route::get('/Contactus',function (){
    return view('Website.contactus.index');
})->name('contactPage');
Route::get('/UpdateLog','BuilderController@UpdeateLog');
Route::group(['prefix'=>'dashbord','middleware'=>['auth','is_admin']],function (){
    Route::get('/select2Plant','PlantController@select2');
    Route::post('/add-Plants_toUser/{id}','PlantController@addtouser')->name('AtU');
    Route::post('/addPlantstoBuilder/{id}','PlantController@addtobuilder')->name('PtB');
Route::resource('/','DashbordController');
Route::resource('/User','UserController');
Route::POST('/userlist','UserController@datatables');
Route::get('/User/destroy/{id}','UserController@destroy');
Route::get('/Builder/destroy/{id}','BuilderController@destroy');
Route::resource('/Builder','BuilderController');
Route::resource('/log','LogController');
Route::resource('/Plant','PlantController');
Route::resource('/Soil','SoilController');
Route::resource('/fertillize','CategoryfertilizerController');
Route::resource('/Typeplant','CategoryPlantController');
Route::resource('/material','GenderController');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//Route::get('/{id}',function ($id){
//    $totalArray=array();
//    $logs= DB::table('logs')->where('builder_id','=','7')->whereBetween('created_at', ['2020-12-21 00:00:00','2021-02-19 00:00:00'])->orderBy('created_at','DESC')->get()->groupBy(function($d) {
//        $jDate1 = Jalalian::fromFormat('Y-m-d H:i:s',$d->created_at);
//        return $jDate1->format('Y-m-d');
//    });
//    foreach ($logs as $log){
//        $OFF_ON_FAN=($log->count())-$log->where('fan_status','=','1')->count();
//        $OFF_ON_Fogger=($log->count())-$log->where('fogger_status','=','1')->count();
//        $OFF_ON_Element=($log->count())-$log->where('Element','=','1')->count();
//        $OFF_ON_light_status=($log->count())-$log->where('light_status','=','1')->count();
//        $OFF_ON_pump_w=($log->count())-$log->where('pump_w','=','1')->count();
////       dd(Carbon::parse($log[0]->created_at)->format('Y-m-d'));
//        $logsa=array("time"=>Carbon::parse($log[0]->created_at)->format('Y-m-d '),"Day"=>Carbon::parse($log[0]->created_at)->format('l'),'temp'=>$log->avg('temp'),'humidity_air'=>$log->avg('humidity_air'),'humidity_soil'=>$log->avg('humidity_soil'),'Num_OFF_FAN'=>$OFF_ON_FAN,'Num_OFF_Fogger'=>$OFF_ON_Fogger,'Num_OFF_light'=>$OFF_ON_light_status,'Num_OFF_pump_w'=>$OFF_ON_pump_w,'num_ON_Element'=>$OFF_ON_Element);
//        array_push($totalArray,$logsa);
//    }
//   return response()->json($totalArray);

//    $log=\App\log::select(DB::raw('AVG(temp) as temp,AVG(light) as light,created_at'))->
//     get()->groupBy(function($d) {
//        $jDate1 = Jalalian::fromFormat('Y-m-d H:i:s',$d->created_at);
//        return $jDate1->toCarbon()->format('Y-m-d');
//    });


//});
