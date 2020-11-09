<?php

namespace App\Http\Controllers;

use App\Position;
use App\User;
use File;
use Illuminate\Http\Request;

class UsersController extends Controller
{
	public function getIndex()
	{

		$position = Position::all()->toArray();

		$user = User::with('position')->get()->toArray();
		return view('backend.user.index', compact(['position', 'user']));
	}


	public function getCreate()
	{
		return view('backend.user.create');
	}

	public function postCreate(Request $request)
	{

		$user = new User();
		$user->name 		= $request->name;
		$user->level 		= $request->level;
		$user->phonenumber 	= $request->phone;
		$user->email 		= $request->email;
		$user->address 		= $request->address;
		$user->status 		= $request->status;
		$user->gender 		= $request->gender;
		$user->day  		= $request->day;
		$user->month 		= $request->month;
		$user->year 		= $request->year;
		$user->contact  	= $request->contact;

		$file = $request->file('imgAvatar');

		if(!empty($file) && strlen($file)>0)
		{
			$filename = time().'.'.$file->getClientOriginalName();
			$path = public_path().'/uploads/user';

			if($file->move($path, $filename))
			{
				$user->imgAvatar = $filename;
			}
		}

		$user->username = "admin";
		$user->password = bcrypt("admin123");

		if($user->save())
		{
			toastr()->success('Lưu thành công', 'Thành công');
			return redirect()->route('users.getIndex');
		}
		else
		{
			toastr()->error('Lưu thất bại');
			return redirect()->route('users.getIndex');
		}
	}


	public function getEdit($id=null)
	{
		$data = User::findOrFail($id)->toArray();
		return view('backend.user.edit', compact(['data']));
	}

	public function postEdit(Request $request, $id=null)
	{

		$user = User::findOrFail($id);
		$user->name 		= $request->name;
		$user->level 		= $request->level;
		$user->phonenumber 	= $request->phone;
		$user->email 		= $request->email;
		$user->address 		= $request->address;
		$user->status 		= $request->status;
		$user->gender 		= $request->gender;
		$user->day  		= $request->day;
		$user->month 		= $request->month;
		$user->year 		= $request->year;
		$user->contact  	= $request->contact;

		$file = $request->file('imgAvatar');

		if(!empty($file) && strlen($file)>0)
		{
			$filename = time().'.'.$file->getClientOriginalName();
			$path = public_path().'/uploads/user';

			if($file->move($path, $filename))
			{
				$user->imgAvatar = $filename;
			}
		}

		$user->username = "admin";
		$user->password = bcrypt("admin123");

		if($user->save())
		{
			toastr()->success('Lưu thành công', 'Thành công');
			return redirect()->route('users.getIndex');
		}
		else
		{
			toastr()->error('Lưu thất bại');
			return redirect()->route('users.getIndex');
		}
		return redirect()->route('users.getIndex');
		//}

	}


	// delete data user 
	public function destroy($id=null)
	{
		$delete  = User::findOrFail($id);
		if($delete->delete())
		{
			toastr()->success('Xóa thành công','Thành công');

		}
		else
		{
			toastr()->error('Không thành công', 'Thất bại');
		}
		return response()->json($delete);
	}

	// Detail data user :
	public function detail($id=null)
	{
		$detail = User::findOrFail($id);

		return response()->json($detail);
	}
}
