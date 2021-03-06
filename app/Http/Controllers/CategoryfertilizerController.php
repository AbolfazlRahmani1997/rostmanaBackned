<?php

namespace App\Http\Controllers;

use App\Categoryfertilizer;
use Illuminate\Http\Request;

class CategoryfertilizerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('Dashbord.fertilizer.index')->with('fertilizer',Categoryfertilizer::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('Dashbord.fertilizer.form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $fertillizer=new Categoryfertilizer();
        $fertillizer->fertilizer_type=$request->fertilizer_type;
        $fertillizer->save();
        return redirect()->route('fertillize.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Categoryfertilizer  $categoryfertilizer
     * @return \Illuminate\Http\Response
     */
    public function show(Categoryfertilizer $categoryfertilizer)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Categoryfertilizer  $categoryfertilizer
     * @return \Illuminate\Http\Response
     */
    public function edit(Categoryfertilizer $categoryfertilizer)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Categoryfertilizer  $categoryfertilizer
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Categoryfertilizer $categoryfertilizer)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Categoryfertilizer  $categoryfertilizer
     * @return \Illuminate\Http\Response
     */
    public function destroy(Categoryfertilizer $categoryfertilizer)
    {
        //
    }
}
