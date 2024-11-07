<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use App\Models\AboutPage;
use App\Models\ContactPage;
use Illuminate\Support\Facades\Validator;

class AboutPageController extends Controller
{
   
 	 //// Site About page Api 

	  public function ApiAboutPage(){
    	$about = AboutPage::find(1);
    	return $about;
    }
    // End Method 
    //// End About page Api 



    public function AboutPage(){
    	$about = AboutPage::find(1);
    	return view('backend.about.about_us',compact('about'));
    }
    // End Method 


     public function UpdateAboutPage(Request $request){
    	$about_id = $request->id;
    	$about = AboutPage::find($about_id);

    	if ($request->file('image')) {
		$image = $request->file('image');
		$manager = new ImageManager(new Driver());
		$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); 
		$img = $manager->read($image);
		$img->resize(960,679)->save(public_path('upload/about/'.$name_gen));
		$save_url = 'upload/about/'.$name_gen;

		if (file_exists(public_path($about->image))) {
			@unlink(public_path($about->image));
		}

		$about->update([
			'title' => $request->title,
			'phone' => $request->phone,
			'setup_growth' => $request->setup_growth,
			'problem_solving' => $request->problem_solving,
			'passive_income' => $request->passive_income,
			'goal_achiever' => $request->goal_achiever,
			'description' => $request->description,
			'image' => $save_url,
		]);

		$notification = array(
            'message' => 'Updated with Image Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

	  } else {

	  	$about->update([
			'title' => $request->title,
			'phone' => $request->phone,
			'setup_growth' => $request->setup_growth,
			'problem_solving' => $request->problem_solving,
			'passive_income' => $request->passive_income,
			'goal_achiever' => $request->goal_achiever,
			'description' => $request->description, 
		]);

		$notification = array(
            'message' => 'Updated with Image Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

	  } 

    }
     // End Method


    /////////////////// Contact Us Page Method //////////////////

    public function ContactMessage(){
    	$contact = ContactPage::latest()->get();
    	return view('backend.contact.all_contact', compact('contact'));

    }
    // End Method

    public function ContactSubmit(Request $request){

    	$validator = Validator::make($request->all(), [
    		'name' => 'required|string|max:255',
    		'email' => 'required|email',
    		'subject' => 'required|string',
    		'message' => 'required|string',

    	]);

    	if ($validator->fails()) {
    		return response()->json(['errors' => $validator->errors()], 422);
    	}

    	ContactPage::create($request->all());

    	return response()->json(['message' => 'Message send successfully'], 201);

    } // End Method


} 
