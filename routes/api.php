<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:api')->group(function (){
//    route::resource('Mobile','MobileController');
//});


Route::group(['prefix'=>'Mobile','middleware'=>'auth:api'],function (){

    Route::post('/addPlant','PlantController@singaddPlant');
    Route::resource('/Ticket','TikerController');
    Route::get('/Category/{id}','CategoryPlantController@selectPlant');
    Route::post('Updatauser',"UserController@update");
    Route::post('User','UserController@getUser');
    Route::post('histort/{id}','UserController@histort');
    Route::resource('Profile','ProfileController');
    Route::get('Log/{id}','LogController@show');
    Route::get('Config/{id}','ComandController@getConfig');
    Route::post('Config/{id}','ComandController@setConfig');
    Route::post('vitrified','UserController@vitrified');
    Route::post('vitrifiedChk','UserController@vitrifiedChk');
//    Route::post('Plant/{id}','PlantController@showSingel');
    Route::post('histort/{id}','UserController@histort');

});

Route::get('Config/{id}','ComandController@getConfig');
Route::post('Config/{id}','ComandController@setConfig');

Route::group(['prefix'=>'builder'],function (){
   Route::post('UpdateLog','BuilderController@UpdateLog');

});




//Route::resource('User','UserController')->middleware('auth:api');
//Route::resource('Profile','ProfileController')->middleware('auth:api');
Route::post('login', 'UserController@login');
Route::post('register', 'UserController@register');



