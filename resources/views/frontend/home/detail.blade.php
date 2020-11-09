<!DOCTYPE html>
<html lang="vi" xmlns:og="http://opengraphprotocol.org/schema/"
    class=" b_chrome b_chrome_74 supports_inline-block supports_flexbox_unprefixed supports_fontface  hasJS">

<head>
<link rel="shortcut icon" href="https://q-ec.bstatic.com/static/img/b25logo/favicon/ebc77706da3aae4aee7b05dadf182390f0d26d11.ico" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="{!! URL::asset('public/base2/js')!!}" type="text/javascript" async=""></script>
    <link rel="stylesheet" onload="window.mainCssWasLoaded=1"
        href="{!! URL::asset('public/base2/3cf072e3f2641471fc0346606a6bda6975417f46.css')!!}" data-main-css="1"
        onerror="throw new Error(&#39;CSS file has not been loaded: &#39; + this.src);">
    <link rel="stylesheet" href="{!! URL::asset('public/base2/2e80ab89c63c067516993ee865069074c20c726f.css')!!}">
    <link rel="stylesheet" href="{!! URL::asset('public/base2/bc40f0e8faf7262bf0f89a822c759f777e0356aa.css')!!}">
    <link rel="stylesheet" type="text/css"
        href="{!! URL::asset('public/base2/1ad342de9396ecfc7324809182230d68c836cf44.css')!!}">
    <link rel="stylesheet" type="text/css"
        href="{!! URL::asset('public/base2/d0d164d103031008b83e0c2ef58795d29e146b54.css')!!}" media="screen">
    <link rel="stylesheet" type="text/css"
        href="{!! URL::asset('public/base2/fbeb4ce8e27eaa30b204dfdb1457007576e9e843.css')!!}" media="screen">
    <link rel="stylesheet" href="{!! URL::asset('public/base2/45c1bf85b29ce0ce00f15bfd406e97fd492d1d84.css')!!}">
    @toastr_css
    <style>
        #basiclayout {
            margin: 0px 0 0 0;
        }

        #special_actions {
            margin: 3px 15px 3px 0;
        }

        .ticker_space {
            margin-top: 3px !important;
        }

        #logo_no_globe_new_logo {
            top: 14px;
        }

        .b_msie_6 #top,
        .b_msie_6 body.header_reshuffle #top {
            height: 61px !important;
        }

        .b_msie_6 #special_actions {
            margin: 3px 15px 3px 0;
            overflow: visible;
        }

        body.header_reshuffle #top {
            min-height: 50px !important;
            height: 50px !important;
        }

        .nobg {
            background: #fff url("https://r-ak.bstatic.com/static/img/nobg_all_blue_iq/b700d9e3067c1186a3364012df4fe1c48ae6da44.png')!!}") repeat-x;
            background-position: 0 -50px;
        }

    </style>
    <title>Chi tiết homestay</title>
</head>

