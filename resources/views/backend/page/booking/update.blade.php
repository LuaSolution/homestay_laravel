@extends('backend.base')
@section('content')
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
             <form action="{!! route('hotels.update', ['id'=>$hotel['id']]) !!}" method="POST" enctype="multipart/form-data">
                {!! csrf_field() !!}
                <div class="col-lg-8">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Cập nhật homestay</h5>
                            <div class="ibox-tools">
                            </div>
                        </div>
                        <div class="ibox-content">

                            <div class="row">

                                <div class="form-group">
                                    <label class="col-sm-12">Tên homestay</label>

                                    <div class="col-sm-12"  style="margin-bottom: 20px">
                                        <input type="text" name="name" placeholder="Tiêu đề" class="form-control" value="{!! old('name', isset($hotel['name'])?$hotel['name']:'') !!}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-12">Địa điểm</label>

                                    <div class="col-sm-12"  style="margin-bottom: 20px">
                                        <input type="text" name="address" placeholder="Địa điểm" class="form-control" value="{!! old('address', isset($hotel['address'])?$hotel['address']:'') !!}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-12">Chọn tỉnh</label>
                                    <div class="col-sm-12"  style="margin-bottom: 20px">
                                    <select class="chosen-select" name="province_id" tabindex="4">
                                      @foreach($province as $items)
                                      @if($items['id'] == $hotel['province_id'])
                                      <option value="{!! $items['id'] !!}" selected>{!! $items['name'] !!}</option>
                                      @else
                                      <option value="{!! $items['id'] !!}">{!! $items['name'] !!}</option>
                                      @endif
                                      @endforeach
                                    </select>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                  <label for="">Số ĐT</label>
                                  <div class="form-group">
                                    <input type="text" name="phone" class="form-control" value="" placeholder="Số ĐT" value="{!! old('phone', isset($hotel['phone'])?$hotel['phone']:'') !!}">
                                  </div>
                                </div>

                                <div class="col-md-6">
                                    <label for="">Email</label>
                                    <div class="form-group">
                                      <input type="text" name="email" class="form-control" value="" placeholder="Email" value="{!! old('email', isset($hotel['email'])?$hotel['email']:'') !!}">
                                  </div>
                                </div>

                                <div class="col-md-6">
                                    <label for="">Diện tích</label>
                                      <div class="form-group">
                                      <input type="text" name="acreage" class="form-control" placeholder="Diện tích" value="{!! old('acreage', isset($hotel['acreage'])?$hotel['acreage']:'') !!}">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label for="">Giá tiền</label>
                                    <div class="form-group">
                                        <input type="text" name="price" placeholder="Giá tiền" class="form-control" value="{!! old('price', isset($hotel['price'])?$hotel['price']:'') !!}">
                                  </div>
                                </div>

                                <div class="clearfix"></div>

                                    <div class="form-group">
                                        <label class="col-md-12">Mô tả</label>

                                        <div class="col-md-12">
                                            <textarea name="description" rows="8" class="form-control" cols="80" placeholder="Mô tả ngắn">{!! old('description', isset($hotel['description'])?$hotel['description']:'') !!}</textarea>
                                        </div>
                                    </div>

                                 <div class="form-group">
                                    <label class="col-md-12">Nội dung</label>

                                    <div class="col-md-12">
                                      <textarea name="content" class="form-control ckeditor">{!! old('content', isset($hotel['content'])?$hotel['content']:'') !!}</textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                   <label class="col-md-12">Địa điểm lân cận</label>

                                   <div class="col-md-12">
                                     <textarea name="nearby" class="form-control ckeditor">{!! old('nearby', isset($hotel['nearby'])?$hotel['nearby']:'') !!}</textarea>
                                   </div>
                               </div>

                                    </div>
                                </div>
                            </div>
                            <div class="ibox float-e-margins border-bottom">
                                <div class="ibox-title">
                                    <h5>SEO Google keyword</h5>
                                    <div class="ibox-tools">
                                        <div class="ibox-tools">
                                            <a class="collapse-link">
                                                <i class="fa fa-chevron-down"></i>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                                <div class="ibox-content" style="display: none;">

                                    <div class="row">
                                        <div class="form-group">
                                            <label class="col-lg-12">
                                                Tiêu đề :
                                            </label>

                                            <div class="col-md-12">
                                                <input type="text" name="seo_title" placeholder="Tiêu đề" class="form-control" value="{!! old('seo_title', isset($hotel['seo_title'])?$hotel['seo_title']:'') !!}">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-lg-12">
                                                Mô tả ngắn :
                                            </label>

                                            <div class="col-md-12">
                                              <textarea name="seo_description" rows="8" placeholder="Mô tả ngắn" cols="80" class="form-control">{!! old('seo_description', isset($hotel['seo_description'])?$hotel['seo_description']:'') !!}</textarea>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label class="col-lg-12">
                                                Hình ảnh:
                                            </label>

                                            <div class="col-md-12">
                                              <div class="ibox-content" style="display: block;">
                                               <div class="img-preview img-preview-sm">
                                                  <img src="{!! URL::asset('public/img/') !!}" alt="" id="preview-image-seo" class="img-responsive">
                                              </div>
                                              <div class="btn-group">
                                                  <input type="file" name="imageSEO" id="imageSEO" class="hide">
                                                  <label title="Upload image file" for="inputImage" class="btn btn-primary">
                                                      <a id="inputImageSEO" style="color:#FFF" class="btn btn-primary">
                                                          Upload new image
                                                      </a>
                                                  </label>
                                                </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>Chế độ đăng bài</h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content" style="display: block;">
                                     <select name="status" data-placeholder="Choose a Country..." class="chosen-select"  tabindex="2">
                                        <option value="1">Hiện thị</option>
                                        <option value="2">ẩn</option>
                                    </select>
                                    <br>
                                  <div class="clearfix">

                                    <div class="action-svn" style="padding-top: 10px;">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-floppy-o" aria-hidden="true"></i> Lưu</button>
                                    </div>
                                  </div>
                                </div>
                            </div>

                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>Số người tối đa</h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content" style="display: block;">
                                    <input type="number" value="{!! old('qtycustomeytoida', isset($hotel['qtycustomeytoida'])?$hotel['qtycustomeytoida']:'') !!}" name="qtycustomeytoida" class="form-control">
                                </div>
                            </div>

                          <div class="ibox float-e-margins">
                              <div class="ibox-title">
                                  <h5>Số người tối thiểu</h5>
                                  <div class="ibox-tools">
                                      <a class="collapse-link">
                                          <i class="fa fa-chevron-up"></i>
                                      </a>
                                  </div>
                              </div>
                              <div class="ibox-content" style="display: block;">
                                  <input type="number" value="{!! old('qtycustomeytoithieu', isset($hotel['qtycustomeytoithieu'])?$hotel['qtycustomeytoithieu']:'') !!}" name="qtycustomeytoithieu" class="form-control">
                              </div>
                          </div>

                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>Tiện ích</h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content" style="display: block;">
                                    <select class="chosen-select" multiple name="utilitie_id[]" tabindex="4">
                                      @if(!empty($Utilitie))

                                      @foreach($Utilitie as $items)
                                      <?php
