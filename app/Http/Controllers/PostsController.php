<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use App\Post_category;
use DateTime;
use File;
use Illuminate\Http\Request;
use Session;

class PostsController extends Controller
{

    // Hiện thị dữ liệu trang chủ
    public function index()
    {
        $post = Post::with('User', 'Post_category')->orderBy('id', 'DESC')->paginate(10);
        $count_new = count(Post::all());

        return view('backend.page.post.list', compact(['post', 'count_new']));
    }

    public function create()
    {
        $category = Category::all()->toArray();
        return view('backend.page.post.create', compact(['category']));
    }

    public function store(Request $request)
    {
        if ($request->action == 1) {

            $post = new Post();
            $file = $request->file('image');
            $seo_image = $request->file('seo_image');

            $post->user_id = Session::get('username_id');
            $post->title = $request->title;
            $post->slug = str_slug($request->title);
            $post->description = $request->description;
            $post->content = $request->content;
            $post->highlights = $request->highlights;
            $post->status = $request->status;
            $post->save = 1;
            $post->created_at = new DateTime();

            // SEO :
            $post->seo_title = $request->seo_title;
            $post->seo_description = $request->seo_description;
            $post->seo_keyword = json_encode($request->seo_keyword);

            // Image:
            if (strlen($seo_image) > 0) {
                $seo_filename = time() . '.' . $file->getClientOriginalName();
                $seo_path = public_path() . '/uploads/seo';
                $seo_image->move($seo_path, $seo_filename);

                $post->seo_image = $seo_filename;
            }

            // Tag :
            $post->tag = json_encode($request->tags);

            if ($post->highlights == "on") {
                $post->highlights = 1;
            } else {
                $post->highlights = 0;
            }

            // Image :
            if (strlen($file) > 0) {
                $filename = time() . '.' . $file->getClientOriginalName();
                $path = public_path() . '/uploads';

                $post->image = $filename;

                if ($file->move($path, $filename)) {
                    toastr()->success('Lưu ảnh thành công', 'Thành công');
                } else {
                    toastr()->error('Lưu ảnh thất bại', 'Thất bại');
                }
            }

            if ($post->save()) {
                $category = $request->category;
                if (isset($category)) {

                    foreach ($category as $cate) {
                        $post_category = new Post_category();

                        $post_category->posts_id = $post->id;
                        $post_category->category_id = $cate;
                        $post_category->created_at = new DateTime();

                        $post_category->save();
                    }
                } else {
                    toastr()->warning('Chưa chọn danh mục bài viết', 'Thông báo');
                }
                toastr()->success('Lưu thành công', 'Thành công');
                return redirect()->route('posts.index');
            } else {
                toastr()->error('Lưu thất bại', 'Thất bại');
                return redirect()->route('posts.index');
            }
        } else {
            $post = new Post();
            $file = $request->file('image');
            $seo_image = $request->file('seo_image');

            $post->user_id = Session::get('username_id');
            $post->title = $request->title;
            $post->slug = str_slug($request->title);
            $post->description = $request->description;
            $post->content = $request->content;
            $post->highlights = $request->highlights;
            $post->status = $request->status;
            $post->save = 2;
            $post->created_at = new DateTime();

            // SEO :
            $post->seo_title = $request->seo_title;
            $post->seo_description = $request->seo_description;
            $post->seo_keyword = json_encode($request->seo_keyword);

            // Image:
            if (strlen($seo_image) > 0) {
                $seo_filename = time() . '.' . $seo_image->getClientOriginalName();
                $seo_path = public_path() . '/uploads/seo';
                $seo_image->move($seo_path, $seo_filename);

                $post->seo_image = $seo_filename;
            }

            // Tag :
            $post->tag = json_encode($request->tag);

            // Image :
            if (strlen($file) > 0) {
                $filename = time() . '.' . $file->getClientOriginalName();
                $path = public_path() . '/uploads';

                $post->image = $filename;

                if ($file->move($path, $filename)) {
                    toastr()->success('Lưu ảnh thành công', 'Thành công');
                } else {
                    toastr()->error('Lưu ảnh thất bại', 'Thất bại');
                }
            }

            if ($post->save()) {
                $category = $request->category;
                if (isset($category)) {

                    foreach ($category as $cate) {
                        $post_category = new Post_category();

                        $post_category->posts_id = $post->id;
                        $post_category->category_id = $cate;
                        $post_category->created_at = new DateTime();

                        $post_category->save();
                    }
                } else {
                    toastr()->warning('Chưa chọn danh mục bài viết', 'Thông báo');
                }
                toastr()->success('Lưu thành công', 'Thành công');
                return redirect()->route('posts.edit', ['id' => $post->id]);
            } else {
                toastr()->error('Lưu chưa thành công', 'Thông báo');
                return redirect()->back();
            }
        }

        //return response()->json(['success'=>'Done!']);

    }

