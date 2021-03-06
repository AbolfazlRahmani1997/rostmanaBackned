<?php

namespace App\Http\Controllers;

use App\Comand;
use App\builder;
//use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class ComandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getConfig($id){
$builder=builder::find($id);
$command=$builder->Comand;
return response()->json($command,'200');
    }
    public function setConfig(Request $requset,$id){
        $builder=builder::find($id);
        $command=$builder->Comand;
        $command->Update($requset->all());
        $command->save();
        return response()->json($command);

    }

    public function index($id)
    {
        $builder=builder::find($id);
        $command=$builder->Comand;
        return response()->json($command,'200');

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Comand  $comand
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Comand=Comand::where('builder_id',$id)->first();
        return response()->json($Comand,200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Comand  $comand
     * @return \Illuminate\Http\Response
     */
    public function edit(Comand $comand)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Comand  $comand
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comand $comand)
    {

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Comand  $comand
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comand $comand)
    {
        //
    }
}
