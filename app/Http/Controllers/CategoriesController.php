<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use File;

class CategoriesController extends Controller
{
	public function index()
	{
		$category = Category::all()->toArray();
		return view('backend.page.category.list', compact(['category']));
	}

	public function create()
	{

		$category = Category::all()->toArray();
		return view('backend.page.category.create', compact(['category']));
	}

	public function store(Request $request)
	{
		$category = new Category();

		$file = $request->file('image');

		$category->parent_id = $request->parent_id;
		$category->title = $request->title;
		$category->slug  = str_slug($request->title);
		$category->description = $request->description;
		$category->content = $request->content;
		$category->seo_title = $request->seo_title;
		$category->seo_description = $request->seo_description;

		$category->status = $request->status;
		$category->tag = json_encode($request->tag);

    	// Xử lý upload file :
		if(isset($file))
		{
			$filename = time().'.'.$file->getClientOriginalName();
			$filepath = public_path().'/img/';

			$file->move($filepath, $filename);

			$category->image = $filename;
		}

		if($category->save())
		{
			toastr()->success('Lưu thành công', 'Thành công');
			return redirect()->route('categories.index');
		}
		else
		{
			toastr()->error('Lưu không thành công', 'Thất bại');
			return redirect()->route('categories.index');
		}
	}

	// xóa danh mục sp :
	public function edit($id=null)
	{

		$list_category = Category::all()->toArray();
		$category = Category::findOrFail($id);

		return view('backend.page.category.edit', compact(['list_category', 'category']));
	}


	public function update(Request $request, $id=null)
	{
		$category = Category::findOrFail($id);

		$file = $request->file('image');

		$category->parent_id = $request->parent_id;
		$category->title = $request->title;
		$category->slug  = str_slug($request->title);
		$category->description = $request->description;
		$category->content = $request->content;
		$category->seo_title = $request->seo_title;
		$category->seo_description = $request->seo_description;
		$category->tag = json_encode($request->tag);
		$category->status = $request->status;

    	// Xử lý upload file :
		if(strlen($file)>0)
		{

			// Xóa file ảnh cũ đi và upload file mới :
			if(file_exists(public_path().'/uploads/'.$category->image))
			{
				File::delete(public_path('img/'.$category->image));
				toastr()->warning('Xóa file thành công', 'Thành công');
			}


			$filename = time().'.'.$file->getClientOriginalName();
			$filepath = public_path().'/uploads/';

			$file->move($filepath, $filename);

			$category->image = $filename;
		}

		if($category->save())
		{
			toastr()->success('Lưu thành công', 'Thành công');
			return redirect()->route('categories.index');
		}
		else
		{
			toastr()->error('Lưu không thành công', 'Thất bại');
			return redirect()->route('categories.index');
		}
	}


	// Xóa danh mục sản phẩm :
	public function destroy($id=null)
	{
		$category = Category::findOrFail($id);

		// Dem xem no co thang con hay không :

		$category_parent = Category::select('*')->where('parent_id', $category->id)->get();

		if(count($category_parent)>0)
		{
			toastr()->warning('Không xóa được vì có danh mục con', 'Cảnh báo');
			return back();
		}
		else
		{
			if(file_exists(public_path().'/uploads/'.$category['image']))
			{
				File::delete(public_path('img/'.$category['image']));
			}
			if($category->delete())
			{
				toastr()->success('Xóa thành công', 'Thành công');
				return redirect()->route('categories.index');
			}
			else
			{
				toastr()->error('Xóa không thành công', 'Thất bại');
				return redirect()->route('categories.index');
			}
		}
	}



	// Hiện danh mục
	public function post_display($id=null)
	{
	    $category = Category::findOrFail($id);

		$category['status'] = 1;
		if($category->save())
		{
			toastr()->success('Lưu thành công', 'Thông báo');
			return back();
		}
		else
		{
			toastr()->error('Lưu thất bại', 'Thông báo');
			return back();
		}

	}


	// ẩn danh mục bài viết
	public function post_hidden($id=null)
	{
		$category = Category::findOrFail($id);

		$category['status'] = 0;
		if($category->save())
		{
			toastr()->success('Lưu thành công', 'Thông báo');
			return back();
		}
		else
		{
			toastr()->error('Lưu thất bại', 'Thông báo');
			return back();
		}
	}

	public function process(Request $request)
	{
		$selectitem = $request->selectitem;

		if($selectitem==0)
		{
			toastr()->error('Bạn chưa chọn thao tác nào ', 'Thông báo');
			return back();
		}
		else
		{
			switch ($selectitem)
			{
				case '1':
				{
					$checkitem = $request->checkcategory;
					if(!empty($checkitem))
					{
						$dem = 0;
						foreach($checkitem as $items)
						{
								$cate = Category::findOrFail($items);
								$cate->status = 1;
								if($cate->save())
								{
										$dem++;
								}
						}
						if($dem==0)
						{
							toastr()->warning('Không có danh mục nào được áp dụng', 'Thông báo');
							return back();
						}
						else
						{
							toastr()->success('Áp dụng thành công '.$dem.' danh mục', 'Thông báo');
							return back();
						}
					}
					else {
							toastr()->error('Chưa chọn danh mục nào', 'Thông báo');
							return back();
					}
					break;
				}

				case '2':
				{
					$checkitem = $request->checkcategory;
					if(!empty($checkitem))
					{
						$dem = 0;
						foreach($checkitem as $items)
						{
								$cate = Category::findOrFail($items);
								$cate->status = 0;
								if($cate->save())
								{
										$dem++;
								}
						}
						if($dem==0)
						{
							toastr()->warning('Không có danh mục nào được áp dụng', 'Thông báo');
							return back();
						}
						else
						{
							toastr()->success('Áp dụng thành công '.$dem.' danh mục', 'Thông báo');
							return back();
						}
					}
					else {
							toastr()->error('Chưa chọn danh mục nào', 'Thông báo');
							return back();
					}
					break;
				}

				case '3':
				{
					$checkitem = $request->checkcategory;
					if(!empty($checkitem))
					{
						$dem = 0;
						foreach($checkitem as $items)
						{
								$cate = Category::findOrFail($items);
								if($cate->delete())
								{
										$dem++;
								}
						}
						if($dem==0)
						{
							toastr()->warning('Chưa có bản ghi nào được xóa', 'Thông báo');
							return back();
						}
						else
						{
							toastr()->success('Xóa thành công '.$dem.' danh mục', 'Thông báo');
							return back();
						}
					}
					else {
							toastr()->error('Chưa chọn danh mục nào', 'Thông báo');
							return back();
					}
					break;
				}
				default:
				{
					echo "<pre>";
					print_r($request->selectitem);
					die;
					break;
				}
			}
		}
	}
}
