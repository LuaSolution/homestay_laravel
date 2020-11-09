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
                                        <form method="post" action="/homestay/list">
                                            @csrf
                                            <div class="col-md-4 ">
                                                    <div class="form-group">
                                                            <label>Từ khóa</label>
                                                <input type="text" name="name" class="form-control" value="{!! isset($name) ? $name : ''  !!}">
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="form-group">
                                                    <label>Tỉnh, thành</label>
                                                    <select name="query" class="form-control">
                                                            <option ></option>
                                                        @foreach($province_list as $item)
                                                        @if(isset($query) && $query == $item['id'])
                                                        <option value={{$item['id']}} selected>{{$item['name']}}</option>
                                                        @else
                                                        <option value={{$item['id']}}>{{$item['name']}}</option>
                                                        @endif
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style></style>
</div>
</div>
<div id="page-content">
    <div id="module19" class="ModuleWrapper">
        <div class="khach-san-hotel">
            <div id="column1-19" class="column1 container ">
                <div class="foverlay"></div>
                <div class="columns-widget row">
                    <div class="col-md-12">
                        <div id="module20" class="ModuleWrapper">
                            <h2 class="title-portal">Danh sách homestay</h2>
                            <div class="wp-list-hotel">
                                @if(count($Hotel))
                                @foreach($Hotel as $items)
                                <div class="prdItem">
                                    <div class="wp-content">
                                        <div class="prd-top">
                                            <div class="row clearfix">
                                                <div class="itemImage col-md-4 col-sm-4 col-xs-12">
                                                    <a target="_blank"href="/homestay/detail/{!! $items['id'] !!}">
                                                        <img data-size-ratio="5:3"
                                                            src="{!! URL::asset('public/img/'.$items['avatar']) !!}"
                                                            alt="Mercure Danang French Village Bana Hills"
                                                            itemprop="image">
                                                    </a>
                                                </div>
                                                <div class="contact-hotel col-md-5 col-sm-5 col-xs-12">
                                                    <div class="listing_title"><a target="_blank"
                                                            href="/homestay/detail/{!! $items['id'] !!}"
                                                            title="{!! $items['name'] !!}"> {!! $items['name'] !!}</a>
                                                    </div>
                                                    <div class="type-hotel">
                                                        <span class="title">Homestay</span>
                                                        <span>

                                                    </div>
                                                    <div class="address" title="{!! $items['address'] !!}"><i
                                                            class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;{!!
                                                        $items['address'] !!}</div>
                                                    <div class="phone"><i class="fa fa-phone" aria-hidden="true"></i>
                                                        {!! $items['phone'] !!}</div>

                                                    <div class="email"><i class="fa fa-envelope-o"
                                                            aria-hidden="true"></i> {!! $items['email'] !!}</div>
                                                </div>
                                                <div class="service-hotel col-md-3 col-sm-3 col-xs-12">
                                                    <div class="icons-list">

                                                        <div class="view-service" style="color: #02C2FF">Xem dịch vụ
                                                        </div>
                                                    </div>

                                                    <div class="payment">
                                                        <div class="price-old hidden">{!! number_format($items['price']) !!}&nbsp;VND
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
                                {{ $Hotel->links() }}
                                @else
                                Không có dữ liệu
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
