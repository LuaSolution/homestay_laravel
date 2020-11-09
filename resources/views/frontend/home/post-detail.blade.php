<html>

<head>
    <!DOCTYPE html>
    <html lang="en-gb" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# booking_com: http://ogp.me/ns/fb/booking_com#" class="noJS b_chrome b_chrome_74 supports_inline-block supports_flexbox_unprefixed supports_fontface ">
    <head profile="http://a9.com/-/spec/opensearch/1.1/">
        <link rel="stylesheet" href="https://r-ec.bstatic.com/static/css/main_exps_edgecast.iq_ltr/e16cf7c98ed705d44f37f2fdc6d577a15166694c.css" />
        <link rel="stylesheet" href="https://r-ec.bstatic.com/static/css/gprof_icons_edgecast.iq_ltr/51ecab3f6b7c46f856054cd535aa2e4612dd3e86.css" />
        <title>Tin tức Homestay</title>
        <link rel="shortcut icon" href="https://q-ec.bstatic.com/static/img/b25logo/favicon/ebc77706da3aae4aee7b05dadf182390f0d26d11.ico" />
        <link rel="stylesheet" href="https://r-ec.bstatic.com/static/css/traveltips_edgecast/294087bf96de8fbc8123eba36ba2f9d8268bf4f3.css" />
    </head>

    <body id="b2articlesPage" class="bookings2 b2 articles en lang_is_ltr header_reshuffle nobg user_center app_user_center b-sprite-3 bigblue_std_sm bigblue_std_lg iconfont_is_loading  is_blog is_blog_article system-font iq-x-bar iq-x-bar-new ">
        <div class="articles-header">
            <div class="articles-header-outer l-grid_wrap l-grid_margin-x">
                <div class="articles-header-inner">
                    <div class="articles-logo">
                        <a href="/homestay" class="articles-logo">
                        <img src="{!! URL::asset('colombo.vn_booking_files') !!}/logo-w39.png"  width="80px" alt="Tiếng Việt">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="trt_is_blog trt_is_blog_www trt_is_article " itemscope="" itemtype="http://schema.org/BlogPosting" dir="ltr">
            <div class="trt-article__intro">
                <div class="trt-article-intro__image">
                    <div class="trt-thumb" style="background-image: url({!! URL::asset('public/uploads/' . $post['image']) !!});">
                    </div>
                </div>
                <div class="trt-article-intro__wrap l-grid_wrap l-grid_margin-x">
                    <div class="trt-article-intro__content l-grid_col_9">
                        <h1 class="trt-article__title" itemprop="name headline">{{ $post['title']}}</h1>
                    </div>
                </div>
            </div>
            <div class="trt-article__content l-grid_wrap l-grid_margin-x">
                <div class="l-grid_ungap-x l-grid_cells">
                    <div class="trt-article__text trt-article__text l-grid_cell l-grid_col_9" itemprop="articleBody" data-component="traveltips/article">
                        <div class="trt-article__content">
                        {{ $post['description']}}
                        <br/>
                            <h3 id="hit-the-beach">Nội dung chính</h3>
                            <div class="travel-article-image travel-article-image-S">
                                <p class="travel-article-image-desc">{{ $post['title']}}</p>
                            </div>
                            {!! $post['content'] !!}
                            </div>
                    </div>
                    <div class="trt-article__side l-grid_cell l-grid_col_3">
                        <div class="trt-showcase">
                            <div class="trt-showcase__label">
                                <h2 class="trt-showcase__title ">Homestay nổi bật</h2>
                            </div>
                            <div class="trt-showcase__items l-grid_ungap-x l-grid_cells">
                            @foreach($hotels as $item)
                            <div class="trt-showcase__item trt-showcase__item_2 l-grid_cell l-grid_col_3">
                                    <article class="trt-card trt-card-2 trt-card_size_M" data-component="traveltips/article-ga-track" data-component-action="" data-component-label="cards-M" itemscope="" itemtype="http://schema.org/BlogPosting" dir="ltr">
                                        <div class="trt-card__content">
                                            <h2 class="trt-card__title" itemprop="name">
                                                <a class="trt-card__link" href="/homestay/detail/{!! $item['id'] !!}" title="Uncover the Caribbean’s secret islands" itemprop="url">{!! $item['name'] !!}</a></h2>
                                            <div class="trt-card__text" itemprop="description">
                                                <a class="trt-card__link_second" href="/homestay/detail/{!! $item['id'] !!}">{!! $item['address'] !!}</a>
                                            </div>
                                            <div class="trt-card__footer">
                                                <div class="trt-card__published">
                                                    <time itemprop="datePublished">
                                                   Giá {!! number_format($item['price']) !!}
                                                    </time>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="trt-card__link_second" href="/homestay/detail/{!! $item['id'] !!}">
                                            <div class="trt-card__image">
                                                <div class="trt-thumb" style="background-image: url({!! URL::asset('public/img/'.$item['avatar']) !!});">
                                                </div>
                                            </div>
                                        </a>
                                    </article>
                                </div>@endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="trt-article__footer">
                <div class="l-grid_wrap l-grid_margin-x">
                    <div class="l-grid_ungap-x l-grid_cells">
                        <div class="l-grid_cell l-grid_col_6">
                            <div class="trt-showcase">
                                <div class="trt-showcase__label">
                                    <h2 class="trt-showcase__title ">Các bài viết khác</h2>
                                </div>
                                <div class="trt-showcase__items l-grid_ungap-x l-grid_cells">
                                   @foreach($posts as $p)
                                   <div class="trt-showcase__item trt-showcase__item_4 l-grid_cell l-grid_col_6">
                                        <article class="trt-card trt-card-4 trt-card_size_S" data-component="traveltips/article-ga-track" data-component-action="" data-component-label="cards-S" itemscope="" itemtype="http://schema.org/BlogPosting" dir="ltr">
                                            <div class="trt-card__content">
                                                <div class="trt-card__category">
                                                    <a class="trt-card__category-link" href="/homestay/post-detail/{!! $p['id'] !!}" title="Sports & Fitness">Sports & Fitness</a>
                                                </div>
                                                <h2 class="trt-card__title" itemprop="name">
                                                    <a class="trt-card__link" href="/homestay/post-detail/{!! $p['id'] !!}" title="What to see and do around County Ground Taunton" itemprop="url">{!! substr($p['title'], 0, 50) !!}...</a></h2>
                                                <div class="trt-card__text" itemprop="description">
                                                    <a class="trt-card__link_second" href="/homestay/post-detail/{!! $p['id'] !!}">{!! substr($p['description'], 0, 150) !!}...</a>
                                                </div>
                                                <div class="trt-card__footer">
                                                    <div class="trt-card__published">
                                                        <time itemprop="datePublished">
                                                            14 May 2019
                                                        </time>
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="trt-card__link_second" href="/homestay/post-detail/{!! $p['id'] !!}">
                                                <div class="trt-card__image">
                                                    <div class="trt-thumb" style="background-image: url({!! URL::asset('public/uploads/'.$p['image']) !!});">
                                                    </div>
                                                </div>
                                            </a>
                                        </article>
                                    </div>
                                   @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="blog_copyright">
            Copyright &copy; 1996&ndash;2019 homestay.com. All rights reserved.
        </div>
    </body>

    </html>
