<?php

namespace Tests\Feature;

use App\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testBasicTest()
    {
        $response = $this->get('/dashbord/User');
        $response->assertStatus(200);
    }


    public function testPantTest()
    {$response=$this->get('/dashbord/Plant');
    $response->assertStatus(200);
    }

    public function testPlantaddTest()
    {
$res=$this->post('/dashbord/Plant',['planttype'=>'1','name'=>'rose','temp'=>'10','light'=>'10','humidity_soil'=>'10','humidity_air'=>'10','soil_id'=>'1','fertilizer_id'=>'1']);
$res->assertStatus(200);
    }

//    public function testLoginTest()
//    {
//        $res=$this->post('/api/login',['phonenumber'=>"09107879978",'password'=>'123456']);
//        $res->assertStatus(200);
//    }
//    public function testRegisterTest()
//    {
//        $res=$this->post('/api/login',['phonenumber'=>"09101234",'password'=>'123456','c_password'=>'123456']);
//        $res->assertStatus(200);
//    }
//    public function testUserTest(){
//        $respons=$this->get('/dashbord/User');
//        $respons->assertStatus(200);
//    }
//    public function testUseraddTest(){
//        $respons=$this->post('/dashbord/User',['phonenumber'=>"09145267",'password'=>'0020747489','firstname'=>'abolfazltest','lastname'=>'rahmanitest']);
//        $respons->assertStatus(200);
//    }

    public function testUsereditTest()
    {
        $respons=$this->put('/dashbord/User/33',['phonenumber'=>"09112217",'firstname'=>'abolfazltest','lastname'=>'rahmanitest']);
        file_put_contents("aaaaaaaa.txt", $respons->content());
        $respons->assertStatus(200);
    }
}
