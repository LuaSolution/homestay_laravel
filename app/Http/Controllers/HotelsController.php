<?php

namespace App\Http\Controllers;

use App\Booking;
use App\Hotel;
use App\Hotel_utilitie;
use App\Province;
use App\Utilitie;
use DB;
use File;
use Illuminate\Http\Request;
use Session;

class HotelsController extends Controller
{
    public function index()
    {
        $hotel = Hotel::orderBy('id', 'DESC')->paginate(5);

        return view('backend.page.hotel.list', compact(['hotel']));
    }

    public function create()
    {
        // Lay tất cả tiện ích :
        $Utilitie = Utilitie::all()->toArray();
        $province = Province::get();
        return view('backend.page.hotel.create', ['Utilitie' => $Utilitie, 'province' => $province]);
    }

    public function store(Request $request)
    {
        $hotel = new Hotel();

        $hotel->name = $request->name;
        $hotel->address = $request->address;
        $hotel->description = $request->description;
        $hotel->content = $request->content;
        $hotel->phone = $request->phone;
        $hotel->email = $request->email;

        $hotel->price = $request->price;
        $hotel->acreage = $request->acreage;
        $hotel->qtycustomeytoida = $request->qtycustomeytoida;
        $hotel->qtycustomeytoithieu = $request->qtycustomeytoithieu;
        $hotel->qtyOrder = 0;
        $hotel->nearby = $request->nearby;
        $hotel->popular = $request->popular;
        $hotel->user_id = Session::get('username_id');
        $hotel->status = 1;
        $hotel->province_id = $request->province_id;

        $file = $request->file('avatar');
        if (strlen($file) > 0) {
            $filename = time() . '.' . $file->getClientOriginalName();
            $path = public_path() . '/img';
            $file->move($path, $filename);

            $hotel->avatar = $filename;
        }
        $dem = 0;
        if ($hotel->save()) {
            $utilitie_id = $request->utilitie_id;

            if (!empty($utilitie_id)) {
                foreach ($utilitie_id as $items) {

                    $hotel_utilities = new Hotel_utilitie();
                    $hotel_utilities->hotel_id = $hotel->id;
                    $hotel_utilities->utilitie_id = $items;

                    $hotel_utilities->save();
                }
            }
            $dem = 1;
        }
        if ($dem == 1) {
            toastr()->success('Lưu thành công ', 'Thông báo');
            return redirect()->route('hotels.index');
        } else {
            toastr()->error('Lưu thất bại ', 'Thông báo');
            return redirect()->route('hotels.index');
        }
    }

    public function edit($id = null)
    {
        // Lay tất cả tiện ích :
        $Utilitie = Utilitie::all()->toArray();

        $Hotel_Utilitie = Hotel::with('Hotel_utilities')->select('*')->where('id', $id)->get()->first()->toArray();

        $hotel = Hotel::findOrFail($id);
        $province = Province::get();
        return view('backend.page.hotel.update', ['hotel' => $hotel, 'Utilitie' => $Utilitie, 'Hotel_Utilitie' => $Hotel_Utilitie, 'province' => $province]);
    }