    public function edit($id = null)
    {
        $category = Category::all()->toArray();
        $post = Post::with('Post_category')->select('*')->where('id', $id)->get()->first()->toArray();

        return view('backend.page.post.edit', compact(['category', 'post']));
    }

    public function update(Request $request, $id = null)
    {

        $post = Post::findOrFail($id);
        $file = $request->file('image');
        $seo_image = $request->file('seo_image');

        $post->user_id = Session::get('username_id');
        $post->title = $request->title;
        $post->slug = str_slug($request->title);
        $post->description = $request->description;
        $post->content = $request->content;
        $post->highlights = $request->highlights;
        $post->status = $request->status;
        $post->save = 1;
        $post->created_at = new DateTime();

        // SEO :
        $post->seo_title = $request->seo_title;
        $post->seo_description = $request->seo_description;
        $post->seo_keyword = json_encode($request->seo_keyword);

        // Image:
        if (strlen($seo_image) > 0) {
            $seo_filename = time() . '.' . $seo_image->getClientOriginalName();
            $seo_path = public_path() . '/uploads/seo';
            $seo_image->move($seo_path, $seo_filename);

            $post->seo_image = $seo_filename;
        }

        // Tag :
        $post->tag = json_encode($request->tag);

        // Image :
        if (strlen($file) > 0) {
            $filename = time() . '.' . $file->getClientOriginalName();
            $path = public_path() . '/uploads';

            $post->image = $filename;

            if ($file->move($path, $filename)) {
                toastr()->success('Lưu ảnh thành công', 'Thành công');
            } else {
                toastr()->error('Lưu ảnh thất bại', 'Thất bại');
            }
        }

        if ($post->save()) {
            $category = $request->category;

            // Truy vấn lấy ra danh mục của bài viết hiện tại :
            $cate_hientai = Post_category::select('*')->where('posts_id', $id);
            // Và xóa :
            $cate_hientai->delete();

            if (!empty($category)) {
                foreach ($category as $cate) {

                    $post_cate = Post_category::select('*')->where([['category_id', '=', $cate], ['posts_id', '=', $post->id]])->get();
                    if (count($post_cate) == 0) {

                        $post_category = new Post_category();

                        $post_category->posts_id = $post->id;
                        $post_category->category_id = $cate;
                        $post_category->created_at = new DateTime();

                        $post_category->save();
                    }
                }
            }
            toastr()->success('Cập nhật thành công', 'Thành công');
            return redirect()->route('posts.index');
        } else {
            toastr()->error('Lưu thất bại', 'Thất bại');
            return redirect()->route('posts.index');
        }
    }

    public function destroy($id = null)
    {

        $delete = Post::findOrFail($id);

        if (file_exists(public_path('/uploads/' . $delete->image))) {
            File::delete(public_path('/uploads/' . $delete->image));
            toastr()->success('Xóa ảnh thành công', 'Đã xóa');
        }
        if (file_exists(public_path('/uploads/seo' . $delete->seo_image))) {
            File::delete(public_path('/uploads/' . $delete->seo_image));
            toastr()->success('Xóa ảnh seo thành công', 'Đã xóa');
        }
        if ($delete->delete()) {
            toastr()->success('Xóa bài viết thành công ', 'Thành công');
            return back();
        } else {
            toastr()->error('Xóa không thành công', 'Thất bại');
            return back();
        }
    }

    // Chuyển trạng thái sang ẩn :
    public function post_hidden($id = null)
    {
        $post = Post::findOrFail($id);

        $post->status = 0;
        if ($post->save()) {
            toastr()->success('Bài viết đã được ẩn', 'Đã lưu');
            return back();
        } else {
            toastr()->error('Bài viết chưa được ẩn', 'Chưa lưu');
            return back();
        }
    }

    // Chuyển trạng thái sang ẩn :
    public function post_desplay($id = null)
    {
        $post = Post::findOrFail($id);

        $post->status = 1;
        if ($post->save()) {
            toastr()->success('Đã hiện thị', 'Đã lưu');
            return back();
        } else {
            toastr()->error('Bài viết chưa được hiện thị', 'Chưa lưu');
            return back();
        }
    }

    /**
     *  Xóa nhiều bản ghi cùng 1 lúc
     *     Cập nhật bài viết nổi bật
     *    Xử lý nhiều tác vụ
     *    Xử lý trạng thái bài viết
     */

