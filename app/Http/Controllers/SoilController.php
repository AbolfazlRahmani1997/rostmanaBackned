<?php

namespace App\Http\Controllers;

use App\soil;
use Illuminate\Http\Request;

class SoilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('Dashbord.Soil.index')->with('Soils',soil::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Dashbord.Soil.form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Soil=new soil();
        $Soil->name=$request->name;

        $Soil->save();
        return redirect()->route('Soil.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\soil  $soil
     * @return \Illuminate\Http\Response
     */
    public function show(soil $soil)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\soil  $soil
     * @return \Illuminate\Http\Response
     */
    public function edit(soil $soil)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\soil  $soil
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, soil $soil)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\soil  $soil
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $soil=soil::find($id);
        $soil->Delete();
        return redirect()->route('Soil.index');
    }
}
