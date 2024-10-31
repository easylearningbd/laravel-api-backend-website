<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Backend\SliderController;
use App\Http\Controllers\Backend\ServiceController;
use App\Http\Controllers\Backend\GatewayController;
use App\Http\Controllers\Backend\TestimonialController;

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


Route::middleware('auth')->group(function () {

 Route::controller(SliderController::class)->group(function(){
 	Route::get('/all/slider', 'AllSlider')->name('all.slider'); 
 	Route::get('/add/slider', 'AddSlider')->name('add.slider');
 	Route::post('/store/slider', 'StoreSlider')->name('store.slider');
 	Route::get('/edit/slider/{id}', 'EditSlider')->name('edit.slider');
 	Route::post('/update/slider', 'UpdateSlider')->name('update.slider');
 	Route::get('/delete/slider/{id}', 'DeleteSlider')->name('delete.slider');

 });

  Route::controller(ServiceController::class)->group(function(){
 	Route::get('/all/service', 'AllService')->name('all.service'); 
 	Route::get('/add/service', 'AddService')->name('add.service');
 	Route::post('/store/service', 'StoreService')->name('store.service');
 	Route::get('/edit/service/{id}', 'EditService')->name('edit.service');
 	Route::post('/update/service', 'UpdateService')->name('update.service');
 	Route::get('/delete/service/{id}', 'DeleteService')->name('delete.service');

 });

    Route::controller(GatewayController::class)->group(function(){

 	Route::get('/gateway/one', 'GetWayOne')->name('gateway.one');
 	Route::post('/update/gateway/one', 'UpdateGetWayOne')->name('update.gateway.one'); 

 	Route::get('/gateway/two', 'GetWayTwo')->name('gateway.two');
 	Route::post('/update/gateway/two', 'UpdateGetWayTwo')->name('update.gateway.two');

 });


    Route::controller(TestimonialController::class)->group(function(){
 	Route::get('/all/testimonial', 'AllTestimonial')->name('all.testimonial'); 
 	Route::get('/add/service', 'AddService')->name('add.service');
 	Route::post('/store/service', 'StoreService')->name('store.service');
 	Route::get('/edit/service/{id}', 'EditService')->name('edit.service');
 	Route::post('/update/service', 'UpdateService')->name('update.service');
 	Route::get('/delete/service/{id}', 'DeleteService')->name('delete.service');

 });



  
});
