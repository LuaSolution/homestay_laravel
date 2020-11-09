@extends('frontend.base') @section('content')
<div>
    <form class="" action="{!! route('frontend.login') !!}" method="post">
        {!! csrf_field() !!}
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Khách hàng đăng nhập</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="">Tên đăng nhập (user) :</label>
                    <input type="text" name="username" class="form-control">
                </div>

                <div class="form-group">
                    <label for="">Mật khẩu (pass) :</label>
                    <input type="password" name="password" class="form-control">
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-success">Đăng Nhập</button>
            </div>
        </div>
    </form>
</div>
@endsection