    public function update(Request $request, $id = null)
    {
        $hotel = Hotel::findOrFail($id);

        $hotel->name = $request->name;
        $hotel->address = $request->address;
        $hotel->description = $request->description;
        $hotel->content = $request->content;
        $hotel->phone = $request->phone;
        $hotel->email = $request->email;

        $hotel->price = $request->price;
        $hotel->acreage = $request->acreage;
        $hotel->qtycustomeytoida = $request->qtycustomeytoida;
        $hotel->qtycustomeytoithieu = $request->qtycustomeytoithieu;
        $hotel->qtyOrder = 0;
        $hotel->nearby = $request->nearby;
        $hotel->popular = $request->popular;
        $hotel->user_id = Session::get('username_id');
        $hotel->status = 1;
        $hotel->province_id = $request->province_id;

        $file = $request->file('avatar');
        if (strlen($file) > 0) {
            $filename = time() . '.' . $file->getClientOriginalName();
            $path = public_path() . '/img';
            $file->move($path, $filename);

            $hotel->avatar = $filename;
        }
        $dem = 0;
        if ($hotel->save()) {

            $utilitie_del = Hotel_utilitie::where('hotel_id', $hotel->id)->get()->toArray();

            if (!empty($utilitie_del) && count($utilitie_del) > 0) {
                foreach ($utilitie_del as $del) {
                    $Hotel_utilitie = Hotel_utilitie::findOrFail($del['id']);
                    $Hotel_utilitie->delete();
                }
            }

            $utilitie_id = $request->utilitie_id;
            if (!empty($utilitie_id)) {
                foreach ($utilitie_id as $items) {

                    $hotel_utilities = new Hotel_utilitie();
                    $hotel_utilities->hotel_id = $hotel->id;
                    $hotel_utilities->utilitie_id = $items;

                    $hotel_utilities->save();
                }
            }
            $dem = 1;
        }
        if ($dem == 1) {
            toastr()->success('Lưu thành công ', 'Thông báo');
            return redirect()->route('hotels.index');
        } else {
            toastr()->error('Lưu thất bại ', 'Thông báo');
            return redirect()->route('hotels.index');
        }
    }

    public function destroy($id = null)
    {
        $hotel = Hotel::findOrFail($id);
        if ($hotel->delete()) {
            toastr()->success('Xóa thành công', 'Thông báo');
            return back();
        } else {
            toastr()->error('Xóa thất bại', 'Thông báo');
            return back();
        }
    }

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
                    $process = Hotel::findOrFail($valueitem);

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
                    $process = Hotel::findOrFail($valueitem);

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
                    $process = Hotel::findOrFail($valueitem);

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
                    $process = Hotel::findOrFail($valueitem);

                    if (file_exists(public_path('/uploads/' . $process->image))) {
                        File::delete(public_path('/uploads/' . $process->image));
                    }
                    if (file_exists(public_path('/uploads/seo/' . $process->seo_image))) {
                        File::delete(public_path('/uploads/' . $process->seo_image));
                    }
                    if ($process->delete()) {
                        $dem++;
                    }
                }
                if ($dem > 0) {
                    toastr()->success($dem . ' Bài viết đã xóa', 'Thông báo');
                    return back();
                }
            }

            // Xử lý bài viết không nổi bật :
            if (isset($selectitem) && $selectitem == 5) {
                $checkitem = $request->checkitem;
                $dem = 0;
                $fail = 0;
                foreach ($checkitem as $valueitem) {
                    $process = Hotel::findOrFail($valueitem);
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

    public function thongKe()
    {
        $booking = DB::select('select b.id, hotels.`name`, customer_users.fullname, b.created_at, b.quantity, b.received_date,b.leave_date,b.bill, booking_status.`name` as status from
      booking as b, hotels, customer_users, booking_status
      where
      b.home_id = hotels.id
      and b.user_id = customer_users.id
      and b.`status` = booking_status.id
      and b.`status` = 1');

        $sum = Booking::where('status', 1)->sum('bill');
        return view('backend.page.thongke', ['booking' => $booking, 'sum' => $sum]);
    }

    public function postThongKe(Request $request)
    {
        if (!$request->month || $request->month == 0) {
            $booking = DB::select('select b.id, hotels.`name`, customer_users.fullname, b.created_at, b.quantity, b.received_date,b.leave_date,b.bill, booking_status.`name` as status from
      booking as b, hotels, customer_users, booking_status
      where
      b.home_id = hotels.id
      and b.user_id = customer_users.id
      and b.`status` = booking_status.id
      and b.`status` = 1');
        } else {
            $booking = DB::select('select b.id, hotels.`name`, customer_users.fullname, b.created_at, b.quantity, b.received_date,b.leave_date,b.bill, booking_status.`name` as status from
      booking as b, hotels, customer_users, booking_status
      where
      b.home_id = hotels.id
      and b.user_id = customer_users.id
      and b.`status` = booking_status.id
      and b.`status` = 1  and MONTH(B.created_at) = ' . $request->month);
        }
        $sum = Booking::where('status', 1)->sum('bill');
        return view('backend.page.thongke', ['booking' => $booking, 'sum' => $sum, 'month' => $request->month]);
    }

}
