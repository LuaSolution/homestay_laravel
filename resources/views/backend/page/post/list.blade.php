@extends('backend.base')
@section('content')
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-10">
    <h2>Danh sách tin tức</h2>
  </div>
  <div class="col-lg-2">
<h2><a href="{!! route('posts.create') !!}" class="btn btn-w-m btn-primary"><i class="fa fa-plus" aria-hidden="true"></i>
Thêm mới</a></h2>
  </div>
</div>
	{!! Form::open(['route' => ['posts.multiprocess'],'style'=>'display:inline']) !!}
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
                            <th width="50px">Ảnh</th>
                            <th width="200px">Tiêu đề</th>
                            <th width="80px">Danh mục</th>
                            <th width="20px">Trạng thái</th>
                            <th width="80px">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                      @if(!empty($post))
                      @foreach($post as $items)
                        <tr>
                            <td>
                              <div class="icheckbox_square-green" style="position: relative;">
                                  <input type="checkbox" class="i-checks checkbox-primary" name="checkitem[]" value="{!! $items['id'] !!}" style="position: absolute; opacity: 0;">
                              </div>
                              @if(!empty($items['status']) && $items['status']==0)
                              <span class="status">
                                <a href=""><img src="{!! URL::asset('public/img/Icon_YellowDot.png') !!}" alt=""></a>
                              </span>
                              @else
                              <span class="status">
                                <a href=""><img src="{!! URL::asset('public/img/Icon_GreenDot.png') !!}" alt=""></a>
                              </span>
                              @endif
                            </td>

                            <td>
          										<span class="">
          											<img class="img-svn" src="{!! URL::asset('public/uploads/'.$items['image']) !!}" alt="">
          										</span>
          									</td>


                            <td>
                                <a href="#"> <span class="tag-post">{!! $items['title'] !!}</span></a>
                            </td>
                            <td>
                              @foreach($items['post_category'] as $val_cate)
                              <?php
                              $val = App\Category::select('*')->where('id', $val_cate['category_id'])->first();
                              echo $val['title'];
                              ?>
                              @endforeach
                            </td>

                            <td><a href="#"><i class="fa fa-check text-navy"></i></a> Lần cuối cập nhật
                                <br>{!! date('d/m/Y', strtotime($items['updated_at'])) !!}</td>
                            <td>
                              <span><a href="{!! route('posts.edit', ['id'=>$items['id']]) !!}" class="btn btn-warning btn-xs" title="Cập nhật"><i class="fa fa-pencil" aria-hidden="true"></i></a></span>
                                <span>
                                  <a href="" class="btn btn-info btn-xs" title="Copy"><i class="fa fa-clipboard" aria-hidden="true"></i></a>
                                </span>
                                {!! Form::open(['route' => ['posts.destroy', $items['id']],'style'=>'display:inline']) !!}
            										<button onclick="return mydelete()" type="submit" class="btn btn-danger btn-xs"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
            										{!! Form::close() !!}
                            </td>
                        </tr>
                        @endforeach
                        @endif
                    </tbody>
                </table>
                <p><i>Hiện danh sách có <b>{!! count($post) !!}</b> bài viết</i></p>
                {!! $post->links() !!}
            </div>

        </div>
    </div>
</div>

</div>
</div>
	{!! Form::close() !!}
@endsection
