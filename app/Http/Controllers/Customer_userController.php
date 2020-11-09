<?php

namespace App\Http\Controllers;

use App\Customer_user;
use Illuminate\Http\Request;
use Session;

class Customer_userController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Customer_user::select('*')->orderBy('id', 'DESC')->get()->toArray();

        return view('backend.customerusers.index', compact(['data']));
    }

    public function store(Request $request)
    {
        $Customer_user = new Customer_user();

        $Customer_user->fullname = $request->fullname;
        // $Customer_user->birthday = $request->birthday;
        // $Customer_user->gender   = $request->gender;
        $Customer_user->address = $request->address;
        $Customer_user->phone = $request->phone;
        // $Customer_user->email    = $request->email;
        $Customer_user->username = $request->username;
        $Customer_user->password = bcrypt($request->password);
        $Customer_user->enterPassword = bcrypt($request->enterpassword);

        if ($request->password != $request->enterpassword) {
            toastr()->error('Đăng ký thất bại , do mật khẩu không khớp', 'Thông báo');
            return back();
        }

        $sql = Customer_user::select('username')->where('username', $request->username)->get();

        if (count($sql) > 0) {
            toastr()->error('Tài khoản đã tồn tại, Vui lòng đăng ký tên đăng nhập khác', 'Thông báo');
            return back();
        }

        $file = $request->file("imageUpload");

        if (strlen($file) > 0 && !empty($file)) {

            $filename = time() . '.' . $file->getClientOriginalName();
            $filepath = public_path() . '/uploads';

            if ($file->move($filepath, $filename)) {
                $Customer_user->imageUpload = $filename;
            }

        }

        if ($Customer_user->save()) {
            toastr()->success('Đăng ký thành công , Chúc mừng bạn đã đăng ký thành công', 'Thông báo');
            return redirect()->route('index');
        } else {
            toastr()->error('Đăng ký thất bại , có thể do tài khoản đã tồn tại, vui lòng nhập đăng ký tên tài khoản khác', 'Thông báo');
            return back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $data = $request->all();
        if (!empty($data)) {
            $sql = Customer_user::select('*')->where('username', $request->username)
                ->orwhere('password', $request->password)->get()->toArray();

            if (count($sql) > 0) {

                Session::put('user', $sql[0]['username']);
                Session::put('username_id', $sql[0]['id']);
                Session::put('fullname', $sql[0]['fullname']);

                toastr()->success('Đăng nhập thành công', 'Thông báo');
                return redirect()->route('index');
            } else {
                toastr()->error('Đăng nhập thất bại', 'Thông báo');
                return back();
            }
        }
    }

    // Dang xuat

    public function logout()
    {
        Session::forget('user');
        Session::forget('username_id');
        Session::forget('fullname');

        toastr()->success('Đăng xuất thành công', 'Thông báo');
        return back();
    }

    public function destroy($id)
    {
        $data = Customer_user::findOrFail($id);
        if ($data->delete()) {
            toastr()->success('Xóa thành công', 'Thông báo');
            return back();
        } else {
            toastr()->error('Xóa không thành công', 'Thông báo');
            return back();
        }
    }

    public function userDetail($id = null)
    {
        $data = Customer_user::where('id', Session::get('username_id'))->get()->first()->toArray();

        return view('frontend.home.userDetail', compact(['data']));
    }

    public function register()
    {
        return view('frontend.home.register');
    }

    public function getLogin()
    {
        return view('frontend.home.login');
    }
}
