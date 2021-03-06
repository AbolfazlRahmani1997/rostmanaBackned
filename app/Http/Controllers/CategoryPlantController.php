<?php

namespace App\Http\Controllers;

use App\CategoryPlant;
use Illuminate\Http\Request;

class CategoryPlantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('Dashbord.CategoryType.index')->with('Types',CategoryPlant::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            return view('Dashbord.CategoryType.form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   $Type=new CategoryPlant();
        $Type->TypePlants=$request->Typename;
        $Type->save();
        return redirect()->route('Typeplant.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\CategoryPlant  $categoryPlant
     * @return \Illuminate\Http\Response
     */
    public function show(CategoryPlant $categoryPlant)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CategoryPlant  $categoryPlant
     * @return \Illuminate\Http\Response
     */
    public function edit(CategoryPlant $categoryPlant)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CategoryPlant  $categoryPlant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CategoryPlant $categoryPlant)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CategoryPlant  $categoryPlant
     * @return \Illuminate\Http\Response
     */
    public function destroy(CategoryPlant $categoryPlant)
    {
        //
    }

    public function selectPlant($id)
    {
$Cplant=CategoryPlant::find($id);
//$Cplant->Plant;
return response()->json($Cplant->Plant,200);
    }
}
