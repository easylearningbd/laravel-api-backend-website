<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use App\Models\AboutPage;

class AboutPageController extends Controller
{
    public function AboutPage(){
    	$about = AboutPage::find(1);
    	return view('backend.about.about_us',compact('about'));
    }
    // End Method 


} 
