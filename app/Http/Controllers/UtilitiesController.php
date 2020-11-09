<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Utilitie;
use File;

class UtilitiesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $data = Utilitie::orderBy('id', 'DESC')->paginate(10);
        return view('backend.page.hotel.utilitie.list', compact(['data']));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $Utilitie = new Utilitie();
      $Utilitie->title = $request->title;

      $file = $request->file('icon');
      if(strlen($file)>0)
      {
        $filename = time().'.'.$file->getClientOriginalName();
        $path = public_path().'/img';
        $file->move($path, $filename);
        $Utilitie->icon = $filename;
      }

      if($Utilitie->save())
      {
        toastr()->success('Lưu tiện ích thành công', 'Thông báo');
        return back();
      }
      else
      {
        toastr()->error('Luư thất bại', 'Thông báo');
        return back();
      }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Utilitie::findOrFail($id);

        return response()->json($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $Utilitie = Utilitie::findOrFail($id);
      $Utilitie->title = $request->title;

      $file = $request->file('icon');
      if(strlen($file)>0)
      {
        $filename = time().'.'.$file->getClientOriginalName();
        $path = public_path().'/img';
        $file->move($path, $filename);
        $Utilitie->icon = $filename;
      }

      if($Utilitie->save())
      {
        toastr()->success('Lưu tiện ích thành công', 'Thông báo');
        return back();
      }
      else
      {
        toastr()->error('Luư thất bại', 'Thông báo');
        return back();
      }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Utilitie = Utilitie::findOrFail($id);
        if(!empty($Utilitie->icon) && strlen($Utilitie->icon)>0)
        {
            if(file_exists(public_path('/img/'.$Utilitie->icon)))
            {
                File::delete(public_path('/uploads/'.$Utilitie->icon));
            }
        }
        if($Utilitie->delete())
        {
          toastr()->success('Xóa thành công', 'Thông báo');
          return back();
        }
        else
        {
          toastr()->error('Xoá thất bại', 'Thông báo');
          return back();
        }
    }
}
