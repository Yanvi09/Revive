<?php

namespace App\Http\Controllers;

use App\Models\InventoryItem;
use Illuminate\Http\Request;

class InventoryController extends Controller
{
    public function index()
    {
        return InventoryItem::all();
    }

    public function store(Request $request)
    {
        $item = InventoryItem::create($request->all());
        return response()->json($item, 201);
    }

    public function show($id)
    {
        return InventoryItem::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $item = InventoryItem::findOrFail($id);
        $item->update($request->all());
        return response()->json(['message' => 'Inventory item updated successfully']);
    }

    public function destroy($id)
    {
        InventoryItem::destroy($id);
        return response()->json(['message' => 'Inventory item deleted successfully']);
    }
}
