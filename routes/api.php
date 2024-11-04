<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend\SliderController; 

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

/// Slider api //
Route::get('/sliders',[SliderController::class, 'ApiAllSlider']);