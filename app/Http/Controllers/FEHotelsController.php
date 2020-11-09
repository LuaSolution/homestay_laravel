<?php

namespace App\Http\Controllers;

use App\Hotel;
use App\Hotel_utilitie;
use App\Province;
use App\Utilitie;
use File;
use Illuminate\Http\Request;
use Session;

class FEHotelsController extends Controller
{
    public function index()
    {
        if (empty(Session::get('username_id'))) {
            return redirect()->route('index');
        }
        $hotel = Hotel::where('user_id', Session::get('username_id'))->orderBy('id', 'DESC')->paginate(5);

        return view('frontend.page.hotel.list', compact(['hotel']));
    }

    public function create()
    {

        // Lay tất cả tiện ích :
        $Utilitie = Utilitie::all()->toArray();
        $province = Province::get();
        return view('frontend.page.hotel.create', ['Utilitie' => $Utilitie, 'province' => $province]);
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
            return redirect()->route('fe.hotels.index');
        } else {
            toastr()->error('Lưu thất bại ', 'Thông báo');
            return redirect()->route('fe.hotels.index');
        }
    }

    public function edit($id = null)
    {
        // Lay tất cả tiện ích :
        $Utilitie = Utilitie::all()->toArray();

        $Hotel_Utilitie = Hotel::with('Hotel_utilities')->select('*')->where('id', $id)->get()->first()->toArray();

        $hotel = Hotel::findOrFail($id);
        $province = Province::get();
        return view('frontend.page.hotel.update', ['hotel' => $hotel, 'Utilitie' => $Utilitie, 'Hotel_Utilitie' => $Hotel_Utilitie, 'province' => $province]);
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
            return redirect()->route('fe.hotels.index');
        } else {
            toastr()->error('Lưu thất bại ', 'Thông báo');
            return redirect()->route('fe.hotels.index');
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

    public function multiprocess($id)
    {
        $process = Hotel::findOrFail($id);

        if (file_exists(public_path('/uploads/' . $process->image))) {
            File::delete(public_path('/uploads/' . $process->image));
        }
        if (file_exists(public_path('/uploads/seo/' . $process->seo_image))) {
            File::delete(public_path('/uploads/' . $process->seo_image));
        }
        $process->delete();
        return back();
    }
}
