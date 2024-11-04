<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SiteSetting;

class SettingController extends Controller
{

        //// Site Setting Api 
     public function ApiSiteSetting(){
        $site = SiteSetting::find(1);
        return $site; 
    }
    // End Method 
      //// End Site Setting Api 



     public function SiteSetting(){
    	$site = SiteSetting::find(1);
    	return view('backend.setting.site_setting',compact('site'));
    }
    // End Method 

     public function UpdateSiteSetting(Request $request){
    	$setting_id = $request->id;
    	$setting = SiteSetting::find($setting_id);

    	$setting->update([
			'email' => $request->email,
			'phone' => $request->phone,
			'facebook' => $request->facebook,
			'youtube' => $request->youtube,
			'footer_message' => $request->footer_message,
			'address' => $request->address,
		]);

		$notification = array(
            'message' => 'Setting Updated Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

    	 }
    // End Method 





}
