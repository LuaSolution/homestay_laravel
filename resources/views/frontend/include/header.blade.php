<!DOCTYPE html>
<!-- saved from url=(0025) -->
<html lang="vi">
<head>
    <title>Đặt phòng Homestay</title>
    <link rel="shortcut icon" href="https://q-ec.bstatic.com/static/img/b25logo/favicon/ebc77706da3aae4aee7b05dadf182390f0d26d11.ico" />
    <link type="text/css" rel="preload" href="{!! URL::asset('colombo.vn_booking_files') !!}/style.css" as="style">
    <link type="text/css" rel="stylesheet" href="{!! URL::asset('colombo.vn_booking_files') !!}/style.css">
    <link type="text/css" rel="preload" href="{!! URL::asset('colombo.vn_booking_files') !!}/font-awesome.min.css" as="style">
    <link type="text/css" rel="stylesheet" href="{!! URL::asset('colombo.vn_booking_files') !!}/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{!! URL::asset('colombo.vn_booking_files') !!}/select2.min.css">
       @toastr_css
</head>
<body style="padding:0px;margin:0px;" class="body-home-page body">
    <div class="region-top">
        <div id="module13" class="ModuleWrapper">
            <div class="header-vhv">
                <div id="column1-13" class="column1 container ">
                    <div class="foverlay"></div>
                    <div class="columns-widget row">
                        <div class="col-md-12">
                            <div id="module14" class="ModuleWrapper">
                                <div class="logo-header-vhv">
                                    <div class="columns-widget columns6-6 ">
                                        <div class="row">
                                            <div class="col-left col-xs-12 col-md-6 col-sm-6">
                                                <div id="module16" class="ModuleWrapper">
                                                    <div class="clearfix media">
                                                        <div class="boun-media">
                                                            <a href="/homestay" title="" target="_self"><img class="full-width" src="{!! URL::asset('colombo.vn_booking_files') !!}/logo-w39.png" onerror="this.src=&#39;/App/Corporate/images/no-image-news.png&#39;;" alt="" title=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-right col-xs-12 col-md-6 col-sm-6">
                                                <div id="module15" class="ModuleWrapper">
                                                    <div id="user_form" class="ticker_space smaller_booking_nr_login user_center_bar">
                                                        <ul class="user_center_nav">
                                                            @if(!empty(Session::get('username_id')))
                                                            <li data-priority="3" id="add_property_topbar" class="user_center_option uc_account">
                                                                <a href="{!! route('frontend.userDetail') !!}" target="_blank" data-ga-track="click|Top nav|Click - List your Property|index" class="signin_cta profile_menu_trigger add-property__button js-disable-popover remove_hover_sign_in_btn remove_padding_register_btn_right">
                                                                    <div class="sign_in_wrapper sign_in_wrapper-add-property">
                                                                        <span>
                                                                      Xin chào :  {!! Session::get('fullname') !!}
                                                                        </span>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li class="user_center_option">
                                                              <a class="btn_signin" href="{!! route('frontend.logout') !!}"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng xuất</span>
                                                              </a>
                                                            </li>
                                                            @else
                                                            <li class="user_center_option">
                                                              <a class="btn_signin" href="/homestay/dang-nhap" ><i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng nhập</span>
                                                              </a>
                                                            </li>
                                                            <li class="user_center_option">
                                                              <a class="btn_signin" href="/homestay/dang-ky" >
                                                                <i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng ký</span>
                                                              </a>
                                                            </li>
                                                           @endif
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