    public function multiprocess(Request $request)
    {

        $selectitem = $request->selectitem;

        if (isset($selectitem) && $selectitem == 0) {
            toastr()->error('Bạn chưa chọn thao tác để xử lý', 'Báo lỗi');
            return back();
        } else {
            // Xử lý bài viết nổi bật :
            if (isset($selectitem) && $selectitem == 1) {
                $checkitem = $request->checkitem;
                $dem = 0;
                foreach ($checkitem as $valueitem) {
                    $process = Post::findOrFail($valueitem);

                    $process->highlights = 1;
                    $process->status = 1;

                    if ($process->save()) {
                        $dem++;
                    }

                }
                if ($dem > 0) {
                    toastr()->success($dem . 'Bài viết nổi bật', 'Thông báo');
                    return back();
                } else {
                    toastr()->error('Cập nhật nổi bật không thành công', 'Thất bại');
                    return back();
                }
            }

            // Xử lý bài viết ản nhiều :

            if (isset($selectitem) && $selectitem == 2) {
                $checkitem = $request->checkitem;
                $dem = 0;
                foreach ($checkitem as $valueitem) {
                    $process = Post::findOrFail($valueitem);

                    $process->status = 0;

                    if ($process->save()) {
                        $dem++;
                    }
                }
                if ($dem > 0) {
                    toastr()->success($dem . ' Bài viết đã ẩn', 'Thông báo');
                    return back();
                } else {
                    toastr()->error('Cập nhật ẩn bài viết không thành công', 'Thất bại');
                    return back();
                }
            }

            // Hiện thị nhiều bài viết :

            if (isset($selectitem) && $selectitem == 3) {
                $checkitem = $request->checkitem;
                $dem = 0;
                foreach ($checkitem as $valueitem) {
                    $process = Post::findOrFail($valueitem);

                    $process->status = 1;

                    if ($process->save()) {
                        $dem++;
                    }
                }
                if ($dem > 0) {
                    toastr()->success($dem . ' Bài viết đã hiện thị', 'Thông báo');
                    return back();
                } else {
                    toastr()->error('Cập nhật hiện thị bài viết không thành công', 'Thất bại');
                    return back();
                }
            }

            // Xóa nhiều bài viết :

            if (isset($selectitem) && $selectitem == 4) {
                $checkitem = $request->checkitem;
                $dem = 0;
                foreach ($checkitem as $valueitem) {
                    $process = Post::findOrFail($valueitem);

                    if (file_exists(public_path('/uploads/' . $process->image))) {
                        File::delete(public_path('/uploads/' . $process->image));
                        toastr()->warning('Xóa ảnh thành công', 'Đã xóa');
                    } else {
                        toastr()->error('Chưa xóa ảnh hoặc không tồn tại ảnh', 'Thông báo');
                    }

                    if (file_exists(public_path('/uploads/seo/' . $process->seo_image))) {
                        File::delete(public_path('/uploads/' . $process->seo_image));
                        toastr()->warning('Xóa ảnh seo thành công', 'Đã xóa');
                    } else {
                        toastr()->error('Chưa xóa ảnh seo hoặc không tồn tại ảnh', 'Thông báo');
                    }

                    if ($process->delete()) {
                        $dem++;
                    }
                }
                if ($dem > 0) {
                    toastr()->success($dem . ' Bài viết đã xóa', 'Thông báo');
                    return back();
                } else {
                    toastr()->error('Xóa bài viết không thành công', 'Thông báo');
                    return back();
                }
            }

            // Xử lý bài viết không nổi bật :

            if (isset($selectitem) && $selectitem == 5) {
                $checkitem = $request->checkitem;
                $dem = 0;
                $fail = 0;
                foreach ($checkitem as $valueitem) {
                    $process = Post::findOrFail($valueitem);
                    $process->highlights = 0;

                    if ($process->save()) {
                        $dem++;
                    } else {
                        $fail++;
                    }
                }
                if ($dem > 0) {
                    toastr()->success($dem . ' Bài viết chuyển thành không nổi bật', 'Thông báo');
                    toastr()->warning($fail . ' Bài viết chưa chuyển', 'Thông báo');
                    return back();
                } else {
                    toastr()->error($fail . ' Bài viết chưa được chuyển', 'Thông báo');
                }
            }
        }
    }

    /**
     *  Nổi bật bài viết :
     */

    public function star(Request $request, $id = null)
    {
        $star = Post::findOrFail($id);
        $star->highlights = 1;
        $star->status = 1;

        if ($star->save()) {
            toastr()->success('Bài viết nổi bật', 'Thông báo');
            return back();
        } else {
            toastr()->error('Bài viết chưa nổi bật', 'Thông báo');
            return back();
        }
    }

    /**
     *   Bài viết không nổi bật :
     */

    public function starempty(Request $request, $id = null)
    {
        $star = Post::findOrFail($id);
        $star->highlights = 0;

        if ($star->save()) {
            toastr()->success('Bài viết không nổi bật', 'Thông báo');
            return back();
        } else {
            toastr()->error('Chưa chuyển trạng thái thành công', 'Thông báo');
            return back();
        }
    }
}
