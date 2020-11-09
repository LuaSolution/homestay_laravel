        @extends('backend.base')
        @section('content')
        <div class="row wrapper border-bottom white-bg page-heading">
        	<div class="col-lg-10">
        		<h2>Danh sách hội viên</h2>
        	</div>
        	<div class="col-lg-2">
				<h2><a href="{!! route('members.create') !!}" class="btn btn-w-m btn-primary"><i class="fa fa-plus" aria-hidden="true"></i>
 Thêm mới</a></h2>
        	</div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">

                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-2 m-b-xs">
                            <select class="input-sm form-control input-s-sm inline">
                                <option value="0">Chọn tác vụ</option>
                                <option value="1">Ẩn bài</option>
                                <option value="1">Bỏ thùng rác</option>

                            </select>

                        </div>
                        <div class="col-sm-1 m-b-xs">
                            <button class="btn btn-primary-apdung " type="button"><i class="fa fa-check"></i>&nbsp;Áp dụng</button>

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
                                    <th>Họ và tên</th>
                                    <th>Số ĐT</th>
                                    <th>Email</th>
                                    <th>MXH</th>
                                    <th>Trạng thái</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="icheckbox_square-green checked" style="position: relative;">
                                            <input type="checkbox" checked="" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post">Sản phẩm dưỡng da chất lượng hàng đầu Thế giới có gì?</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-tacgia">admin</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-danhmuc">kinh nghiệm</span></a>
                                    </td>
                                    <td>Lần cuối cập nhật
                                        <br>01/01/2019</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="icheckbox_square-green" style="position: relative;">
                                            <input type="checkbox"  checked="" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post">Sản phẩm dưỡng da chất lượng hàng đầu Thế giới có gì?</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-tacgia">admin</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-danhmuc">kinh nghiệm</span></a>
                                    </td>
                                    <td>Lần cuối cập nhật
                                        <br>01/01/2019</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="icheckbox_square-green" style="position: relative;">
                                            <input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post">Sản phẩm dưỡng da chất lượng hàng đầu Thế giới có gì?</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-tacgia">admin</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-danhmuc">kinh nghiệm</span></a>
                                    </td>
                                    <td>Lần cuối cập nhật
                                        <br>01/01/2019</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="icheckbox_square-green" style="position: relative;">
                                            <input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post">Sản phẩm dưỡng da chất lượng hàng đầu Thế giới có gì?</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-tacgia">admin</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-danhmuc">kinh nghiệm</span></a>
                                    </td>
                                    <td>Lần cuối cập nhật
                                        <br>01/01/2019</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="icheckbox_square-green" style="position: relative;">
                                            <input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post">Sản phẩm dưỡng da chất lượng hàng đầu Thế giới có gì?</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-tacgia">admin</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-danhmuc">kinh nghiệm</span></a>
                                    </td>
                                    <td>Lần cuối cập nhật
                                        <br>01/01/2019</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="icheckbox_square-green" style="position: relative;">
                                            <input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post">Sản phẩm dưỡng da chất lượng hàng đầu Thế giới có gì?</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-tacgia">admin</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-danhmuc">kinh nghiệm</span></a>
                                    </td>
                                    <td>Lần cuối cập nhật
                                        <br>01/01/2019</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="icheckbox_square-green" style="position: relative;">
                                            <input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post">Sản phẩm dưỡng da chất lượng hàng đầu Thế giới có gì?</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-tacgia">admin</span></a>
                                    </td>
                                    <td>
                                        <a href="#"> <span class="tag-post-danhmuc">kinh nghiệm</span></a>
                                    </td>
                                    <td>Lần cuối cập nhật
                                        <br>01/01/2019</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>

        @endsection