<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BlogCategory;
use App\Models\BlogPost;

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

    public function BlogCategoryUpdate(Request $request){
    	$cat_id = $request->cat_id;

    	$category = BlogCategory::find($cat_id);

		$category->update([
			'blog_category' => $request->blog_category,
			'slug' => strtolower(str_replace(' ', '-', $request->blog_category)), 
		]);
 
	    $notification = array(
            'message' => 'BlogCategory Updated Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);
    }
    // End Method 

     public function DeleteBlogCategory($id){ 
    	
    	BlogCategory::find($id)->delete();

    	$notification = array(
            'message' => 'BlogCategory Delete Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->back()->with($notification);

    }
     // End Method

    /// All Method for Blog Post

    public function AllBlogPost(){
    	$blogpost = BlogPost::latest()->get();
    	return view('backend.blog.all_blog_post',compact('blogpost'));
    }
    // End Method 




}
