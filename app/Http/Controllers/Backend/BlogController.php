<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BlogCategory;
use App\Models\BlogPost;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

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

    public function AddBlogPost(){
    	$blogcat = BlogCategory::latest()->get();
    	return view('backend.blog.add_blog_post',compact('blogcat'));
    }
     // End Method 

     public function StoreBlogPost(Request $request){

	if ($request->file('image')) {
		$image = $request->file('image');
		$manager = new ImageManager(new Driver());
		$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); 
		$img = $manager->read($image);
		$img->resize(688,436)->save(public_path('upload/blog/'.$name_gen));
		$save_url = 'upload/blog/'.$name_gen;

		BlogPost::create([
			'post_title' => $request->post_title,
			'post_slug' => strtolower(str_replace(' ', '-', $request->post_title)),
			'blogcat_id' => $request->blogcat_id,
			'long_descp' => $request->long_descp, 
			'image' => $save_url,
		]);
	  }
        
	    $notification = array(
            'message' => 'Blog Post Inserted Successfully',
            'alert-type' => 'success'
        ); 
        return redirect()->route('all.blog.post')->with($notification);

    }
      // End Method 





}
