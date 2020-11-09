<?php

namespace App\Http\Controllers;

use App\category_product;
use App\Comments;
use App\Customer_user;
use App\Hotel;
use App\page;
use App\Post;
use App\Post_category;
use App\product;
use App\product_category;
use App\Province;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    function list($query = null) {
        $province = Province::get();
        if ($query == null) {
            $Hotel = Hotel::with('Hotel_utilities')->select('*')->orderBy('id', 'DESC')->paginate(5);
        } else {
            $Hotel = Hotel::where('province_id', $query)->paginate(5);
        }
        return view('frontend.home.homestay_list', ['Hotel' => $Hotel, 'province_list' => $province]);
    }

    public function search(Request $req)
    {
        $param = $req->all();
        $query = $param['query'];
        $name = $param['name'];

        $province = Province::get();
        if ($query == null && $name == '') {
            $Hotel = Hotel::with('Hotel_utilities')->select('*')->orderBy('id', 'DESC')->paginate(5);
        } else if ($name != '') {
            $Hotel = Hotel::where('province_id', $query)->orWhere('name', 'like', '%' . $name . '%')->paginate(5);
        } else {
            $Hotel = Hotel::where('province_id', $query)->paginate(5);
        }
        return view('frontend.home.homestay_list', ['Hotel' => $Hotel, 'province_list' => $province, 'name' => $name, 'query' => $query]);
    }

    /**
     *  Lấy ra sản phẩm mới nhất :
     */

    public function getProductNew()
    {
        $data = product::select('*')->where('status', 1)->orderBy('id', 'DESC')->LIMIT(8, 0)->get()->toArray();

        return $data;
    }

    /**
     *  Lấy ra các sản phẩm liên quan
     */

    public function relateproduct($data)
    {

        $relateproduct = [];
        foreach ($data as $product_cate) {
            $data = product::findOrFail($product_cate['product_id']);
            $relateproduct[] = $data;

        }

        return $relateproduct;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $province = Province::get();
        $Hotel = Hotel::with('Hotel_utilities')->select('*')->orderBy('id', 'DESC')->paginate(5);
        $posts = Post::inRandomOrder()->paginate(6);
        return view('frontend.home.index', ['Hotel' => $Hotel, 'province_list' => $province, 'posts' => $posts]);
    }

    public function homeDetail($id)
    {
        $Hotel = Hotel::where('id', $id)->first();
        $comments = Comments::where('hotel_id', $id)->get();
        $cmts = [];
        foreach ($comments as $item) {
            $x = Customer_user::select('fullname')->where('id', $item['user_id'])->first();
            array_push($cmts, [
                'name' => $x ? $x->fullname : '',
                'content' => $item['content'],
            ]);
        }
        return view('frontend.home.detail', ['Hotel' => $Hotel, 'comments' => $cmts]);
    }

    public function postDetail($id)
    {
        $post = Post::where('id', $id)->first();
        $hotels = Hotel::inRandomOrder()->limit(4)->get();
        $posts = Post::inRandomOrder()->limit(4)->get();
        return view('frontend.home.post-detail', ['post' => $post, 'hotels' => $hotels, 'posts' => $posts]);
    }

    public function listProduct($alias = null, $id = null)
    {
        $product_category = product_category::select('product_id')->where('categoryproduct_id', $id)->get()->toArray();

        $product = [];
        foreach ($product_category as $product_cate) {
            $data = product::select('*')->where([['status', '=', 1], ['id', '=', $product_cate['product_id']]])->get()->toArray();
            if (!empty($data)) {
                $product[] = $data;
            }

        }

        $categoryproduct = category_product::all()->toArray();

        return view('frontend.home.listproduct', compact(['categoryproduct', 'product']));

    }

    /**
     *  Chi tiết sản phẩm
     *  Product detail
     */
    public function detailProduct($alias = null, $id = null)
    {

        $data = product::findOrFail($id);

        // Lay danh muc san pham :

        $categoryproduct = category_product::all()->toArray();

        $category_id = product_category::select('categoryproduct_id')->where('product_id', $data['id'])->first();

        $sql = product_category::select('product_id')->where('categoryproduct_id', $category_id['categoryproduct_id'])->get()->toArray();

        $relateproduct = [];
        $dem = 0;

        foreach ($sql as $value) {
            $dataproduct = product::select('*')->where([['id', '=', $value['product_id']], ['status', '=', 1]])->get()->toArray();

            if (!empty($dataproduct)) {
                $relateproduct[] = $dataproduct;
                $dem++;
            }

            if ($dem == 4) {
                break;
            }
        }

        // Lay san pham noi bat:

        $productHight = product::select('*')->where([['status', '=', 1], ['highlights', '=', 1]])->orderBy('id', 'DESC')->LIMIT(5, 0)->get()->toArray();

        return view('frontend.home.detailproduct', compact(['data', 'categoryproduct', 'relateproduct', 'productHight']));

        //return view('frontend.home.detailproduct');
    }

    /**
     * Tin tức
     */

    public function listPost($id = null)
    {

        $data = Post_category::select('*')->where([['category_id', $id]])->get()->toArray();

        $post = [];

        foreach ($data as $items) {

            $sql = Post::select('*')->where([['id', '=', $items['posts_id']], ['status', '!=', 0]])->first();

            if (!empty($sql)) {
                $post[] = $sql;
            }

        }

        return view('frontend.home.listpost', compact(['post']));
    }

    /**
     *   Chi tiết tin tức
     */

    public function detailPost($alias = null, $id = null)
    {

        $cate_id = Post_category::select('*')->where([['category_id', $id]])->get()->toArray();
        $data = Post::findOrFail($id);

        // Tin lien quan :

        $relatepost = Post::select('*')->where('status', 1)->orderBy('id', 'DESC')->LIMIT(5, 0)->get()->toArray();

        return view('frontend.home.detailpost', compact(['data', 'relatepost']));
    }

    /**
     * Search data
     */

    public function textSearch(Request $request)
    {

        $categoryproduct = category_product::all()->toArray();

        $product = product::where([['title', 'like', '%' . $request->key . '%'], ['status', '=', 1]])
            ->orwhere('price', $request->key)
            ->get()->toArray();

        return view('frontend.home.search', compact(['categoryproduct', 'product']));
    }

    // Gioi thieu

    public function getIntroduce($alias = null, $id = null)
    {
        $data = page::findOrFail($id);
        return view('frontend.home.introduce', compact(['data']));
    }

    // TRang

    public function pageDetail($alias = null, $id = null)
    {

        $data = page::findOrFail($id);
        return view('frontend.home.introduce', compact(['data']));
    }
}