$dem = 0;
foreach ($Hotel_Utilitie['hotel_utilities'] as $hotel_uti) {
    if ($items['id'] == $hotel_uti['utilitie_id']) {
        $dem++;
    }
}?>
                                          <?php if ($dem == 1) {?>
                                      <option selected value="{!! $items['id'] !!}"><img src="{!! URL::asset('public/img/'.$items['icon']) !!}">{!! $items['title'] !!}</option>
                                    <?php } else {
    ?>
                                      <option value="{!! $items['id'] !!}"><img src="{!! URL::asset('public/img/'.$items['icon']) !!}">{!! $items['title'] !!}</option>
                                      <?php
}
?>
                                      @endforeach
                                      @endif
                                    </select>
                                </div>
                            </div>

                            <div class="clearfix"></div>
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>Ảnh đại diện</h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="ibox-content" style="display: block;">
                                 <div class="img-preview img-preview-sm">
                                   @if(!empty($hotel['avatar']))
                                    <img src="{!! URL::asset('public/img/'.$hotel['avatar']) !!}" alt="" id="preview-image" class="img-responsive">
                                   @else
                                    <img src="{!! URL::asset('public/img/image.png') !!}" alt="" id="preview-image" class="img-responsive">
                                    @endif
                                </div>
                                <div class="btn-group" id="">
                                    <input type="file" name="avatar" id="avatar" class="hide">
                                    <label title="Upload image file" for="inputImage" class="btn btn-primary ">
                                        <a id="inputImage" style="color:#FFF">
                                            Upload new image
                                        </a>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Thẻ bài viết</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>

                                </div>
                            </div>
                            <div class="ibox-content" style="display: block;">
                                  <input class="tagsinput form-control" type="text" name="tags[]" value="thẻ bài viết"/>
                            </div>
                        </div>

                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Nổi bật</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>

                                </div>
                            </div>
                            <div class="ibox-content" style="display: block;">
                                   <input type="checkbox" class="js-switch" name="highlights"/>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
