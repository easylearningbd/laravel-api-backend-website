<?php

namespace App\Http\Controllers\Backend;
 
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Service;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class ServiceController extends Controller
{

	  // Start Service api 
    public function AllServices(){
       $service = Service::latest()->get();
       return $service;
    } 


    public function getServiceBySlug($slug){
		$service = Service::where('slug',$slug)->first();
		if (!$service) {
			return response()->json(['error' => 'Service not found'], 404);
		}
		return response()->json($service);
    }
     // End Service api  



     public function AllService(){
    	$service = Service::latest()->get();
    	return view('backend.service.all_service',compact('service'));
    }
    // End Method 

    public function AddService(){
		return view('backend.service.add_service');
    }
     // End Method


     public function StoreService(Request $request){

	if ($request->file('image')) {
		$image = $request->file('image');
		$manager = new ImageManager(new Driver());
		$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); 
		$img = $manager->read($image);
		$img->resize(688,436)->save(public_path('upload/service/'.$name_gen));
		$save_url = 'upload/service/'.$name_gen;

		Service::create([
			'service_name' => $request->service_name,
			'slug' => strtolower(str_replace(' ', '-', $request->service_name)),
			'service_short' => $request->service_short,
			'service_desc' => $request->service_desc,
			'icon' => $request->icon,
			'image' => $save_url,
		]);
	  }
        
	    $notification = array(
            'message' => 'Service Inserted Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->route('all.service')->with($notification);

    }
      // End Method 

     public function EditService($id){

    	$service = Service::find($id);
    	return view('backend.service.edit_service',compact('service'));

    }
    // End Method


     public function UpdateService(Request $request){
    	$service_id = $request->id;
    	$service = Service::find($service_id);

    	if ($request->file('image')) {
		$image = $request->file('image');
		$manager = new ImageManager(new Driver());
		$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); 
		$img = $manager->read($image);
		$img->resize(688,436)->save(public_path('upload/service/'.$name_gen));
		$save_url = 'upload/service/'.$name_gen;

		if (file_exists(public_path($service->image))) {
			@unlink(public_path($service->image));
		}

		$service->update([
			'service_name' => $request->service_name,
			'slug' => strtolower(str_replace(' ', '-', $request->service_name)),
			'service_short' => $request->service_short,
			'service_desc' => $request->service_desc,
			'icon' => $request->icon,
			'image' => $save_url,
		]);

		$notification = array(
            'message' => 'Service Updated with Image Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->route('all.service')->with($notification);

	  } else {

	  	$service->update([
			'service_name' => $request->service_name,
			'slug' => strtolower(str_replace(' ', '-', $request->service_name)),
			'service_short' => $request->service_short,
			'service_desc' => $request->service_desc,
			'icon' => $request->icon, 
		]);

		$notification = array(
            'message' => 'Service Updated without Image Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->route('all.service')->with($notification);

	  } 

    }
     // End Method


     public function DeleteService($id){
    	$item = Service::find($id);
    	$img = $item->image;
    	unlink($img);

    	Service::find($id)->delete();

    	$notification = array(
            'message' => 'Service Delete Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

    }
     // End Method




}