<body
    data-preload-assets="[&quot;https://secure.Allstay.com/favicon.ico&quot;,&quot;https://q.bstatic.com/favicon.ico&quot;,&quot;https://r.bstatic.com/favicon.ico&quot;,&quot;https://www.google-analytics.com/analytics.js&quot;]"
    data-preload-assets-onload="false" id="b2hotelPage"
    class="bookings2 b2 hotel vi lang_is_ltr header_reshuffle no_bg_img nobg user_center app_user_center sb_gradient_border b-sprite-3 bigblue_std_sm bigblue_std_lg iconfont_is_loading  hp_wishlists_bo_2 a11y-facilities-contrast system-font iq-x-bar iq-x-bar-new ">
    <div id="top" class="" role="banner">
        <div class="header-wrapper">
            <a class="js-header__logo "
                href="/homestay"
                style="text-decoration: none;">
                <img id="logo_no_globe_new_logo" style="width: 100px" src="{!! URL::asset('colombo.vn_booking_files') !!}/logo-w39.png">
            </a>
            <div id="user_form" class="ticker_space smaller_booking_nr_login user_center_bar">
                <ul class="user_center_nav">
                                                            @if(!empty(Session::get('username_id')))
                                                            <li data-priority="3" class="user_center_option uc_account uc_account-center-item">
                                                                <a href="{!! route('frontend.userDetail') !!}" target="_blank" data-ga-track="click|Top nav|Click - List your Property|index"class="popover_trigger signin_cta  profile_menu_trigger  js-disable-popover  remove_hover_sign_in_btn  js-header-login-link header_link_login">
                                                                    <div class="sign_in_wrapper sign_in_wrapper-add-property">
                                                                        <span>
                                                                      Xin chào :  {!! Session::get('fullname') !!}
                                                                        </span>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li class="user_center_option uc_account uc_account-center-item">
                                                              <a class="popover_trigger signin_cta  profile_menu_trigger  js-disable-popover  remove_hover_sign_in_btn  js-header-login-link header_link_login" href="{!! route('frontend.logout') !!}"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng xuất</span>
                                                              </a>
                                                            </li>
                                                            @else
                                                            <li class="user_center_option uc_account uc_account-center-item">
                                                              <a class="popover_trigger signin_cta  profile_menu_trigger  js-disable-popover  remove_hover_sign_in_btn  js-header-login-link header_link_login" href="/homestay/dang-nhap" ><i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng nhập</span>
                                                              </a>
                                                            </li>
                                                            <li class="user_center_option uc_account uc_account-center-item">
                                                              <a class="popover_trigger signin_cta  profile_menu_trigger  js-disable-popover  remove_hover_sign_in_btn  js-header-login-link header_link_login" href="/homestay/dang-ky" >
                                                                <i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng ký</span>
                                                              </a>
                                                            </li>
                                                           @endif
                                                        </ul>
            </div>
        </div>
    </div>
    <div id="bodyconstraint" class="  bodyconstraint_increased-min-width  ">
        <div id="bodyconstraint-inner">
            <div id="subheader-wrap" class="property_right_cta_usp_block_active " style="">
                <nav id="breadcrumb" class="bui-breadcrumb" role="navigation" aria-label="Bạn đang ở đây"
                    data-et-click="IZALOLOLOCDOHJPBJXBHAPFPMdFO:1 customGoal:IZALOLOLOCDOHJPBJXBHAPFPMdFO:1">
                    <ol class=" bui-breadcrumb__list bui-inline-container hp-breadcrump__wrapper "
                        vocab="http://schema.org/" typeof="BreadcrumbList">
                        <li property="itemListElement" typeof="ListItem"
                            data-google-track="Click/Breadcrumb/hotel -&gt; home/1"
                            class="bui-breadcrumb__item hp-breadcrumb__item">
                            <div class="bui-breadcrumb__text">
                                <a property="item" typeof="WebPage"
                                    href="/homestay"
                                    class=" bui-link bui-link--primary bui_breadcrumb__link ">
                                    Trang chủ
                                </a>
                                <meta property="position" content="1">
                                <meta property="name" content="Allstay.com">
                            </div>
                        </li>
                        <li property="itemListElement" typeof="ListItem"
                            data-google-track="Click/Breadcrumb/hotel -&gt; city/6"
                            class="bui-breadcrumb__item hp-breadcrumb__item">
                            <svg class="bk-icon -iconset-navarrow_right bui-breadcrumb__icon" height="16"
                                role="presentation" width="16" viewBox="0 0 128 128">
                                <path
                                    d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z">
                                </path>
                            </svg>
                            <div class="bui-breadcrumb__text">
                                <a property="item" typeof="WebPage"
                                    href="#"
                                    class=" bui-link bui-link--primary bui_breadcrumb__link ">
                                    Homestay
                                </a>
                                <meta property="position" content="6">
                                <meta property="name" content="Căn hộ">
                            </div>
                        </li>
                        <li property="itemListElement" typeof="ListItem"
                            data-google-track="Click/Breadcrumb/hotel -&gt; district/7"
                            class="bui-breadcrumb__item hp-breadcrumb__item">
                            <svg class="bk-icon -iconset-navarrow_right bui-breadcrumb__icon" height="16"
                                role="presentation" width="16" viewBox="0 0 128 128">
                                <path
                                    d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z">
                                </path>
                            </svg>
                            <div class="bui-breadcrumb__text">
                                <a property="item" typeof="WebPage"
                                    href="#"
                                    class=" bui-link bui-link--primary bui_breadcrumb__link " title="10. Gare du Nord - Gare de l&#39;Est homestay ">
                                    {!! $Hotel['name'] !!}
                                </a>
                                <meta property="position" content="7">
                                <meta property="name" content="10. Gare du Nord - Gare de l&#39;Est">
                            </div>
                        </li>
                    </ol>
                </nav>
            </div>
            <div data-block-id="header_survey">
            </div>
            <div id="hotelTmpl">
                <div id="basiclayout">
                    <div id="right" class="rlt-right" role="main">
                        <div class="hp_nav_bar_wrapper_placeholder"></div>
                        <div class="hp_nav_bar_wrapper hp-nav-bottom-border">
                            <ul class="hp_nav_bar boldify_hp_nav">
                                <li class="hp_nav_bar_item">
                                    <a href="#"
                                        class="hp_nav_availability_link nav-link-room--bold">
                                        Thông tin homestay &amp; giá
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="wrap-hotelpage-top" class="wrap-hotelpage-top">
                            <div class="hp__hotel-title">
                                <h2 class="hp__hotel-name" id="hp_hotel_name">
                                    <span class="hp__hotel-type-badge">Homestay</span>
                                    {!! $Hotel['name'] !!}
                                </h2>
                                <br/>
                                <span class="hp__hotel_ratings">
                                    <span class="hp__hotel_ratings__stars nowrap">
                                        <span class="">
                                            <span aria-hidden="true" class="facility-badge__wrapper">
                                                <span>
                                                    <span class="facility-badge__tooltip-title">
                                                        Phù hợp cho  {!! $Hotel['qtycustomeytoithieu'] ? $Hotel['qtycustomeytoithieu']: 0 !!} - {!! $Hotel['qtycustomeytoida'] !!}khách</span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                </span>
                            </div>
                            <a href="#"
                                class="fn " id="hp_hotel_name_reviews" style="display:none">
                                {!! $Hotel['name'] !!}
                            </a>
                            <p class="address address_clean" id="showMap2">
                                <a id="hotel_address"
                                    class="jq_tooltip map_icon_link show_map show_map_with_endorsements"
                                    href="#"
                                    data-coords="2.34979404,48.87755149" data-atlas-latlng="48.87755149,2.34979404"
                                    data-atlas-bbox="48.8595860713521,2.32242689396948,48.8955169044983,2.37716117719434"
                                    data-source="top_link" data-width="300"
                                    title="The Residence - Luxury 4 Bedroom Paris Center 3, Paris - Kiểm tra vị trí"
                                    data-node_tt_id="show_map_endorsements_tooltip" style="white-space:nowrap"
                                    aria-hidden="true">
                                    <span class="show_map_icon"></span>
                                </a>
                                <span class="hp_address_subtitle js-hp_address_subtitle jq_tooltip" rel="14"
                                    data-source="top_link" data-coords=","
                                    data-bbox="2.32242689396948,48.8595860713521,2.37716117719434,48.8955169044983"
                                    data-node_tt_id="location_score_tooltip" data-width="350" title="">
                                    {!! $Hotel['address'] !!}
                                </span>
                            </p>
                        </div>
                        <div style="clear: both;"></div>
                        <div class="hotelchars blockdisplay fbblock pretty_headers hp-consistent-vertical-rhythm"
                            data-tab="main" id="blockdisplay1">
                            <div id="hotel_main_content"
                                class="nha_large_photo_main_content nha_large_photo_extra_height hp_gallery_buttons_redesign hp_gallery_buttons_redesign_var2">
                                <div class="gallery-side-reviews-wrapper">
                                    <div class="clearfix bh-photo-grid fix-score-hover-opacity">
                                        <div aria-hidden="true">
                                            <a data-id="143347155"
                                                class="bh-photo-grid-item bh-photo-grid-photo1 active-image "
                                                style="background-image: url({!! URL::asset('public/img/'.$Hotel['avatar']) !!});width: 100%"
                                                onclick="return false;" title="Thư viện ảnh của chỗ nghỉ này ">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="hp_hotel_description_hightlights_wrapper ">
                                    <!-- <div class="hotel_description_wrapper_exp hp-description">
                                        <div class="hp_desc_important_facilities clearfix "
                                            data-et-view="eWffIEcPeZVIYEAKSFdBSSfbXGBbLPNBRUDKe:1">
                                            <h3 class="hp-description-sub-header">
                                                Các tiện nghi được ưa chuộng nhất
                                            </h3>
                                            <div class="important_facility  "
                                                data-name-en="Free WiFi Internet Access Included">
                                                <svg class="bk-icon -iconset-wifi hp__important_facility_icon"
                                                    height="20" width="20" viewBox="0 0 128 128">
                                                    <circle cx="64" cy="100" r="12"></circle>
                                                    <path
                                                        d="M118.3 32.7A94.9 94.9 0 0 0 64 16 94.9 94.9 0 0 0 9.7 32.7a4 4 0 1 0 4.6 6.6A87 87 0 0 1 64 24a87 87 0 0 1 49.7 15.3 4 4 0 1 0 4.6-6.6zM87.7 68.4a54.9 54.9 0 0 0-47.4 0 4 4 0 0 0 3.4 7.2 47 47 0 0 1 40.6 0 4 4 0 0 0 3.4-7.2z">
                                                    </path>
                                                    <path
                                                        d="M104 50.5a81.2 81.2 0 0 0-80 0 4 4 0 0 0 4 7 73.2 73.2 0 0 1 72 0 4 4 0 0 0 4-7z">
                                                    </path>
                                                </svg>
                                                Wi-Fi miễn phí
                                            </div>
                                            <div class="important_facility  " data-name-en="Non Smoking Rooms">
                                                <svg class="bk-icon -iconset-nosmoking hp__important_facility_icon"
                                                    height="20" width="20" viewBox="0 0 128 128">
                                                    <path
                                                        d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 0 1-36.6-79l31 31H28v8h38.3L95 100.6A47.8 47.8 0 0 1 64 112zm36.6-17l-23-23H84v-8H69.7L33 27.4A48 48 0 0 1 100.6 95zM92 64h8v8h-8zm0-10c0-7.7-5.9-14-13.2-14H78a2 2 0 0 1-2-2 10 10 0 0 0-10-10h-8a2 2 0 0 1 0-4h8a14 14 0 0 1 13.8 12c9 .6 16.2 8.4 16.2 18a2 2 0 0 1-4 0zm-8 0a2 2 0 0 1-4 0 2 2 0 0 0-2-2h-3a15 15 0 0 1-15-15 2 2 0 0 1 4 0 11 11 0 0 0 11 11h3a6 6 0 0 1 6 6z">
                                                    </path>
                                                </svg>
                                                Phòng không hút thuốc
                                            </div>
                                            <div class="important_facility  " data-name-en="Heating">
                                                <svg class="bk-icon -iconset-heater hp__important_facility_icon"
                                                    height="20" width="20" viewBox="0 0 128 128">
                                                    <path
                                                        d="M34.8 19.7a4 4 0 0 1 0-4.8l4-5.3a4 4 0 1 1 6.4 4.8l-2.2 3 2.2 2.9a4 4 0 0 1 0 4.8l-4 5.3a4 4 0 1 1-6.4-4.8l2.2-3zm26.2 3l-2.2 2.9a4 4 0 0 0 6.4 4.8l4-5.3a4 4 0 0 0 0-4.8l-2.2-3 2.2-2.9a4 4 0 1 0-6.4-4.8l-4 5.3a4 4 0 0 0 0 4.8zm24 0l-2.2 2.9a4 4 0 0 0 6.4 4.8l4-5.3a4 4 0 0 0 0-4.8l-2.2-3 2.2-2.9a4 4 0 1 0-6.4-4.8l-4 5.3a4 4 0 0 0 0 4.8zm35 28.5V108a12 12 0 0 1-23.3 4h-9.4a12 12 0 0 1-22.6 0h-9.4a12 12 0 0 1-22.6 0H24v8H8v-8h8V47H8v-8h16v8.2h8.7a12 12 0 0 1 22.6 0h9.4a12 12 0 0 1 22.6 0h9.4a12 12 0 0 1 23.3 4zm-32 4V104h8V55.2zm-32 0V104h8V55.2zM24 104h8V55.2h-8zm24-52.8a4 4 0 1 0-8 0V108a4 4 0 0 0 8 0zM80 108V51.2a4 4 0 1 0-8 0V108a4 4 0 0 0 8 0zm32-56.8a4 4 0 1 0-8 0V108a4 4 0 0 0 8 0z">
                                                    </path>
                                                </svg>
                                                Hệ thống sưởi
                                            </div>
                                        </div>
                                    </div> -->
                                    <div class="property_hightlights_wrapper " style="width: 100%">
                                        <div class="property-highlights ph-icon-fill-color">
                                        <form action="{!! route('rooms.store') !!}" method="POST" enctype="multipart/form-data">
                                            {!! csrf_field() !!}
                                            <h3 class="ph-header">
                                                Khách yêu thích chỗ này vì...
                                            </h3>
                                            <div class="ph-section">
                                                <div class="ph-content hp-ph-freebie droom_hp_freebie ">
                                                    <p class="ph-item contextual-reviews-trigger">
                                                        <span class="ph-icon-container ph-icon-container-wifi"
                                                            aria-hidden="true">
                                                            <i class="ph-icon ph-icon-wifi bicon-">뀄</i>
                                                        </span>
                                                        <span class="ph-item-copy ">
                                                            <span class="ph-item-copy-wifi">WiFi miễn phí</span>
                                                            <br>
                                                            <span
                                                                class="ph-item-subtitle--contrast ph-item-subtitle-wifi">
                                                                Khách thường xuyên đánh giá kết nối WiFi tuyệt vời
                                                            </span>
                                                        </span>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="ph-section">
                                                <div class="ph-content ">
                                                    <p class="ph-item contextual-reviews-trigger">
                                                        <span class="ph-icon-container ph-icon-container-shopping"
                                                            aria-hidden="true">
                                                            <i class="ph-icon ph-icon-shopping bicon-">넮</i>
                                                        </span>
                                                        <span class="ph-item-copy ">
                                                            <span class="ph-item-copy-shopping">Khu vực tuyệt vời dành
                                                                cho mua sắm!</span>
                                                        </span>
                                                    </p>
                                                </div>
                                            </div>
                                            @if(Session::get('username_id'))
                                            <div class="ph-section">
                                                <div class="ph-content ">
                                                    <p class="ph-item contextual-reviews-trigger">
                                                        <span class="ph-icon-container ph-icon-container-shopping"
                                                            aria-hidden="true">
                                                            Ngày vào ở
                                                        </span>
                                                        <input class="ph-item-copy " type="date" name="date"/>
                                                        <input type="hidden" name="id" value="{!! $Hotel['id']!!}">
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="ph-section">
                                                <div class="ph-content ">
                                                    <p class="ph-item contextual-reviews-trigger">
                                                        <span class="ph-icon-container ph-icon-container-shopping"
                                                            aria-hidden="true">
                                                            Ngày trả phòng
                                                        </span>
                                                        <input class="ph-item-copy " type="date" name="leave_date"/>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="ph-section">
                                                <div class="ph-content ">
                                                    <p class="ph-item contextual-reviews-trigger">
                                                        <span class="ph-icon-container ph-icon-container-shopping"
                                                            aria-hidden="true">
                                                            Số người
                                                        </span>
                                                        <input class="ph-item-copy " type="number" name="count" step="1"/>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="ph-footer">
                                                <button
                                                    class="b-button b-button_primary call_to_action--wide js-ph__cta"
                                                    type="submit" data-title="Đặt ngay căn hộ này"
                                                    onclick=" return confirm('Bạn có chắc chẵn muốn đặt phòng không ?', 'Thông báo');">
                                                    <span class="b-button__text">
                                                        Đặt ngay
                                                    </span>
                                                </button>
                                            </div>
                                        @endif
                                        </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div id="hp_availability_style_changes" class="var-1 has-no-dates ">
                                    <div class="bui-alert bui-alert--success bui-alert--large bui-u-bleed@small lock-price-banner lock-price-banner--no-button"
                                        role="status">
                                        <span class="icon--hint bui-alert__icon" role="presentation">
                                            <svg class="bk-icon -iconset-lock_open bui-banner__icon" fill="#0AB21B"
                                                height="32" width="32" viewBox="0 0 128 128">
                                                <path
                                                    d="M104 48H44V36a20 20 0 0 1 36.7-11 4 4 0 1 0 6.6-4.5A28 28 0 0 0 36 36v12H24a8 8 0 0 0-8 8v56a8 8 0 0 0 8 8h80a8 8 0 0 0 8-8V56a8 8 0 0 0-8-8zM64 96a12 12 0 1 1 12-12 12 12 0 0 1-12 12z">
                                                </path>
                                            </svg>
                                        </span>
                                        <div class="bui-alert__description">
                                            <span class="bui-alert__title">
                                                Giữ giá tốt cho kỳ nghỉ sắp tới của bạn
                                            </span>
                                            <p class="bui-alert__text">
                                                Xác nhận tức thời và hủy MIỄN PHÍ đối với hầu hết tất cả các phòng!
                                            </p>
                                        </div>
                                    </div>
                                    <div style="height:1px; overflow:hidden;"></div>

                                </div>

                                <section id="host-info" class="host-info">
                                    <header class="host-info__header">
                                        <h2 class="hp-section-header js-host-info__title">
                                            Thông tin về homestay
                                        </h2>
                                    </header>
                                    <div>
                                        <div>
                                            <div class="hops__personalised-description js-host-info__description"
                                                dir="ltr">
                                               {!! $Hotel['content'] !!}
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <div data-component="hotel/contact-host"></div>
                                <svg class="bk-icon -iconset-loading" height="128" style="display:none;" width="128"
                                    viewBox="0 0 128 128">
                                    <g id="_8x-d7fe" data-name="8x">
                                        <g id="loading-9c20">
                                            <path class="cls-1"
                                                d="M64,8h0a4.67,4.67,0,0,1,4.67,4.67V31.33A4.67,4.67,0,0,1,64,36h0a4.67,4.67,0,0,1-4.67-4.67V12.67A4.67,4.67,0,0,1,64,8Z">
                                            </path>
                                            <path class="cls-2"
                                                d="M92,15.48h0a4.67,4.67,0,0,1,1.71,6.37L84.37,38A4.67,4.67,0,0,1,78,39.72h0a4.67,4.67,0,0,1-1.71-6.37l9.33-16.17A4.67,4.67,0,0,1,92,15.48Z">
                                            </path>
                                            <path class="cls-3"
                                                d="M112.52,36h0a4.67,4.67,0,0,1-1.71,6.37L94.65,51.71A4.67,4.67,0,0,1,88.28,50h0A4.67,4.67,0,0,1,90,43.63l16.17-9.33A4.67,4.67,0,0,1,112.52,36Z">
                                            </path>
                                            <path class="cls-4"
                                                d="M120,64h0a4.67,4.67,0,0,1-4.67,4.67H96.67A4.67,4.67,0,0,1,92,64h0a4.67,4.67,0,0,1,4.67-4.67h18.67A4.67,4.67,0,0,1,120,64Z">
                                            </path>
                                            <path class="cls-5"
                                                d="M112.52,92h0a4.67,4.67,0,0,1-6.37,1.71L90,84.37A4.67,4.67,0,0,1,88.28,78h0a4.67,4.67,0,0,1,6.37-1.71l16.17,9.33A4.67,4.67,0,0,1,112.52,92Z">
                                            </path>
                                            <path class="cls-6"
                                                d="M92,112.52h0a4.67,4.67,0,0,1-6.37-1.71L76.29,94.65A4.67,4.67,0,0,1,78,88.28h0A4.67,4.67,0,0,1,84.37,90l9.33,16.17A4.67,4.67,0,0,1,92,112.52Z">
                                            </path>
                                            <path class="cls-7"
                                                d="M64,120h0a4.67,4.67,0,0,1-4.67-4.67V96.67A4.67,4.67,0,0,1,64,92h0a4.67,4.67,0,0,1,4.67,4.67v18.67A4.67,4.67,0,0,1,64,120Z">
                                            </path>
                                            <path class="cls-8"
                                                d="M36,112.52h0a4.67,4.67,0,0,1-1.71-6.37L43.63,90A4.67,4.67,0,0,1,50,88.28h0a4.67,4.67,0,0,1,1.71,6.37l-9.33,16.17A4.67,4.67,0,0,1,36,112.52Z">
                                            </path>
                                            <path class="cls-9"
                                                d="M15.48,92h0a4.67,4.67,0,0,1,1.71-6.37l16.17-9.33A4.67,4.67,0,0,1,39.72,78h0A4.67,4.67,0,0,1,38,84.37L21.85,93.71A4.67,4.67,0,0,1,15.48,92Z">
                                            </path>
                                            <path class="cls-10"
                                                d="M8,64H8a4.67,4.67,0,0,1,4.67-4.67H31.33A4.67,4.67,0,0,1,36,64h0a4.67,4.67,0,0,1-4.67,4.67H12.67A4.67,4.67,0,0,1,8,64Z">
                                            </path>
                                            <path class="cls-11"
                                                d="M15.48,36h0a4.67,4.67,0,0,1,6.37-1.71L38,43.63A4.67,4.67,0,0,1,39.72,50h0a4.67,4.67,0,0,1-6.37,1.71L17.18,42.37A4.67,4.67,0,0,1,15.48,36Z">
                                            </path>
                                            <path class="cls-12"
                                                d="M36,15.48h0a4.67,4.67,0,0,1,6.37,1.71l9.33,16.17A4.67,4.67,0,0,1,50,39.72h0A4.67,4.67,0,0,1,43.63,38L34.29,21.85A4.67,4.67,0,0,1,36,15.48Z">
                                            </path>
                                        </g>
                                    </g>
                                </svg>
                                <svg class="bk-icon -iconset-info_sign" height="128" style="display:none;" width="128"
                                    viewBox="0 0 128 128">
                                    <path
                                        d="M49.4 85l4.2-17.2c.7-2.7.8-3.8 0-3.8a29 29 0 0 0-8.8 3.8l-1.8-3A48 48 0 0 1 66.7 53c3.7 0 4.3 4.3 2.5 11l-5 18c-.7 3.3-.3 4.3.5 4.3a19 19 0 0 0 8.2-4L75 85c-8.6 8.7-18.2 12-21.8 12s-6.4-2.3-3.8-12zM75 36a9.2 9.2 0 0 1-9.2 9c-4.4 0-7-2.7-6.8-7a9 9 0 0 1 9.1-9c4.6 0 6.9 3.2 6.9 7z">
                                    </path>
                                    <path
                                        d="M62 16a48 48 0 1 1-48 48 48 48 0 0 1 48-48m0-8a56 56 0 1 0 56 56A56 56 0 0 0 62 8z">
                                    </path>
                                </svg>
                                <div data-js-session-unrc="0" style="position:absolute;width:0;height:0;opacity:0;">
                                </div>
                                <div class="facility-block-wrapper facilities_free_color "
                                    data-et-view="eWffIEcZYVeHVEMMcQHePeHOcTTC:2 eWffIEcZYVeHVEMMcQHePeHOcTTC:3 eWffIEcPeZVIYEAKSFdBSSfbXGBbLPNBRUDKe:1">
                                    <div class="facilities-sliding-keep">
                                    </div>
                                    <h2 class="facilitiesChecklist hp-section-header--with-cta clearfix">
                                        <a name="HotelFacilities" id="HotelFacilities">
                                            <div
                                                data-et-view="NAFLeNIJDSJIYSaPOXGBbLPNVLBRe:1 NAFLeNIJDSJIYSaPOXGBbLPNVLBRe:2">
                                            </div>
                                            Các tiện nghi
                                            <span data-et-mouseenter="customGoal:NAFLeNIJDSJIYSaPOXGBbLPNVLBRe:1"
                                                data-et-click="customGoal:NAFLeNIJDSJIYSaPOXGBbLPNVLBRe:2">
                                                <span class="bh-quality-bars bh-quality-bars--medium "
                                                    data-bui-component="Tooltip"
                                                    title="Được Allstay.com dùng cho &lt;strong&gt;những chỗ nghỉ kiểu nhà và căn hộ&lt;/strong&gt;. Thang đánh giá này đại diện cho chất lượng dựa trên các tiêu chí như tiện nghi, diện tích, vị trí và dịch vụ."
                                                    data-tooltip-position="bottom"
                                                    data-et-mouseenter="customGoal:NAFQOeaLQeUYCSJabJNCRbQfXJEUXPNMWe:4">
                                                    <svg class="bk-icon -iconset-square_rating" fill="#FEBB02"
                                                        height="16" width="16" viewBox="0 0 128 128">
                                                        <path
                                                            d="M104 8H24A16 16 0 0 0 8 24v96h96a16 16 0 0 0 16-16V24a16 16 0 0 0-16-16zM64 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z">
                                                        </path>
                                                    </svg><svg class="bk-icon -iconset-square_rating" fill="#FEBB02"
                                                        height="16" width="16" viewBox="0 0 128 128">
                                                        <path
                                                            d="M104 8H24A16 16 0 0 0 8 24v96h96a16 16 0 0 0 16-16V24a16 16 0 0 0-16-16zM64 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z">
                                                        </path>
                                                    </svg><svg class="bk-icon -iconset-square_rating" fill="#FEBB02"
                                                        height="16" width="16" viewBox="0 0 128 128">
                                                        <path
                                                            d="M104 8H24A16 16 0 0 0 8 24v96h96a16 16 0 0 0 16-16V24a16 16 0 0 0-16-16zM64 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z">
                                                        </path>
                                                    </svg><svg class="bk-icon -iconset-square_rating" fill="#FEBB02"
                                                        height="16" width="16" viewBox="0 0 128 128">
                                                        <path
                                                            d="M104 8H24A16 16 0 0 0 8 24v96h96a16 16 0 0 0 16-16V24a16 16 0 0 0-16-16zM64 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z">
                                                        </path>
                                                    </svg>
                                                </span>
                                            </span>
                                        </a>
                                    </h2>

                                    <div class="facilitiesChecklist">
                                        <div class="facilitiesChecklistSection" data-section-id="16">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-parking_sign hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path d="M70.8 44H58v16h12.8a8 8 0 0 0 0-16z"></path>
                                                        <path
                                                            d="M108 8H20A12 12 0 0 0 8 20v88a12 12 0 0 0 12 12h88a12 12 0 0 0 12-12V20a12 12 0 0 0-12-12zM70 76H58v24H42V28h28a24 24 0 0 1 0 48z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Chỗ đậu xe
                                            </h5>
                                            <ul>
                                                <li class="policy">
                                                    <p>
                                                        Có chỗ đậu xe
                                                    </p>
                                                </li>
                                                <li>
                                                    <span data-name-en="street parking" class="    ">
                                                        Chỗ đậu xe ngoài đường
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="11">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-wifi hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <circle cx="64" cy="100" r="12"></circle>
                                                        <path
                                                            d="M118.3 32.7A94.9 94.9 0 0 0 64 16 94.9 94.9 0 0 0 9.7 32.7a4 4 0 1 0 4.6 6.6A87 87 0 0 1 64 24a87 87 0 0 1 49.7 15.3 4 4 0 1 0 4.6-6.6zM87.7 68.4a54.9 54.9 0 0 0-47.4 0 4 4 0 0 0 3.4 7.2 47 47 0 0 1 40.6 0 4 4 0 0 0 3.4-7.2z">
                                                        </path>
                                                        <path
                                                            d="M104 50.5a81.2 81.2 0 0 0-80 0 4 4 0 0 0 4 7 73.2 73.2 0 0 1 72 0 4 4 0 0 0 4-7z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Internet
                                            </h5>
                                            <ul>
                                                <li class="policy">
                                                    <p>
                                                        <span class="bui-badge bui_fill_constructive">Miễn phí!</span>
                                                        Wi-fi có ở toàn bộ homestay và miễn phí.
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="12">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-oven hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M8 40v76a4 4 0 0 0 4 4h104a4 4 0 0 0 4-4V40zm96 56H24V72h80zm0-32H24v-8h80zm12-56H12a4 4 0 0 0-4 4v20h112V12a4 4 0 0 0-4-4zM92 26a6 6 0 1 1 6-6 6 6 0 0 1-6 6zm16 0a6 6 0 1 1 6-6 6 6 0 0 1-6 6z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Nhà bếp
                                            </h5>
                                            <p class="fac-sub">Ăn bất cứ khi nào bạn muốn</p>
                                            <ul>
                                                <li>
                                                    <span data-name-en="Wine glasses" class="    ">
                                                        Ly rượu
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Dining table" class="    ">
                                                        Bàn ăn
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Coffee Machine" class="    ">
                                                        Máy pha Cà phê
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Cleaning products" class="    ">
                                                        Sản phẩm lau rửa
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Stove" class="    ">
                                                        Bếp nấu
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Oven" class="    ">
                                                        Lò nướng
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Tumble dryer (machine)" class="    ">
                                                        Máy sấy quần áo
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Kitchenware" class="    ">
                                                        Đồ bếp
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Electric Kettle" class="    ">
                                                        Ấm đun nước điện
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Washing machine" class="    ">
                                                        Máy giặt
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Dishwasher" class="    ">
                                                        Máy rửa bát
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Microwave" class="    ">
                                                        Lò vi sóng
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Refrigerator" class="    ">
                                                        Tủ lạnh
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="17">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-bed hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M120 96v11.8a4.1 4.1 0 0 1-3.6 4.2 4 4 0 0 1-4.4-4v-4H16v3.8a4.1 4.1 0 0 1-3.6 4.2 4 4 0 0 1-4.4-4V96a8 8 0 0 1 8-8h96a8 8 0 0 1 8 8zm-8-16a16 16 0 0 0-16-16H32a16 16 0 0 0-16 16v4h96zM24 36a4 4 0 0 1 4-4h72a4 4 0 0 1 4 4v16l8 8V36a12 12 0 0 0-12-12H28a12 12 0 0 0-12 12v24l8-8z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Phòng ngủ
                                            </h5>
                                            <ul>
                                                <li>
                                                    <span data-name-en="Wardrobe/Closet" class="    ">
                                                        Tủ hoặc phòng để quần áo
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Dressing room" class="    ">
                                                        Phòng thay quần áo
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="5">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-bath hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M32 44a8 8 0 1 0-8-8 8 8 0 0 0 8 8zm80 41.9V94c0 7.7-5.3 14.4-12 17l2.7 2a4.2 4.2 0 0 1 .3 5.7 4 4 0 0 1-5.8.1L90 112H38l-7 6.7a4.2 4.2 0 0 1-5.7.3 4 4 0 0 1-.1-5.8L28 111c-6.8-2.6-12-9.3-12-17v-8.1A16.2 16.2 0 0 1 8 72a16 16 0 0 1 16-16h26a16.2 16.2 0 0 1 14-8 9.8 9.8 0 0 1 4 1 20 20 0 0 1 16-9 20 20 0 0 1 19.6 16c11.6 0 16.4 7.7 16.4 16 0 6.6-2.8 10.8-8 13.9zM32 52a16 16 0 1 1 16-16 16 16 0 0 1-16 16zm28-20a12 12 0 1 1 12-12 12 12 0 0 1-12 12zm0-8a4 4 0 1 0-4-4 4 4 0 0 0 4 4zm-5.3 40H24a8 8 0 1 0 0 16h80a8 8 0 0 0 0-16h-8s1-16-12-16a13.3 13.3 0 0 0-13 9 22 22 0 0 0-7-1c-7.8 0-9.3 8-9.3 8z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Phòng tắm
                                            </h5>
                                            <ul>
                                                <li>
                                                    <span data-name-en="Towels" class="    ">
                                                        Khăn tắm
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Hair Dryer" class="    ">
                                                        Máy sấy tóc
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Shower" class="    ">
                                                        Vòi sen
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="body soap" class="    ">
                                                        Xà phòng tắm
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="walk in shower" class="    ">
                                                        Phòng tắm đứng
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Toilet paper" class="    ">
                                                        Giấy vệ sinh
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Linen" class="    ">
                                                        Ra trải giường
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Additional Bathroom" class="    ">
                                                        Phòng tắm phụ
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Additional Toilet" class="    ">
                                                        Toilet phụ
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Bathroom" class="    ">
                                                        Phòng tắm riêng
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Toilet" class="    ">
                                                        Nhà vệ sinh
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="15">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-couch hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M120 44v44a8 8 0 0 1-8 8h-8v6a2 2 0 0 1-2 2H90a2 2 0 0 1-2-2v-6H40v6a2 2 0 0 1-2 2H26a2 2 0 0 1-2-2v-6h-8a8 8 0 0 1-8-8V44a4 4 0 0 1 8 0v28h96V44a4 4 0 0 1 8 0zm-60-4a8 8 0 0 0-8-8H32a8 8 0 0 0-8 8v24h36zm44 0a8 8 0 0 0-8-8H76a8 8 0 0 0-8 8v24h36z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Khu vực phòng khách
                                            </h5>
                                            <p class="fac-sub">Không gian để mọi người quây quần</p>
                                            <ul>
                                                <li>
                                                    <span data-name-en="Dining Area" class="    ">
                                                        Khu vực phòng ăn
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Sofa" class="    ">
                                                        Ghế sofa
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Seating area" class="    ">
                                                        Khu vực tiếp khách
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Desk" class="    ">
                                                        Bàn làm việc
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="6">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-screen hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M116 24H12a4 4 0 0 0-4 4v64a4 4 0 0 0 4 4h36v4a4 4 0 0 0 4 4h24a4 4 0 0 0 4-4v-4h36a4 4 0 0 0 4-4V28a4 4 0 0 0-4-4zm-5 64H16V32h95z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Truyền thông &amp; Công nghệ
                                            </h5>
                                            <p class="fac-sub">Hoạt đông giải trí cho mọi thành viên</p>
                                            <ul>
                                                <li>
                                                    <span data-name-en="Flat-screen TV" class="    ">
                                                        TV màn hình phẳng
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Cable channels" class="    ">
                                                        Truyền hình cáp
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Satellite Channels" class="    ">
                                                        Truyền hình vệ tinh
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="TV" class="    ">
                                                        TV
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="4">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-bed hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M120 96v11.8a4.1 4.1 0 0 1-3.6 4.2 4 4 0 0 1-4.4-4v-4H16v3.8a4.1 4.1 0 0 1-3.6 4.2 4 4 0 0 1-4.4-4V96a8 8 0 0 1 8-8h96a8 8 0 0 1 8 8zm-8-16a16 16 0 0 0-16-16H32a16 16 0 0 0-16 16v4h96zM24 36a4 4 0 0 1 4-4h72a4 4 0 0 1 4 4v16l8 8V36a12 12 0 0 0-12-12H28a12 12 0 0 0-12 12v24l8-8z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Tiện ích trong phòng
                                            </h5>
                                            <p class="fac-sub">Tăng sự thoải mái</p>
                                            <ul>
                                                <li>
                                                    <span data-name-en="Fan" class="    ">
                                                        Quạt máy
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Clothing Iron" class="    ">
                                                        Bàn ủi
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="socket near the bed" class="    ">
                                                        Ổ điện gần giường
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Trash cans" class="    ">
                                                        Thùng rác
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Sofa bed" class="    ">
                                                        Giường sofa
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Clothes drying rack" class="    ">
                                                        Giá phơi quần áo
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Clothes Rack" class="    ">
                                                        Giá treo quần áo
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Wooden / Parquet floor" class="    ">
                                                        Sàn lát gỗ
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Ironing facilities" class="    ">
                                                        Tiện nghi ủi
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="-2">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-pawprint hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M61 34c0 9.9-6.3 18-14 18s-14-8.1-14-18 6.3-18 14-18 14 8.1 14 18zm20-18c-7.7 0-14 8.1-14 18s6.3 18 14 18 14-8.1 14-18-6.3-18-14-18zM16.5 47.4c-6.9 2.1-10.3 11-7.6 20S19.4 82.1 26.3 80c6.9-2.1 10.3-11 7.6-20S23.4 45.4 16.5 47.4zM94.2 60c-2.7 9 .7 18 7.6 20 6.9 2.1 14.6-3.6 17.3-12.5s-.7-18-7.6-20C104.6 45.4 96.9 51 94.2 60zM64 104c11.9 0 6.1 8 22 8 4.9-.2 10.9-5.3 11-16 .1-13.8-12.4-34-33-35-20.6 1-33.1 21.2-33 35 .1 10.7 6.1 15.8 11 16 15.9 0 10.1-8 22-8z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Vật nuôi
                                            </h5>
                                            <ul>
                                                <li class="policy">
                                                    <p>
                                                        Vật nuôi không được phép.
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="19">

                                            <ul>
                                                <li>
                                                    <span data-name-en="Upper floor reachable by stairs only"
                                                        class="    ">
                                                        Các tầng trên chỉ lên được bằng cầu thang
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="20">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-door_open hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M112 20v100h-8V20a4 4 0 0 0-4-4H28a4 4 0 0 0-4 4v100h-8V20A12 12 0 0 1 28 8h72a12 12 0 0 1 12 12zM48 32l48-8v96l-48-8zm8 48a4 4 0 0 0 8 0V64a4 4 0 0 0-8 0z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Đặc tính tòa nhà
                                            </h5>
                                            <ul>
                                                <li>
                                                    <span data-name-en="Private flat in block of flats" class="    ">
                                                        Căn hộ riêng trong tòa nhà
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Semi-detached" class="    ">
                                                        Song lập
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="9">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-tree hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M72 84.8V108a4 4 0 0 0 4 4h7.8a4.1 4.1 0 0 1 4.1 3.2A4 4 0 0 1 84 120H44a4 4 0 0 1-4-4.8 4.1 4.1 0 0 1 4.1-3.2H52a4 4 0 0 0 4-4V84.8a24 24 0 1 1-20.5-43.2 28.5 28.5 0 1 1 56.1-.4A24 24 0 1 1 72 84.8z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Ngoài trời &amp; Tầm nhìn
                                            </h5>
                                            <p class="fac-sub">Hãy tận hưởng tầm nhìn này nhé</p>
                                            <ul>
                                                <li>
                                                    <span data-name-en="Quiet street view" class="    ">
                                                        Hướng nhìn ra đường phố yên ắng
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Inner courtyard view" class="    ">
                                                        Hướng nhìn sân trong
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="City View" class="    ">
                                                        Nhìn ra thành phố
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="facilitiesChecklistSection" data-section-id="29">
                                            <h5 data-et-view="">
                                                <span class="facilityGroupIcon">
                                                    <svg class="bk-icon -iconset-snowflake hp__facility_group_icon"
                                                        fill="#383838" height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M89.6 44.6L94 28.3a4 4 0 0 1 4.9-2.9 4 4 0 0 1 2.8 5l-2.3 8.5 7.7-4.4a4 4 0 0 1 5.5 1.4 4 4 0 0 1-1.5 5.5l-7.7 4.4 8.6 2.4a4 4 0 0 1 2.8 4.9 4 4 0 0 1-4.9 2.8l-16.3-4.4-15.5 9a4 4 0 0 1-5.5-1.5 4 4 0 0 1 1.5-5.5zM53.9 74.5a4 4 0 0 0 1.4-5.5 4 4 0 0 0-5.4-1.5l-15.6 9L18 72.2a4 4 0 0 0-5 2.8 4 4 0 0 0 2.9 5l8.4 2.2-7.5 4.3a4 4 0 0 0-1.4 5.5 4 4 0 0 0 5.4 1.5l7.8-4.5-2.4 8.8a4 4 0 0 0 2.9 4.9 4 4 0 0 0 4.9-2.9l4.4-16.4zM60 32.2V50a4 4 0 0 0 4 4 4 4 0 0 0 4-4V32l11.9-11.9a4 4 0 0 0 0-5.6 4 4 0 0 0-5.7 0L68 20.7V12a4 4 0 0 0-4-4 4 4 0 0 0-4 4v8.9l-6.4-6.4a4 4 0 0 0-5.6 0 4 4 0 0 0 0 5.7zM114.8 75a4 4 0 0 0-4.9-2.8l-16.3 4.3-15.5-9a4 4 0 0 0-5.5 1.5 4 4 0 0 0 1.5 5.5l15.5 8.9 4.3 16.4a4 4 0 0 0 4.9 2.8 4 4 0 0 0 2.8-4.9L99.3 89l7.7 4.5a4 4 0 0 0 5.5-1.5 4 4 0 0 0-1.5-5.4l-7.6-4.4 8.6-2.3a4 4 0 0 0 2.8-4.9zM68 95.8V78a4 4 0 0 0-4-4 4 4 0 0 0-4 4v18l-11.9 11.9a4 4 0 0 0 0 5.6 4 4 0 0 0 5.7 0l6.2-6.2v8.7a4 4 0 0 0 4 4 4 4 0 0 0 4-4v-8.9l6.4 6.4a4 4 0 0 0 5.6 0 4 4 0 0 0 0-5.7zM13.2 53a4 4 0 0 0 4.8 2.8l16.3-4.3 15.5 9a4 4 0 0 0 5.5-1.5 4 4 0 0 0-1.4-5.5l-15.5-8.9-4.3-16.4a4 4 0 0 0-5-2.8 4 4 0 0 0-2.8 4.9l2.3 8.7-7.7-4.5a4 4 0 0 0-5.4 1.5 4 4 0 0 0 1.4 5.5l7.6 4.3-8.5 2.3a4 4 0 0 0-2.9 4.9z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                Các tiện nghi khác
                                            </h5>
                                            <ul>
                                                <li>
                                                    <span data-name-en="All Public and Private spaces non-smoking"
                                                        class="    ">
                                                        Cấm hút thuốc trong toàn bộ khuôn viên
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Heating" class="    ">
                                                        Hệ thống sưởi
                                                    </span>
                                                </li>
                                                <li>
                                                    <span data-name-en="Non Smoking Rooms" class="    ">
                                                        Phòng không hút thuốc
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div style="clear:left;"></div>
                                    </div>
                                </div> <!-- /.facility-block-wrapper -->
                                <div class="clearfix ">
                                </div>
                                <div class="hp-section-container" id="hp_small_print">
                                    <a id="b" name="important_info"></a>
                                    <div class="hp-section-header hp-section-header--with-cta clearfix">
                                        Đôi lời về homestay
                                    </div>
                                    <div id="hp_important_info_box" class="clearfix">
                                        <div class="imporant_info_highlight hp-section">
                                            <div class="description">
                                               {{ $Hotel['description']}}
                                            </div>
                                        </div>
                                        <div style="height:15px" class=" clearfix"></div>
                                    </div>
                                </div>
                                <div id="hp_policies_box"
                                    class="hp-policy-section u-clearfix hp-policy-section--title_icon">
                                    <div class="containh2" data-et-view="">
                                        <h2 class="hp-section-header--with-cta clearfix">
                                            <a href='/homestay/list'
                                                class="b-button b-button_primary hp-section-header__cta hp-scroll-up-to-dates"
                                                id="cta-policies" >
                                                <span class="b-button__text">Xem homestay khác</span>
                                        </a>
                                            Quy tắc chung
                                            <span class="hp-section-header__subtitle">
                                                {{ $Hotel['name']}} nhận yêu cầu đặc biệt -
                                                gửi yêu cầu trong bước kế tiếp!
                                            </span>
                                        </h2>
                                    </div>
                                    <div class="descriptionsContainer  clearfix   hp-section  hp-policies-block" style="font-size:14px; padding-top:0; padding-bottom:1.2em;" id="hotelPoliciesInc">
                                        <div class="description js-timebar-parent" id="checkin_policy">
                                            <p class="policy_name">
                                                <span class="policy_name_icon">
                                                    <svg class="bk-icon -experiments-calendar_checkin hp-policies-calendar-icon"
                                                        height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M112 16H96V8h-8v8H40V8h-8v8H16c-4.4 0-8 3.9-8 8.7v86.6c0 4.8 3.6 8.7 8 8.7h96c4.4 0 8-3.9 8-8.7V24.7c0-4.8-3.6-8.7-8-8.7zm0 95.3a1.1 1.1 0 0 1-.2.7H16.2a1.1 1.1 0 0 1-.2-.7V40h96zM32 84h12v12H32zm38-16H58V56h12zm0 28H58V84h12zm26 0H84V84h12zm0-28H84V56h12zM48 52H28v20h20zm-6 14h-8v-8h8z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                <span>
                                                    Nhận phòng
                                                </span>
                                            </p>
                                            <p>
                                                <span data-component="prc/timebar" class="u-display-block"
                                                    data-from="15:00" data-from-label="15:00" data-until="22:00"
                                                    data-until-label="22:00" data-caption=" 15:00 - 22:00">
                                                    15:00 - 22:00
                                                </span>
                                            </p>
                                            <p class="hp-checkin-extra">Trước đó bạn sẽ cần cho chỗ nghỉ biết giờ bạn sẽ
                                                đến nơi.</p>
                                        </div>
                                        <div class="description js-timebar-parent" id="checkout_policy">
                                            <p class="policy_name">
                                                <span class="policy_name_icon">
                                                    <svg class="bk-icon -experiments-calendar_checkout hp-policies-calendar-icon"
                                                        height="20" width="20" viewBox="0 0 128 128">
                                                        <path
                                                            d="M112 16H96V8h-8v8H40V8h-8v8H16c-4.4 0-8 3.9-8 8.7v86.6c0 4.8 3.6 8.7 8 8.7h96c4.4 0 8-3.9 8-8.7V24.7c0-4.8-3.6-8.7-8-8.7zm0 95.3a1.1 1.1 0 0 1-.2.7H16.2a1.1 1.1 0 0 1-.2-.7V40h96zM44 68H32V56h12zm0 28H32V84h12zm26-28H58V56h12zm0 28H58V84h12zm26-28H84V56h12zm4 12H80v20h20zm-6 14h-8v-8h8z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                <span>
                                                    Trả phòng
                                                </span>
                                            </p>
                                            <p>
                                                <span data-component="prc/timebar" class="u-display-block"
                                                    data-until="11:00" data-until-label="11:00" data-caption=" Đến 11:00">
                                                    Đến 11:00
                                                </span>
                                            </p>
                                            <div style="clear:both"></div>
                                        </div>
                                        <div id="cancellation_policy" class="description tracked">
                                            <a name="hotel_cancellation_policy"></a>
                                            <p class="policy_name">
                                                <span class="policy_name_icon">
                                                    <i class="bicon-infobold"></i>
                                                </span>
                                                <span>
                                                    Hủy đặt phòng/<br>
                                                    Trả trước
                                                </span>
                                            </p>
                                            <p>
                                                Các loại căn hộ khác nhau có thể có chính sách hủy đặt phòng và chính
                                                sách thanh toán trước không giống nhau.
                                            </p>
                                            <div style="clear:both"></div>
                                        </div>
                                        <div class="description description_smp-children-policy"
                                            id="smp_children_policy">
                                            <p class="policy_name">
                                                <span class="policy_name_icon">
                                                    <i class="bicon-user-family"></i>
                                                </span>
                                                <span>Trẻ em và giường</span>
                                            </p>
                                            <div class="general-child-policy">
                                                <p>Chỗ nghỉ chào đón trẻ em.</p>
                                            </div>
                                            <div class="policy-table-wrapper">
                                            </div>
                                            <div class="bed-allowance">
                                                <p>
                                                    Không có nôi (cũi)
                                                </p>
                                                <p>
                                                    Không có giường phụ còn trống
                                                </p>
                                            </div>
                                        </div>
                                        <div class="description hp_bp_payment_method">
                                            <p class="policy_name" aria-hidden="true">
                                                <span class="policy_name_icon">
                                                    <i class="bicon-doublesidecardblack"></i>
                                                </span>
                                                <span>
                                                    Thẻ được chấp nhận tại chỗ nghỉ này
                                                </span>
                                            </p>
                                            <p aria-label="Phương thức thanh toán và điều kiện được chấp nhận"
                                                class="payment_methods_overall" rel="300">
                                                <button role="img" tabindex="0"
                                                    class="payment_methods_readability ppd_payment_methods_readability creditcard americanexpress"
                                                    aria-label="americanexpress"></button>
                                                <button role="img" tabindex="0"
                                                    class="payment_methods_readability ppd_payment_methods_readability creditcard visa"
                                                    aria-label="visa"></button>
                                                <button role="img" tabindex="0"
                                                    class="payment_methods_readability ppd_payment_methods_readability creditcard euromastercard"
                                                    aria-label="euromastercard"></button>
                                            </p>
                                            <div style="clear:both"></div>
                                        </div>
                                        <hr>
                                        <div class="description description--house-rule">
                                            <p class="policy_name">
                                                <span class="policy_name_icon">
                                                    <svg class="bk-icon -iconset-nosmoking" height="20" width="20"
                                                        viewBox="0 0 128 128">
                                                        <path
                                                            d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 0 1-36.6-79l31 31H28v8h38.3L95 100.6A47.8 47.8 0 0 1 64 112zm36.6-17l-23-23H84v-8H69.7L33 27.4A48 48 0 0 1 100.6 95zM92 64h8v8h-8zm0-10c0-7.7-5.9-14-13.2-14H78a2 2 0 0 1-2-2 10 10 0 0 0-10-10h-8a2 2 0 0 1 0-4h8a14 14 0 0 1 13.8 12c9 .6 16.2 8.4 16.2 18a2 2 0 0 1-4 0zm-8 0a2 2 0 0 1-4 0 2 2 0 0 0-2-2h-3a15 15 0 0 1-15-15 2 2 0 0 1 4 0 11 11 0 0 0 11 11h3a6 6 0 0 1 6 6z">
                                                        </path>
                                                    </svg>
                                                </span>
                                                <span>Hút thuốc</span>
                                            </p>
                                            <p>Không cho phép hút thuốc.</p>
                                            <div style="clear:both"></div>
                                        </div>
                                        <div class="description description--house-rule">
                                            <p class="policy_name">
                                                <span class="policy_name_icon">
                                                    <i class="bicon-petfriendly"></i>
                                                </span>
                                                <span>Vật nuôi</span>
                                            </p>
                                            <p>
                                                Vật nuôi không được phép.
                                            </p>
                                            <div style="clear:both"></div>
                                        </div>
                                    </div>
                                    <div style="height:15px" class=" clearfix"></div>
                                </div>
                                <div class="hp-section-container" id="hp_small_print">
                                    <a id="b" name="important_info"></a>
                                    <div class="hp-section-header hp-section-header--with-cta clearfix">
                                        Ghi chú
                                    </div>
                                    <div id="hp_important_info_box" class="clearfix">
                                        <div class="imporant_info_highlight hp-section">
                                            <div class="description">
                                                Xin lưu ý rằng một ngày trước khi quý khách đến, chỗ nghỉ sẽ tiến hành
                                                ủy quyền trước khoản đặt cọc đảm bảo vào thẻ tín dụng của quý
                                                khách để chi trả cho mọi thiệt hại có thể phát sinh đối với căn hộ trong
                                                thời gian lưu trú.
                                                <br>
                                                <br>Thủ tục nhận phòng sẽ được gửi tới cho khách ngay sau khi đặt phòng.
                                                <p>Vui lòng thông báo trước cho  {{ $Hotel['name']}} về thời gian đến dự kiến của quý khách. Khách có thể sử
                                                    dụng ô Yêu cầu Đặc biệt khi đặt phòng hoặc liên lạc trực tiếp với
                                                    chỗ nghỉ qua các thông tin liên hệ được ghi trong xác nhận đặt
                                                    phòng.</p>
                                            </div>
                                        </div>
                                        <div style="height:15px" class=" clearfix"></div>
                                    </div>
                                </div>
                                <div class="description urt rooms_table_nodates rooms_table_noavailability"
                                        id="rooms_table" style="margin: 0;">
                                        <div style="height:1px; overflow:hidden;"></div>
                                        <table
                                            class="roomstable rt_no_dates dr_rt_no_dates js-dr_rt_no_dates __big-buttons rt_lightbox_enabled roomstable-no-dates-expanded"
                                            id="maxotel_rooms" cellspacing="0" border="2">
                                            <thead data-has="">
                                                <tr id="maxotel_table_header">
                                                    <th class="figure">
                                                        Tên người dùng
                                                    </th>
                                                    <th>Đánh giá</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($comments as $i)
                                                <tr class="odd">
                                                    <td class="occ_no_dates"
                                                        style="border-right: 1px solid #5bbaff; border-left: 0 none;">
                                                        {!! $i['name'] !!}
                                                    </td>
                                                    <td class="ftd roomType">
                                                      <p>{!! $i['content'] !!}</p>
                                                    </td>
                                                </tr>
                                                @endforeach
                                                <form action="{!! route('fe.hotels.comment') !!}" method="POST" enctype="multipart/form-data">
                                                {!! csrf_field() !!}
                                                <tr class="odd">
                                                    <td class="occ_no_dates"
                                                        style="border-right: 1px solid #5bbaff; border-left: 0 none;">
                                                        Thêm bình luận của bạn
                                                    </td>
                                                    <td class="ftd roomType">
                                                    <input name="id" type="hidden" value="{!! $Hotel['id'] !!}"/>
                                                    <textarea name="content" cols="40" rows="5" style="width: 100%"></textarea>
                                                    <br/>
                                                     <button>Thêm đánh giá</button>
                                                    </td>
                                                </tr>
                                                </form>
                                            </tbody>
                                        </table>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div id="left" class="rlt-left leftsmall" role="complementary">
                        <a id="hotel_sidebar_static_map" class="jq_tooltip map_static_zoom show_map map_static_hover jq_tooltip map_static_button_hoverstate maps-more-static-focus "
                        href="https://www.google.com/maps/place/{!! $Hotel['address']!!}"  target="_blank"
                            data-coords="2.34979404,48.87755149" data-atlas-latlng="48.87755149,2.34979404"
                            data-atlas-bbox="48.8595860713521,2.32242689396948,48.8955169044983,2.37716117719434"
                            style=" height:150px; background: url(https://maps.googleapis.com/maps/api/staticmap?format=png8&amp;zoom=13&amp;center=48.87755149,2.34979404&amp;size=264x150&amp;language=vi&amp;client=gme-booking&amp;channel=booking-frontend&amp;signature=HQAZUqo2Trj152jHmV-Z2g_DHCo=) center; "
                            data-source="map_thumbnail"
                            data-map-open-text="Quay lại chỗ nghỉ" aria-hidden="true">
                            <span class=" show_map_thumb_label  vpm-show_on_map" data-map-open-text="Quay lại chỗ nghỉ">
                                Hiển thị trên bản đồ
                            </span>
                            <span class="map-thumb__marker--current">
                                <svg class="marker-hotel" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 29">
                                    <ellipse class="shadow" fill="#000000" fill-opacity="0.24" cx="9" cy="27" rx="6"
                                        ry="2"></ellipse>
                                    <path class="pin"
                                        d="M9,27 C7,27 0,16.9704016 0,9 C2.28269391e-16,4.02943725 4.02943725,0 9,0 C13.9705627,0 18,4.02943725 18,9 C18,16.9704016 11,27 9,27 Z M9,13 C11.209139,13 13,11.209139 13,9 C13,6.790861 11.209139,5 9,5 C6.790861,5 5,6.790861 5,9 C5,11.209139 6.790861,13 9,13 Z">
                                    </path>
                                </svg>
                            </span>
                        </a>
                        <div class="hp_sidebar_usp_box hp-sidebar-block hp_sidebar-similar"
                            data-et-view="ZOOJeRYLfCBWaEdEJHaZFZMO:1">
                            <span class="hp-sidebar-similar_header">
                                Bạn thích chỗ nghỉ này, nhưng vẫn chưa chắc chắn?
                            </span>
                            <a class="b-button b-button_secondary b-button_small hp_sidebar-similar_button"
                                href="/homestay/list"
                                target="_blank">
                                Xem các chỗ nghỉ tương tự
                            </a>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div id="left2" class="rlt-left leftsmall">
                    </div>
                    <div id="right2" class="rlt-right"></div>
                    <div class="clear"></div>
                </div> <!-- /basiclayout -->
            </div>
        </div>
        <div class="slinks ">
        </div>
        <div id="footer_menu_track"
            class="footerconstraint cnd-onview-anchor footer_no_lang_track a11y_fix_footer_contrast_footerconstraint "
            role="contentinfo">
            <div id="booking-footer" class="footer-wrapper">
                <div id="footer_top_menu" class="footer-top-menu">
                    <div role="region" aria-label="Nhận ngay ứng dụng MIỄN PHÍ của Allstay.com"
                        class="local_info_bot footerconstraint-inner">
                        <div class="local_info_bot_inner">
                            <div class="footercopyright ">
                                <div class="whitebar">
                                    <div class="copyright_text">
                                        Web đặt homestay tốt nhất hiện nay.
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
    </div>
</body>
@jquery
@toastr_js
   @toastr_render
</html>
