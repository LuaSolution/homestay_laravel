@extends('frontend.base') @section('content')
<div >
    <form class="" action="{!! route('frontend.register') !!}" method="post">
        {!! csrf_field() !!}
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Khách hàng đăng ký</h4>
            </div>
            <div class="modal-body">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Họ và tên</label>
                        <input type="text" name="fullname" class="form-control" placeholder="Họ và tên">
                    </div>

                    <div class="form-group">
                        <label for="">Điện thoại</label>
                        <input type="text" name="phone" class="form-control" placeholder="Điện thoại">
                    </div>

                    <div class="form-group">
                        <label for="">Địa chỉ</label>
                        <input type="text" name="address" class="form-control" placeholder="Địa chỉ">
                    </div>

                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Email hoặc tên đăng nhập</label>
                        <input type="text" name="username" class="form-control" placeholder="username">
                    </div>

                    <div class="form-group">
                        <label for="">Mật khẩu (*)</label>
                        <input type="password" name="password" class="form-control" placeholder="Password">
                    </div>

                    <div class="form-group">
                        <label for="">Nhập lại mật khẩu (*)</label>
                        <input type="password" name="enterpassword" class="form-control" placeholder="Enter password">
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-success">Đăng ký</button>
            </div>
        </div>
    </form>
</div>
@endsection
