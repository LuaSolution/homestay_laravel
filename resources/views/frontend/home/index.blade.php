@extends('frontend.base')
@section('content')
<div id="whole-page">
    <div id="page-header">
        <div id="module24" class="ModuleWrapper">
            <div class="home-vhv">
                <div id="column1-24" class="column1 container ">
                    <div class="foverlay"></div>
                    <div class="columns-widget row">
                        <div class="col-md-12">
                            <div id="module25" class="ModuleWrapper">
                                <div class="search-hotel clearfix" id="search25">
                                    <div class="title-search"><i class="fa fa-search" aria-hidden="true"></i> Tìm kiếm
                                        homestay</div>
                                    <div class="content-search">
                                        <form method="post" action="list">
                                            @csrf
                                            <div class="col-md-4 ">
                                                <div class="form-group">
                                                    <label>Từ khóa</label>
                                                    <input type="text" name="name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="form-group">
                                                    <label>Tỉnh, thành</label>
                                                    <select name="query" class="form-control">
                                                        <option></option>
                                                        @foreach($province_list as $item)
                                                        <option value="{!! $item['id'] !!}">{{$item['name']}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4 ">
                                                <div class="form-group">
                                                    <label>Tìm kiếm</label>
                                                    <input type="submit" class="btn btn-default btn-search"
                                                        value="Tìm homestay">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div id="module26" class="ModuleWrapper" modulerootid="1662227">
                                <nav id="menu26" class="navigation-menu-type-22">
                                    <div class="navbar navbar-default affix-home" style="margin-bottom:0">
                                        <div class="container">
                                            <div class="collapse navbar-collapse" id="bs-navbar-collapse-1">
                                                <div class="row1">
                                                    <ul class="nav navbar-nav  ">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <li class="uu-dai" data-id="1662228">
                                                                <div class="image-vhv">
                                                                    <img src="{!! URL::asset('colombo.vn_booking_files') !!}/e2175270a4c7e38ccb160c1760614bc9a672a250.jpg">
                                                                </div>
                                                                <div class="info-vhv">
                                                                    <a class="text-uppercase"
                                                                        href="#"
                                                                        title="Ưu đãi Lễ Phục Sinh"><span>Ưu đãi Lễ Phục
                                                                            Sinh</span></a>
                                                                    <div class="brief-vhv">
                                                                        <p>Lên kế hoạch cho chuyến đi tới với giảm giá tối thiểu 20% toàn cầu đến 6/5</p>
                                                                    </div>
                                                                    <a class="view-uu-dai"  href="#" title="Ưu đãi Lễ Phục Sinh"><span>Xem ưu đãi</span></a>
                                                                </div>
                                                            </li>
                                                        </div>

                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <li class="uu-dai" data-id="1662229">
                                                                <div class="image-vhv">
                                                                    <img src="{!! URL::asset('colombo.vn_booking_files') !!}/312c784f761fc4f1e315742e93b9fa10d96ea67d.jpg">
                                                                </div>
                                                                <div class="info-vhv">
                                                                    <a class="text-uppercase"
                                                                        href="#"
                                                                        title="Ưu Đãi Lớn Mùa Du Lịch"><span>Ưu Đãi Lớn Mùa Du Lịch</span></a>
                                                                    <div class="brief-vhv">
                                                                        <p>Lên kế hoạch kỳ nghỉ với giảm giá từ 15% cho lưu trú từ 1/6 đến 31/8</p>
                                                                    </div>
                                                                    <a class="view-uu-dai"
                                                                        href="#"
                                                                        title="Ưu Đãi Lớn Mùa Du Lịch"><span>Xem ưu  đãi</span></a>
                                                                </div>
                                                            </li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <style></style>
    </div>
    <div id="module28" class="ModuleWrapper">
        <div class="register-home-vhv">
            <div id="column1-28" class="column1 container ">
                <div class="foverlay"></div>
                <div class="columns-widget row">
                    <div class="col-md-12">
                        <div id="module29" class="ModuleWrapper">
                            <div class="register-email-home-vhv">
                                <div class="columns-widget columns6-6 ">
                                    <div class="row">
                                        <div class="col-left col-xs-12 col-md-6 col-sm-6">
                                            <div id="module30" class="ModuleWrapper">
                                                <div class="SnippetTextType7 grid-type3">
                                                    <div class="snippet-image">
                                                        <a href="#" title="Đăng chỗ nghỉ của bạn trên Allstay.com"><img
                                                                class="post-image" data-size-ratio="1:1"
                                                                src="{!! URL::asset('colombo.vn_booking_files') !!}/de597e4bff4d30882b22e2b5fb51d60cdebe432f.jpg"
                                                                onerror="this.src=&#39;/App/images/no-image-news.gif&#39;;"
                                                                alt="Đăng chỗ nghỉ của bạn trên Allstay.com"
                                                                itemprop="image"></a>
                                                    </div>
                                                    <div class="entry-content">
                                                        <h4 class="entry-title" itemprop="name"><a href="#"
                                                                title="Đăng chỗ nghỉ của bạn trên Allstay.com"
                                                                rel="bookmark">Đăng chỗ nghỉ của bạn trên
                                                                AllStay.com</a></h4>
                                                        <div class="entry-decs" itemprop="description">
                                                            <p>Đăng ký. Kiếm tiền. Khám phá đam mê.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-right col-xs-12 col-md-6 col-sm-6">
                                            <div class="panel panel-default frame564175037f8b9a474e8b4567 frameOption513a4663b6 register-email-item-vhv"
                                                id="frameBoundB5cbfd961291de">
                                                <div class="panel-heading">
                                                    <div class="panel-title">Đăng ký bản tin để thấy được các Ưu Đãi Bí
                                                        Mật</div>
                                                </div>
                                                <div class="panel-body">
                                                    <div id="module31" class="ModuleWrapper">
                                                        <div class="form-newsletter clearfix"
                                                            title="Đăng ký nhận bản tin">
                                                            <div class="image-register-vhv">
                                                                <img src="{!! URL::asset('colombo.vn_booking_files') !!}/Screenshot_1.png">
                                                            </div>
                                                            <div class="form-register-vhv">
                                                                <h3 class="post-title">Đăng ký bản tin để thấy được các
                                                                    Ưu Đãi Bí Mật</h3>
                                                                <h6 class="post-desc">Giá giảm hẳn ngay khi bạn đăng
                                                                    nhập!</h6>
                                                                <div class="input-control">
                                                                    <input id="email-31" required="required" type="email" class="form-control input-email " name="email" placeholder="Nhập email của bạn">
                                                                </div>
                                                                <button id="formSubmit31" type="button"
                                                                    class="btn btn-default btn-control hvr-ripple-in"><span>Tôi muốn đăng ký</span></button>
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
    </div>
    <div id="overlay"></div>
</div>
<div id="page-content">
    <div id="module21" class="ModuleWrapper">
        <div class="du-lich-noi-bat-vhv">
            <div id="column1-21" class="column1 container ">
                <div class="foverlay"></div>
                <div class="columns-widget row">
                    <div class="col-md-12">
                        <div id="module22" class="ModuleWrapper" modulerootid="1662504">
                            <section id="category22" class="category-type-06">
                                <div class="tile-content">
                                    <div>
                                        <ul class="row">
                                            <li class="item-block col-md-4 col-sm-4 " data-id="1662505">
                                                <article class="item-wrap">
                                                    <a href="list/31" title="Đà Lạt">
                                                        <figure> <img class="full-width" data-size-ratio="3:2"
                                                                data-original="/upload/21329/20190424/6e181b9e942c160f4605239be7ddc1728cbcc4c854.jpg"
                                                                alt="Đà Lạt" title="Đà Lạt"
                                                                src="{!! URL::asset('colombo.vn_booking_files') !!}/6e181b9e942c160f4605239be7ddc1728cbcc4c854.jpg">
                                                            <figcaption class="prim-wrap">Đà Lạt</figcaption>
                                                        </figure>
                                                    </a>
                                                </article>
                                            </li>
                                            <li class="item-block col-md-4 col-sm-4  " data-id="1662507">
                                                <article class="item-wrap">
                                                    <a href="list/11"
                                                        title="Mũi né">
                                                        <figure> <img class="full-width" data-size-ratio="3:2"
                                                                data-original="/upload/21329/20190424/MUI-NE-KOVER-5524-1544670379-6577-1545735577.jpg"
                                                                alt="Mũi né" title="Mũi né"
                                                                src="{!! URL::asset('colombo.vn_booking_files') !!}/MUI-NE-KOVER-5524-1544670379-6577-1545735577.jpg">
                                                            <figcaption class="prim-wrap">Mũi né</figcaption>
                                                        </figure>
                                                    </a>
                                                </article>
                                            </li>
                                            <li class="item-block col-md-4 col-sm-4  last-li last-child"
                                                data-id="1662506">
                                                <article class="item-wrap">
                                                    <a href="list/27"
                                                        title="Nha Trang">
                                                        <figure> <img class="full-width" data-size-ratio="3:2"
                                                                data-original="/upload/21329/20190424/Nha-Trang-e1504693007663.jpg"
                                                                alt="Nha Trang" title="Nha Trang"
                                                                src="{!! URL::asset('colombo.vn_booking_files') !!}/Nha-Trang-e1504693007663.jpg">
                                                            <figcaption class="prim-wrap">Nha Trang</figcaption>
                                                        </figure>
                                                    </a>
                                                </article>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="panel panel-default frame564175037f8b9a474e8b4567 frameOptionb5052488fe dia-diem-du-lich-item-vhv"
                            id="frameBoundB5cc113ad47f8b">
                            <div class="panel-heading">
                                <div class="panel-title"></div>
                            </div>
                            <div class="panel-body">
                                <div id="module23" class="ModuleWrapper" modulerootid="1662508">
                                    <section id="category23" class="category-type-06">
                                        <div class="tile-content">
                                            <div>
                                                <ul class="row">
                                                    <li class="item-block col-md-3 col-sm-3  " data-id="1662509">
                                                        <article class="item-wrap">
                                                            <a href="list/62"
                                                                title="Hà nội">
                                                                <figure> <img class="full-width" data-size-ratio="3:2"
                                                                        data-original="/upload/21329/20190425/maxresdefault.jpg"
                                                                        alt="Hà nội" title="Hà nội"
                                                                        src="{!! URL::asset('colombo.vn_booking_files') !!}/maxresdefault.jpg">
                                                                    <figcaption class="prim-wrap">Hà nội</figcaption>
                                                                </figure>
                                                            </a>
                                                        </article>
                                                    </li>
                                                    <li class="item-block col-md-3 col-sm-3  " data-id="1662511">
                                                        <article class="item-wrap">
                                                            <a href="list/60"
                                                                title="Đà nẵng">
                                                                <figure> <img class="full-width" data-size-ratio="3:2"
                                                                        data-original="/upload/21329/20190425/Nha-Trang-e1504693007663.jpg"
                                                                        alt="Đà nẵng" title="Đà nẵng"
                                                                        src="{!! URL::asset('colombo.vn_booking_files') !!}/Nha-Trang-e1504693007663(1).jpg">
                                                                    <figcaption class="prim-wrap">Đà nẵng</figcaption>
                                                                </figure>
                                                            </a>
                                                        </article>
                                                    </li>
                                                    <li class="item-block col-md-3 col-sm-3  " data-id="1662512">
                                                        <article class="item-wrap">
                                                            <a href="list/63"
                                                                title="Mũi né">
                                                                <figure> <img class="full-width" data-size-ratio="3:2"
                                                                        data-original="/upload/21329/20190425/MUI-NE-KOVER-5524-1544670379-6577-1545735577.jpg"
                                                                        alt="Mũi né" title="Mũi né"
                                                                        src="{!! URL::asset('colombo.vn_booking_files') !!}/MUI-NE-KOVER-5524-1544670379-6577-1545735577(1).jpg">
                                                                    <figcaption class="prim-wrap">Sài Gòn</figcaption>
                                                                </figure>
                                                            </a>
                                                        </article>
                                                    </li>
                                                    <li class="item-block col-md-3 col-sm-3  last-li last-child"
                                                        data-id="1662510">
                                                        <article class="item-wrap">
                                                            <a href="list/33"
                                                                title="Sapa">
                                                                <figure> <img class="full-width" data-size-ratio="3:2"
                                                                        data-original="/upload/21329/20190425/ruong-bac-thang-sapa-1.jpg"
                                                                        alt="Sapa" title="Sapa"
                                                                        src="{!! URL::asset('colombo.vn_booking_files') !!}/ruong-bac-thang-sapa-1.jpg">
                                                                    <figcaption class="prim-wrap">Sapa</figcaption>
                                                                </figure>
                                                            </a>
                                                        </article>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="module19" class="ModuleWrapper">
        <div class="khach-san-hotel">
            <div id="column1-19" class="column1 container ">
                <div class="foverlay"></div>
                <div class="columns-widget row">
                    <div class="col-md-12">
                        <div id="module20" class="ModuleWrapper">
                            <h2 class="title-portal">Danh sách homestay hot nhất mùa này</h2>
                            <div class="wp-list-hotel">
                                @if(!empty($Hotel))
                                @foreach($Hotel as $items)
                                <div class="prdItem">
                                    <div class="wp-content">
                                        <div class="prd-top">
                                            <div class="row clearfix">
                                                <div class="itemImage col-md-4 col-sm-4 col-xs-12">
                                                    <a target="_blank" href="detail/{!! $items['id'] !!}">
                                                        <img data-size-ratio="5:3" src="{!! URL::asset('public/img/'.$items['avatar']) !!}" >
                                                    </a>
                                                </div>
                                                <div class="contact-hotel col-md-5 col-sm-5 col-xs-12">
                                                    <div class="listing_title"><a target="_blank"  href="detail/{!! $items['id'] !!}" title="{!! $items['name'] !!}"> {!! $items['name'] !!}</a>
                                                    </div>
                                                    <div class="type-hotel">
                                                        <span class="title">Homestay</span>
                                                        <span>
                                                    </div>
                                                    <div class="address" title="{!! $items['address'] !!}"><i
                                                            class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;{!! $items['address'] !!}</div>
                                                    <div class="phone"><i class="fa fa-phone" aria-hidden="true"></i>
                                                        {!! $items['phone'] !!}</div>
                                                    <div class="email"><i class="fa fa-envelope-o" aria-hidden="true"></i> {!! $items['email'] !!}</div>
                                                </div>
                                                <div class="service-hotel col-md-3 col-sm-3 col-xs-12">
                                                    <div class="service-sale"><span><img class="icon-company"
                                                                src="{!! URL::asset('colombo.vn_booking_files') !!}/1522754232742-552d078378e134fb3df3b659a7d527f4.png">
                                                                Diện tích {!! $items['acreage'] !!}</span>m2
                                                            </div>
                                                    <div class="payment">
                                                        <div class="payment-detail">
                                                            <div class="pay-at-hotel-label">Thanh toán tại homestay
                                                            </div>
                                                        </div>
                                                        <div class=" primary-price">{!! number_format($items['price']) !!}&nbsp;VND
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                                @endif
                                {{ $Hotel->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default frame564175037f8b9a474e8b4567 frameOptionacf0d5b1fa chuyen-muc-panel"
        id="frameBoundB5cbfc86a033b7">
        <div class="panel-heading">
            <div class="panel-title">Tin tức
            </div>
        </div>
        <div class="panel-body">
            <div id="module27" class="ModuleWrapper" modulerootid="1662162">
                <section id="category27" class="category-type-06">
                    <div class="tile-content">
                        <div>
                            <ul class="row">
                                @foreach($posts as $item)
                                <li class="item-block col-md-2" data-id="1662163">
                                    <div class="bui-card bui-card--media bui-card--transparent">
                                        <div class="bui-card__image-container d-bh-promotion--image-container">
                                            <img class="bui-card__image" style="height: 100px;width: 100%;"
                                                src="{!! URL::asset('public/uploads/' . $item['image']) !!}">
                                        </div>
                                        <div class="bui-card__content">
                                            <a href="post-detail/{!! $item['id'] !!}" target="_blank"
                                                class="bui-card__title d-bh-promotion--theme-title">
                                                <h5>{{ $item['title']}}</h5>
                                            </a>
                                            <p class="bui-card__subtitle">{{ $item['description']}}</p>
                                        </div>
                                    </div>
                                </li>
                                @endforeach

                            </ul>
                            {{ $posts->links() }}
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
@endsection
