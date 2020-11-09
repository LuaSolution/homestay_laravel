<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $table = "sliders";
    protected  $guarded = [];



    public function getSelect()
    {
    	$data = Slider::all()->toArray();
    	return $data;
    }

    public function deleteSlide($id)
    {
    	$delete = Slider::findOrFail($id);

    	 if(!empty($delete->image))
        {
            if(file_exists(public_path('/uploads/'.$delete->image)))
            {
                if(File::delete(public_path('/uploads/slider/'.$delete->image)))
                {
                	toastr()->success('Xóa ảnh thành công', 'Đã xóa');
                }
            }
        }
    	return $delete->delete();
    }



    


}
