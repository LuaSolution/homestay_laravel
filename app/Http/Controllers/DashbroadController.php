<?php

namespace App\Http\Controllers;

use App\bill;
use App\Post;
use App\product;
use App\User;

class DashbroadController extends Controller
{
    public function index()
    {

        // Thong ke so san pham :

        $product = product::all()->toArray();

        // Lay 10 San pham moi nhat :

        $productNew = product::select('*')->where('status', 1)->orderBy('id', 'DESC')->LIMIT(10, 0)->get()->toArray();

        // Thong ke don hang :

        $bill = bill::all()->toArray();

        // Thong ke so bai viet :

        $post = Post::all()->toArray();

        // Lay ra 10 Bai viet moi nhat :

        $postNew = post::select('*')->where('status', 1)->orderBy('id', 'DESC')->LIMIT(10, 0)->get()->toArray();

        // Thongke so nhan vien :

        $user = User::all()->toArray();

        return view('backend.page.dashbroad.index', compact(['product', 'bill', 'post', 'user', 'productNew', 'postNew']));
    }
}
