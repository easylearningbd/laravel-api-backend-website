<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;

Route::get('/', function () {
    return view('welcome');
});
 
Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth', 'verified'])->name('dashboard');

 Route::get('/admin/logout', [AdminController::class, 'AdminLogout'])->name('admin.logout');

  Route::post('/admin/login', [AdminController::class, 'AdminLogin'])->name('admin.login');

 Route::get('/verify', [AdminController::class, 'ShowVerification'])->name('custom.verification.form');

  Route::post('/verify', [AdminController::class, 'VerificationVerify'])->name('custom.verification.verify');



Route::middleware('auth')->group(function () {

 Route::get('/admin/profile', [ProfileController::class, 'AdminProfile'])->name('admin.profile');
  Route::post('/profile/store', [ProfileController::class, 'ProfileStore'])->name('profile.store');

  Route::post('/user/password/update', [ProfileController::class, 'PasswordUpdate'])->name('user.password.update');
  
});

require __DIR__.'/auth.php';
