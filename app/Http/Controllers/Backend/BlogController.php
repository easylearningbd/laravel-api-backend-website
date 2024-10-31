<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BlogCategory;

class BlogController extends Controller
{ 
    public function BlogCategory(){
    	$category = BlogCategory::latest()->get();
    	return view('backend.blog.blog_category',compact('category'));
    }
    // End Method 


}
