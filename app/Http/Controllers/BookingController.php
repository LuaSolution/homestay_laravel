<?php

namespace App\Http\Controllers;

use App\Booking;
use DB;

class BookingController extends Controller
{
    public function index()
    {
        $booking = DB::select('select b.id, hotels.`name`, customer_users.fullname, b.created_at, b.quantity, b.received_date,b.leave_date,b.bill, booking_status.`name` as status from
      booking as b, hotels, customer_users, booking_status
      where
      b.home_id = hotels.id
      and b.user_id = customer_users.id
      and b.`status` = booking_status.id
      and b.`status` = 0');

        return view('backend.page.booking.list', ['booking' => $booking]);
    }

    public function remove($id = null)
    {
        $hotel = Booking::findOrFail($id);
        if ($hotel->delete()) {
            toastr()->success('Xóa thành công', 'Thông báo');
            return back();
        } else {
            toastr()->error('Xóa thất bại', 'Thông báo');
            return back();
        }
        return redirect()->back();
    }

    public function payment($id = null)
    {
        $hotel = Booking::findOrFail($id);
        $hotel->status = 1;
        if ($hotel->save()) {
            toastr()->success('Thanh toán thành công', 'Thông báo');
            return back();
        } else {
            toastr()->error('Thanh toán thất bại', 'Thông báo');
            return back();
        }
    }
}
