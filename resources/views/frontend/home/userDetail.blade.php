@extends('frontend.base') @section('content')
<div id="whole-page">
    <div id="page-header">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="panel-title">
                            Thông tin khách hàng đăng ký :
                        </div>
                    </div>

                    <div class="panel-body">
                        <table>
                            <tr>
                                <td>Họ và tên</td>
                                <td>{!! $data['fullname'] !!}</td>

                            </tr>

                            <tr>
                                <td>Điện thoại</td>
                                <td> {!! $data['phone'] !!}</td>
                            </tr>
                            <tr>
                                <td>Ngày sinh</td>
                                <td> {!! $data['birthday'] !!}</td>
                            </tr>
                            <tr>
                                <td>Giới tính</td>
                                <td> {!! $data['gender'] == 1 ? 'Nam' : 'Nữ' !!}</td>
                            </tr>
                            <tr>
                                <td>Địa chỉ</td>
                                <td> {!! $data['address'] !!}</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td> {!! $data['email'] !!}</td>
                            </tr>
                            <tr>
                                <td>Tài khoản đăng nhập</td>
                                <td> {!! $data['username'] !!}</td>
                            </tr>
                            <tr>
                                <td>Ngày tham gia</td>
                                <td> {!! $data['created_at'] !!}</td>
                            </tr>
                        </table>

                    </div>
                </div>
            </div>
        </div>
        <a class="btn btn_signin" style="border: 1px solid; margin-left: 50px" href="/homestay/hotels">
            <i class="fa fa-sign-in" aria-hidden="true"></i>
            <span>Đi đến trang quản lý homestay của bạn</span>
</a>
    </div>
</div>
@endsection
