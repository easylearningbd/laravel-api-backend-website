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

    public function BlogCategoryStore(Request $request){ 

		BlogCategory::create([
			'blog_category' => $request->blog_category,
			'slug' => strtolower(str_replace(' ', '-', $request->blog_category)), 
		]);
 
	    $notification = array(
            'message' => 'BlogCategory Inserted Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

    }
      // End Method 

    public function EditBlogCategory($id){
    	$categoris = BlogCategory::find($id);
    	return response()->json($categoris); 
    }
     // End Method 



}
