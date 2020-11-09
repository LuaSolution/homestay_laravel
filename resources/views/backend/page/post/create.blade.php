@extends('backend.base')
@section('content')
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
             <form action="{!! route('posts.store') !!}" method="POST" enctype="multipart/form-data">
                {!! csrf_field() !!}
                <div class="col-lg-8">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Thêm mới tin tức</h5>
                            <div class="ibox-tools">
                            </div>
                        </div>
                        <div class="ibox-content">

                            <div class="row">

                                <div class="form-group">
                                    <label class="col-sm-12">Tiêu đề bài viết</label>

                                    <div class="col-sm-12"  style="margin-bottom: 20px">
                                        <input type="text" name="title" placeholder="Tiêu đề" class="form-control">
                                    </div>
                                </div>

                                <br><br>
                                <div class="clearfix"></div>

                                    <div class="form-group">
                                        <label class="col-md-12">Mô tả</label>

                                        <div class="col-md-12">
                                            <textarea name="description" rows="8" class="form-control" cols="80" placeholder="Mô tả ngắn"></textarea>
                                        </div>
                                    </div>



                                 <div class="form-group">
                                    <label class="col-md-12">Nội dung</label>

                                    <div class="col-md-12">
                                      <textarea name="content" class="form-control ckeditor"></textarea>
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
                                                <input type="text" name="seo_title" placeholder="Tiêu đề" class="form-control">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-lg-12">
                                                Mô tả ngắn :
                                            </label>

                                            <div class="col-md-12">
                                              <textarea name="seo_description" rows="8" placeholder="Mô tả ngắn" cols="80" class="form-control"></textarea>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label class="col-lg-12">
                                                Hình ảnh:
                                            </label>

                                            <div class="col-md-12">
                                              <div class="ibox-content" style="display: block;">
                                               <div class="img-preview img-preview-sm">
                                                  <img src="" alt="" id="preview-image-seo" class="img-responsive">
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
                                    <h5>Danh mục</h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>

                                    </div>
                                </div>
                                <div class="ibox-content" style="display: block;">
                                    <select class="chosen-select" multiple name="category[]" tabindex="4">
                                          	<?php CheckboxMulti_Post($category, $parent_id=0, $str="", $selected = 0);  ?>
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
                                    <img src="{!! URL::asset('public/img/image.png') !!}" alt="" id="preview-image" class="img-responsive">
                                </div>
                                <div class="btn-group" id="">
                                    <input type="file" name="image" id="avatar" class="hide">
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
