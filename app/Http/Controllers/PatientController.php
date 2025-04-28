<?php

namespace App\Http\Controllers;

use App\Models\Patient;
use Illuminate\Http\Request;

class PatientController extends Controller
{
    public function index()
    {
        return Patient::all();
    }

    public function show($id)
    {
        return Patient::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $patient = Patient::findOrFail($id);
        $patient->update($request->all());
        return response()->json(['message' => 'Patient updated successfully']);
    }

    public function destroy($id)
    {
        Patient::destroy($id);
        return response()->json(['message' => 'Patient deleted successfully']);
    }
}
