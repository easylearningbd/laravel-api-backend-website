<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\View\View;
use App\Models\User;
 

class ProfileController extends Controller
{
    
     public function AdminProfile(){
        $id = Auth::user()->id;
        $profileData = User::find($id);
        return view('admin.profile',compact('profileData'));

     }
     // End Method

     public function ProfileStore(Request $request){
        $id = Auth::user()->id;
        $data = User::find($id);

        $data->name = $request->name;
        $data->email = $request->email;

        $oldPhotoPath = $data->image;

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time().'.'.$file->getClientOriginalExtension(); // 2323.jpg
            $file->move(public_path('upload/user_images'),$filename);
            $data->image = $filename;

            if ($oldPhotoPath && $oldPhotoPath !== $filename) {
               $this->deleteOldImage($oldPhotoPath);
            }


        }

        $data->save();

        $notification = array(
            'message' => 'Profile Updated Successfully',
            'alert-type' => 'success'
        );


        return redirect()->back()->with($notification);

     }
     // End Method

     private function deleteOldImage(string $oldPhotoPath): void {
        $fullPath = public_path('upload/user_images/'.$oldPhotoPath);
        if (file_exists($fullPath)) {
            unlink($fullPath);
        }
     }
        // End private Method



}
