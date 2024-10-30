<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;

class SliderController extends Controller
{
    public function AllSlider(){
    	$slider = Slider::latest()->get();
    	return view('backend.slider.all_slider',compact('slider'));
    }
    // End Method 

    public function AddSlider(){
		return view('backend.slider.add_slider');
    }
    // End Method 



}
 