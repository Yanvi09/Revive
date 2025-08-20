<?php

namespace App\Http\Controllers;

use App\Models\Bed;
use Illuminate\Http\Request;

class BedController extends Controller
{
    public function index()
    {
        return Bed::all();
    }

    public function store(Request $request)
    {
        $bed = Bed::create($request->all());
        return response()->json($bed, 201);
    }

    public function show($id)
    {
        return Bed::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $bed = Bed::findOrFail($id);
        $bed->update($request->all());
        return response()->json(['message' => 'Bed updated successfully']);
    }

    public function destroy($id)
    {
        Bed::destroy($id);
        return response()->json(['message' => 'Bed deleted successfully']);
    }
}
