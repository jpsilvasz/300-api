<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('users', \App\Http\Controllers\Api\UserController::class);
Route::apiResource('services', \App\Http\Controllers\Api\ServiceController::class);

Route::apiResource('schedules', \App\Http\Controllers\Api\ScheduleController::class);
Route::apiResource('users.schedules', \App\Http\Controllers\Api\UserScheduleController::class);

Route::prefix('auth')->group(function(){
    Route::post('login',[\App\Http\Controllers\Auth\Api\LoginController::class, 'login']);

    Route::post('logout',[\App\Http\Controllers\Auth\Api\LoginController::class, 'logout'])->middleware('auth:sanctum');

    Route::post('register',[\App\Http\Controllers\Auth\Api\RegisterController::class, 'register']);
});
