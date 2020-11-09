@extends('backend.base')
@section('content')
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-10">
    <h2>Danh sách danh mục</h2>
  </div>
  <div class="col-lg-2">
<h2><a href="{!! route('categories.create') !!}" class="btn btn-w-m btn-primary"><i class="fa fa-plus" aria-hidden="true"></i>
Thêm mới</a></h2>
  </div>
</div>
<form action="{!! route('categories.process') !!}" method="post">
  {!! csrf_field() !!}
<div class="wrapper wrapper-content animated fadeInRight">
<div class="row">
<div class="col-lg-12">
    <div class="ibox float-e-margins">
        <div class="ibox-content">
            <div class="row">
                <div class="col-sm-2 m-b-xs">
                    <select name="selectitem" class="input-sm form-control input-s-sm inline">
                        <option value="0">Chọn tác vụ</option>
                        <option value="1">Hiện nhiều</option>
                        <option value="2">Ẩn nhiều</option>
                        <option value="3">Bỏ thùng rác</option>
                    </select>
                </div>
                <div class="col-sm-1 m-b-xs">
                    <button class="btn btn-primary-apdung " type="submit"><i class="fa fa-check"></i>&nbsp;Áp dụng</button>

                </div>
                <div class="col-sm-2 m-b-xs">
                    <select class="input-sm form-control input-s-sm inline">
                        <option value="0">Tất cả</option>
                        <option value="1">Bài của tôi</option>
                        <option value="1">Đã đăng</option>
                        <option value="1">Bài nháp</option>
                        <option value="1">Đã ẩn</option>
                    </select>

                </div>
                <div class="col-sm-1 m-b-xs">
                    <button class="btn btn-primary-apdung " type="button"><i class="fa fa-check"></i>&nbsp;Áp dụng</button>

                </div>
                <div class="col-sm-3">
                    <div class="input-group">
                        <input type="text" placeholder="Search" class="input-sm form-control"> <span class="input-group-btn">
                                <button type="button" class="btn btn-sm btn-primary"> Go!</button> </span></div>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Chọn</th>
                            <th>Ảnh</th>
                            <th>Danh mục</th>
                            <th>Ngày tạo</th>
                            <th>Trạng thái</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        	<?php categoryListMulti($category, 0, $str=""); ?>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>
</div>
</div>
</form>
@endsection
