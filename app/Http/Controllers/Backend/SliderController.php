<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

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

    public function StoreSlider(Request $request){

	if ($request->file('image')) {
		$image = $request->file('image');
		$manager = new ImageManager(new Driver());
		$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); 
		$img = $manager->read($image);
		$img->resize(1124,750)->save(public_path('upload/slider/'.$name_gen));
		$save_url = 'upload/slider/'.$name_gen;

		Slider::create([
			'heading' => $request->heading,
			'description' => $request->description,
			'link' => $request->link,
			'image' => $save_url,
		]);
	  }

	    $notification = array(
            'message' => 'Slider Inserted Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->route('all.slider')->with($notification);

    }
      // End Method 



}
 