<?php

namespace App\Http\Controllers;

use App\Booking;
use App\Comments;
use App\Hotel;
use Illuminate\Http\Request;
use Session;

class roomsController extends Controller
{
    public function store(Request $request)
    {
        $today = date("Y-m-d");
        $hotel = Hotel::findOrFail($request->id);
        if ($request->count > $hotel->qtycustomeytoida) {
            toastr()->error('Lỗi vượt quá số người tối đa cho phép', 'Thông báo');
            return back();
        } else if ($request->count == null || $request->count <= 0) {
            toastr()->error('Không đủ số người tối thiểu cho phép', 'Thông báo');
            return back();
        } else if ($request->date == null) {
            toastr()->error('Lỗi chưa chọn ngày vào ở', 'Thông báo');
            return back();
        } else if (strtotime($request->date) <= strtotime($today)) {
            toastr()->error('Lỗi ngày vào ở phải sau ngày hôm nay', 'Thông báo');
            return back();
        } else if (strtotime($request->leave_date) <= strtotime($request->date)) {
            toastr()->error('Lỗi ngày trả phòng phải sau ngày nhận phòng', 'Thông báo');
            return back();
        }
        $timeDiff = abs(strtotime($request->leave_date) - strtotime($request->date));
        $numberDays = intval($timeDiff / 86400);

        $room = new Booking();
        $room->home_id = $request->id;
        $room->user_id = Session::get('username_id');
        $room->quantity = $request->count;
        $room->status = 0;
        $room->received_date = $request->date;
        $room->leave_date = $request->leave_date;
        $room->bill = $hotel->price * $request->count * $numberDays;

        if ($room->save()) {
            toastr()->success('Đặt phòng thành công ', 'Thông báo');
            return back();
        } else {
            toastr()->error('Đặr phòng thất bại', 'Thông báo');
            return back();
        }
    }

    public function addComment(Request $request)
    {
        $comments = new Comments();
        $comments->hotel_id = $request->id;
        $comments->user_id = Session::get('username_id');
        $comments->content = $request->content;

        if ($comments->save()) {
            toastr()->success('Đăng bình luận thành công ', 'Thông báo');
            return back();
        } else {
            toastr()->error('Đăng bình luận thất bại', 'Thông báo');
            return back();
        }
    }
}
