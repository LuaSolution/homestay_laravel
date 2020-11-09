@extends('backend.base')
@section('content')
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-10">
    <h2>Danh sách tiện ích</h2>
  </div>
  <div class="col-lg-2">
<h2>
  <a href="" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus" aria-hidden="true"></i>
Thêm mới</a>
</h2>
  </div>
</div>

<!-- Modal create -->
<div class="img-popup">
  <form class="" action="{!! route('utilities.store') !!}" method="post" enctype="multipart/form-data">
  {!! csrf_field() !!}
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Thêm mới tiện ích</h4>
      </div>
      <div class="clearfix"></div>
      <div class="modal-body">
          <div class="form-group">
              <label for="" class="col-md-12 col-xs-12">Tiêu đề</label>
              <div class="col-md-12">
                <input type="text" name="title" class="form-control" placeholder="Tên tiện ích">
              </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-12 col-xs-12">Icon Hình</label>
                <div class="col-md-12">
                  <input type="file" name="icon" class="form-control" placeholder="Icon image">
                </div>
              </div>
                <div class="clearfix"></div>
      </div>
      <div class="clearfix"></div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Lưu vào</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Trở về</button>
      </div>
    </div>
  </div>
</div>
</form>
</div>

<!-- Modal edit -->
<div class="img-popup">
  <form method="post" id="actionUpdate" enctype="multipart/form-data">
  {!! csrf_field() !!}
<div class="modal fade" id="myModalEdit" role="dialog">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Cập nhật tiện ích</h4>
      </div>
      <div class="clearfix"></div>
      <div class="modal-body">
          <div class="form-group">
              <label for="" class="col-md-12 col-xs-12">Tiêu đề</label>
              <div class="col-md-12">
                <input type="text" name="title" id="title" class="form-control" placeholder="Tên tiện ích">
              </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-12 col-xs-12">Icon Hình</label>
                <div class="col-md-12">
                  <input type="file" name="icon" id="icon" class="form-control" placeholder="Icon image">
                </div>

                <div class="col-md-12" id="review">

                </div>
            </div>
            <div class="clearfix"></div>
      </div>
      <div class="clearfix"></div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Lưu vào</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Trở về</button>
      </div>
    </div>
  </div>
</div>
</form>
</div>
<!-- End Model edit -->

<div class="wrapper wrapper-content animated fadeInRight">
<div class="row">
<div class="col-lg-12">
    <div class="ibox float-e-margins">

        <div class="ibox-content">
            <div class="row">
                <div class="col-sm-2 m-b-xs">
                    <select class="input-sm form-control input-s-sm inline" name="selectitem">
                        <option value="0">Chọn tác vụ</option>
                        <option value="1">Nổi bật</option>
                        <option value="5">Không Nổi bật</option>
                        <option value="3">Hiện thị</option>
                        <option value="2">Ẩn bài</option>
                        <option value="4">Bỏ thùng rác</option>

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

                            <th width="10px">Chọn</th>
                            <th width="50px">Icon</th>
                            <th width="200px">Tiêu đề</th>
                            <th width="20px">Trạng thái</th>
                            <th width="80px">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                      @if(!empty($data))
                      @foreach($data as $items)
                        <tr>
                            <td>
                              <div class="icheckbox_square-green" style="position: relative;">
                                  <input type="checkbox" class="i-checks checkbox-primary" name="checkitem[]" value="" style="position: absolute; opacity: 0;">
                              </div>
                              <!-- @if(!empty($items['status']) && $items['status']==0)
                              <span class="status">
                                <a href=""><img src="{!! URL::asset('public/img/Icon_YellowDot.png') !!}" alt=""></a>
                              </span>
                              @else -->
                              <span class="status">
                                <a href=""><img src="{!! URL::asset('public/img/Icon_GreenDot.png') !!}" alt=""></a>
                              </span>
                              <!-- @endif -->
                            </td>
                            <td>
                              <img src="{!! URL::asset('public/img/'.$items['icon']) !!}" alt="icon">
                            </td>
                            <td>
                              <a id="{!! $items['id'] !!}" data-toggle="modal" data-target="#myModalEdit" href="#" class="edit-ax">{!! $items['title'] !!}</a>
                            </td>
                            <td class="hide">
          										<span class="">
          											<img class="img-svn" src="{!! URL::asset('public/img/') !!}" alt="">
          										</span>
          									</td>
                            <td>
                                <a href="#"> <span class="tag-post"></span></a>
                            </td>
                            <td>
                              <span><a href="" id="{!! $items['id'] !!}" data-toggle="modal" data-target="#myModalEdit" class="btn btn-warning btn-xs edit-ax" title="Cập nhật"><i class="fa fa-pencil" aria-hidden="true"></i></a></span>
                                <span>
                                  <form action="{!! route('utilities.destroy', ['id'=>$items['id']]) !!}" method="post" style="display:inline-table">
                                    {!! csrf_field() !!}
                                  <button onclick="return mydelete()" class="btn btn-danger btn-xs" title="Xoa"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                </form>
                                </span>
                            </td>
                        </tr>
                        @endforeach
                        @endif
                    </tbody>
                </table>
                <p><i>Hiện danh sách có <b></b> bài viết</i></p>

            </div>

        </div>
    </div>
</div>

</div>
</div>
@endsection
