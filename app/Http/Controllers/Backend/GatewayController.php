<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gatewayone;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use App\Models\GateWayTwo;
  
class GatewayController extends Controller
{


  // Start GetWay api 
 public function ApiGatewayOne(){
    	$getone = Gatewayone::find(1);
    	return $getone;
    }

     public function ApiGatewayTwo(){
    	$gettwo = GateWayTwo::find(1);
    	return $gettwo;
    }


 // End Service api 


    public function GetWayOne(){
    	$getone = Gatewayone::find(1);
    	return view('backend.gateway.gateway_one',compact('getone'));
    }
    // End Method 

     public function UpdateGetWayOne(Request $request){
    	$getone_id = $request->id;
    	$getone = Gatewayone::find($getone_id);

    	if ($request->file('image')) {
		$image = $request->file('image');
		$manager = new ImageManager(new Driver());
		$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); 
		$img = $manager->read($image);
		$img->resize(960,679)->save(public_path('upload/gateway/'.$name_gen));
		$save_url = 'upload/gateway/'.$name_gen;

		if (file_exists(public_path($getone->image))) {
			@unlink(public_path($getone->image));
		}

		$getone->update([
			'title' => $request->title,
			'description' => $request->description,
			'phone' => $request->phone,
			'image' => $save_url,
		]);

		$notification = array(
            'message' => 'Updated with Image Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

	  } else {

	  	$getone->update([
			'title' => $request->title,
			'description' => $request->description,
			'phone' => $request->phone, 
		]);

		$notification = array(
            'message' => 'Updated with Image Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

	  } 

    }
     // End Method

     public function GetWayTwo(){
    	$gettwo = GateWayTwo::find(1);
    	return view('backend.gateway.gateway_two',compact('gettwo'));
    }
    // End Method 


    public function UpdateGetWayTwo(Request $request){
    	$gettwo_id = $request->id;
    	$gettwo = GateWayTwo::find($gettwo_id);

    	if ($request->file('image')) {
		$image = $request->file('image');
		$manager = new ImageManager(new Driver());
		$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); 
		$img = $manager->read($image);
		$img->resize(1414,1236)->save(public_path('upload/gateway/'.$name_gen));
		$save_url = 'upload/gateway/'.$name_gen;

		if (file_exists(public_path($gettwo->image))) {
			@unlink(public_path($gettwo->image));
		}

		$gettwo->update([
			'title' => $request->title,
			'description' => $request->description,
			'project' => $request->project,
			'review' => $request->review,
			'exerience' => $request->exerience,
			'image' => $save_url,
		]);

		$notification = array(
            'message' => 'Updated with Image Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

	  } else {

	  	$gettwo->update([
			'title' => $request->title,
			'description' => $request->description,
			'project' => $request->project,
			'review' => $request->review,
			'exerience' => $request->exerience, 
		]);

		$notification = array(
            'message' => 'Updated with Image Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

	  } 

    }
     // End Method



} 
