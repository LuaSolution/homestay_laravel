@extends('backend.base')
@section('content')
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                 <form action="" method="POST" enctype="multipart/form-data">
                <div class="col-lg-8">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Thêm mới hội viên</h5>
                            <div class="ibox-tools">
                            </div>
                        </div>
                        <div class="ibox-content">

                            <div class="row">
                                <div class="col-lg-12">
                                   
                                        <div class="form-group">
                                            <label class="col-sm-12 ">Họ tên hội viên</label>

                                            <div class="col-sm-12">
                                                <input type="text" placeholder="Họ tên" class="form-control">
                                            </div>
                                        </div>


                                         <div class="form-group">
                                            <label class="col-sm-12 ">Năm sinh</label>

                                            <div class="col-sm-12">
                                                <input type="date" placeholder="Năm sinh" class="form-control">
                                            </div>
                                        </div>


                                         <div class="form-group">
                                            <label class="col-sm-12 ">Giới tính</label>

                                            <div class="col-sm-12">
                                                <select name="" id="">
                                                    <option value="1">Nam</option>
                                                    <option value="2">Nữ</option>
                                                    <option value="3">Không xác định</option>
                                                </select>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label class="col-sm-12">Quê quán</label>
                                            <div class="col-sm-12">
                                                <textarea name="content" class="form-control"></textarea>
                                                {{-- <script>
                                                    CKEDITOR.replace('content');
                                                </script> --}}
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label class="col-sm-12">Thường trú</label>
                                            <div class="col-sm-12">
                                                <textarea name="content" class="form-control"></textarea>
                                                {{-- <script>
                                                    CKEDITOR.replace('content');
                                                </script> --}}
                                            </div>
                                        </div>
                                   
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="ibox float-e-margins border-bottom">
                        <div class="ibox-title">
                            <h5>Tối ưu hóa SEO</h5>
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
                                <div class="col-lg-12">

                                </div>
                                <div class="col-lg-12">
                                    <div id="world-map" style="height: 100px;"></div>
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

                        </div>
                    </div>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Danh mục bài viết</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>

                            </div>
                        </div>
                        <div class="ibox-content" style="display: block;">

                        </div>
                    </div>
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

                        </div>
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>
@endsection