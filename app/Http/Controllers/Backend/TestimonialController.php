<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Testimonial;

class TestimonialController extends Controller
{ 
    public function AllTestimonial(){
    	$testi = Testimonial::latest()->get();
    	return view('backend.testimonial.all_testimonial',compact('testi'));
    }
    // End Method 

    public function AddTestimonial(){
		return view('backend.testimonial.add_testimonial');
    }
    // End Method 

}
