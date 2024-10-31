<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gatewayone;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class GatewayController extends Controller
{
    public function GetWayOne(){
    	$getone = Gatewayone::find(1);
    	return view('backend.gateway.gateway_one',compact('getone'));
    }
    // End Method 



} 
