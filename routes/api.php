<?php
use App\Http\Controllers\AppointmentController;
use App\Http\Controllers\AuthController;

Route::post('/login', [AuthController::class, 'login']);
Route::post('/appointments', [AppointmentController::class, 'create']);
Route::get('/appointments/{id}', [AppointmentController::class, 'show']);
