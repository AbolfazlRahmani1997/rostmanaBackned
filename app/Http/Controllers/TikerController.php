<?php

namespace App\Http\Controllers;

use App\tiker;
use App\User;
use Illuminate\Http\Request;

class TikerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $User=$request->user()->id;
        $User=User::find($User);
        $tiker=new tiker();
        $tiker->subject='null';
        $tiker->description=$request->description;
        $tiker->type_tiket=$request->type_tiket;
        if ($User->Tiket()->save($tiker)) {
      return response()->json(['message'=>'ثبت با موفقیت انجام شد '],200);
        }
        return response()->json(['message'=>'ثبت با موفقیت انجام نشد '],200);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\tiker  $tiker
     * @return \Illuminate\Http\Response
     */
    public function show(tiker $tiker)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\tiker  $tiker
     * @return \Illuminate\Http\Response
     */
    public function edit(tiker $tiker)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\tiker  $tiker
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tiker $tiker)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\tiker  $tiker
     * @return \Illuminate\Http\Response
     */
    public function destroy(tiker $tiker)
    {
        //
    }
}
