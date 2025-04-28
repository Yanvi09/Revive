<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\Patient;
use App\Models\User; // Optional if you have separate User

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:patients,email',
            'password' => 'required|string|min:6',
            'phone' => 'required|string',
        ]);

        $patient = Patient::create([
            'name' => $validated['name'],
            'email' => $validated['email'],
            'phone' => $validated['phone'],
            'password' => Hash::make($validated['password']),
        ]);

        return response()->json(['message' => 'Patient registered successfully!'], 201);
    }

    public function login(Request $request)
    {
        $validated = $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $patient = Patient::where('email', $validated['email'])->first();

        if (!$patient || !Hash::check($validated['password'], $patient->password)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        $token = $patient->createToken('authToken')->plainTextToken;

        return response()->json(['token' => $token], 200);
    }
}
