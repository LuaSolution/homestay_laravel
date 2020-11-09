<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function getIndex()
    {
        if (Auth::check()) {
            return redirect()->route('users.getIndex');
        } else {
            return view('backend.login');
        }

    }

    public function postLogin(Request $request)
    {
        $login = [
            "username" => $request->username,
            "password" => $request->password,
        ];

        if (Auth::attempt($login)) {
            return redirect()->route('dashbroad.index');
        } else {
            return back();
        }
    }

    public function getLogout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
}
