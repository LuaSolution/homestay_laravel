<?php
Route::group(['prefix' => '/'], function () {
    Route::get('/', [
        'as' => 'index',
        'uses' => 'HomeController@index',
    ]);

    Route::get('/detail/{id}', [
        'uses' => 'HomeController@homeDetail',
    ]);

    Route::get('/post-detail/{id}', [
        'uses' => 'HomeController@postDetail',
    ]);

    Route::get('/danh-muc/{alias}/{id}', [
        'as' => 'frontend.product',
        'uses' => 'HomeController@listProduct',
    ]);

    Route::get('/san-pham/{alias}/{id}', [
        'as' => 'frontend.detailProduct',
        'uses' => 'HomeController@detailProduct',
    ]);

    Route::get('/tin-tuc/{id}', [
        'as' => 'frontend.listPost',
        'uses' => 'HomeController@listPost',
    ]);

    Route::get('/chi-tiet-tin/{alias}/{id}', [
        'as' => 'frontend.detailPost',
        'uses' => 'HomeController@detailPost',
    ]);

    Route::get('/search', [
        'as' => 'frontend.textSearch',
        'uses' => 'HomeController@textSearch',
    ]);

    // Trang
    Route::get('page/{alias}/{id}', [
        'as' => 'frontend.pageDetail',
        'uses' => 'HomeController@pageDetail',
    ]);

    Route::get('/gioi-thieu/{alias}/{id}', [
        'as' => 'frontend.introduce',
        'uses' => 'HomeController@getIntroduce',
    ]);

    Route::get('dang-ky', [
        'uses' => 'Customer_userController@register',
    ]);

    Route::post('dang-ky', [
        'as' => 'frontend.register',
        'uses' => 'Customer_userController@store',
    ]);

    Route::get('dang-nhap', [
        'uses' => 'Customer_userController@getLogin',
    ]);

    Route::post('dang-nhap', [
        'as' => 'frontend.login',
        'uses' => 'Customer_userController@login',
    ]);

    Route::get('dang-xuat', [
        'as' => 'frontend.logout',
        'uses' => 'Customer_userController@logout',
    ]);

    Route::get('xem-chi-tiet', [
        'as' => 'frontend.userDetail',
        'uses' => 'Customer_userController@userDetail',

    ]);

    Route::post('add-comment', [
        'as' => 'fe.hotels.comment',
        'uses' => 'roomsController@addComment',

    ]);

    Route::group(['prefix' => 'hotels'], function () {
        Route::get('/', [
            'as' => 'fe.hotels.index',
            'uses' => 'FEHotelsController@index',
        ]);
        Route::get('create', [
            'as' => 'fe.hotels.create',
            'uses' => 'FEHotelsController@create',
        ]);
        Route::post('store', [
            'as' => 'fe.hotels.store',
            'uses' => 'FEHotelsController@store',
        ]);

        Route::get('edit/{id}', [
            'uses' => 'FEHotelsController@edit',
        ]);

        Route::post('update/{id}', [
            'as' => 'fe.hotels.update',
            'uses' => 'FEHotelsController@update',
        ]);

        Route::post('destroy/{id}', [
            'uses' => 'FEHotelsController@destroy',
        ]);

        Route::get('multiprocess/{id}', [
            'uses' => 'FEHotelsController@multiprocess',
        ]);

    });

});

Route::view('customer', 'customer');

Auth::routes();

Route::get('login', [
    'uses' => 'LoginController@getIndex',
])->name('login');

Route::post('login', [
    'uses' => 'LoginController@postLogin',
])->name('login');

Route::get('logout', [
    'as' => 'logout',
    'uses' => 'LoginController@getLogout',
]);

Route::get('logout', [
    'as' => 'logout',
    'uses' => 'LoginController@getLogout',
]);

Route::get('list/{query?}', [
    'as' => 'homestay_list',
    'uses' => 'HomeController@list',
]);

Route::post('list', [
    'as' => 'homestay_search',
    'uses' => 'HomeController@search',
]);

Route::group(['middleware' => 'check-admin'], function () {
    Route::group(['prefix' => 'admin'], function () {

        Route::get('/', [
            'as' => 'dashbroad.index',
            'uses' => 'DashbroadController@index',

        ]);

        Route::get('/', [
            'as' => 'booking.index',
            'uses' => 'BookingController@index',

        ]);

        Route::post('booking/destroy/{id}', [
            'as' => 'booking.destroy',
            'uses' => 'BookingController@remove',

        ]);

        Route::post('booking/payment/{id}', [
            'as' => 'booking.payment',
            'uses' => 'BookingController@payment',

        ]);

        Route::group(['prefix' => 'users'], function () {
            Route::get('/', [
                'as' => 'users.getIndex',
                'uses' => 'UsersController@getIndex',
            ]);

            Route::get('/create', [
                'as' => 'users.getCreate',
                'uses' => 'UsersController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'users.postCreate',
                'uses' => 'UsersController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'users.getEdit',
                'uses' => 'UsersController@getEdit',
            ]);

            Route::post('update/{id}', [
                'as' => 'users.postEdit',
                'uses' => 'UsersController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'users.destroy',
                'uses' => 'UsersController@destroy',
            ]);

            Route::get('/detail/{id}', [
                'as' => 'users.detail',
                'uses' => 'UsersController@detail',
            ]);

        });

        // Bài viết

        //Route::resource('posts', 'PostsController');

        Route::group(['prefix' => 'posts'], function () {

            Route::get('/', [
                'as' => 'posts.index',
                'uses' => 'PostsController@index',
            ]);

            Route::get('/create', [
                'as' => 'posts.create',
                'uses' => 'PostsController@create',
            ]);

            Route::post('/create', [
                'as' => 'posts.store',
                'uses' => 'PostsController@store',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'posts.edit',
                'uses' => 'PostsController@edit',
            ]);

            Route::post('/update/{id}', [
                'as' => 'posts.update',
                'uses' => 'PostsController@update',
            ]);

            Route::post('/delete/{id}', [
                'as' => 'posts.destroy',
                'uses' => 'PostsController@destroy',
            ]);

            Route::post('/multiprocess', [
                'as' => 'posts.multiprocess',
                'uses' => 'PostsController@multiprocess',
            ]);

            Route::get('/post-hidden/{id}', [
                'as' => 'posts.post_hidden',
                'uses' => 'PostsController@post_hidden',
            ]);

            Route::get('/post-display/{id}', [
                'as' => 'posts.post_display',
                'uses' => 'PostsController@post_desplay',
            ]);

            Route::get('/post-star/{id}', [
                'as' => 'posts.star',
                'uses' => 'PostsController@star',
            ]);

            Route::get('/post-star-empty/{id}', [
                'as' => 'posts.starempty',
                'uses' => 'PostsController@starempty',
            ]);

            Route::group(['prefix' => 'categories'], function () {
                Route::get('/', [
                    'as' => 'categories.index',
                    'uses' => 'CategoriesController@index',
                ]);

                Route::get('/create', [
                    'as' => 'categories.create',
                    'uses' => 'CategoriesController@create',
                ]);

                Route::post('/create', [
                    'as' => 'categories.store',
                    'uses' => 'CategoriesController@store',
                ]);

                Route::get('edit/{id}', [
                    'as' => 'categories.edit',
                    'uses' => 'CategoriesController@edit',
                ]);

                Route::post('/update/{id}', [
                    'as' => 'categories.update',
                    'uses' => 'CategoriesController@update',
                ]);

                Route::post('destroy/{id}', [
                    'as' => 'categories.destroy',
                    'uses' => 'CategoriesController@destroy',
                ]);

                Route::get('post_hidden/{id}', [
                    'as' => 'categories.post_hidden',
                    'uses' => 'CategoriesController@post_hidden',
                ]);

                Route::get('post_display/{id}', [
                    'as' => 'categories.post_display',
                    'uses' => 'CategoriesController@post_display',
                ]);

                Route::post('process', [
                    'as' => 'categories.process',
                    'uses' => 'CategoriesController@process',
                ]);

            });
        });

        // Quản lý đơn hàng

        Route::group(['prefix' => 'shoppingcarts'], function () {
            Route::get('/', [
                'as' => 'shoppingcarts.getOrder',
                'uses' => 'ShoppingcartController@getOrder',
            ]);

            Route::post('/xoa-don-hang/{id}', [
                'as' => 'shoppingcarts.deleteOrder',
                'uses' => 'ShoppingcartController@deleteOrder',
            ]);

            Route::get('/dang-giao-hang/{id}', [
                'as' => 'shoppingcarts.dangGiaoHang',
                'uses' => 'ShoppingcartController@dangGiaoHang',
            ]);

            Route::get('/da-giao-hang/{id}', [
                'as' => 'shoppingcarts.daGiaoHang',
                'uses' => 'ShoppingcartController@daGiaoHang',
            ]);

            Route::get('/huy-don-hang/{id}', [
                'as' => 'shoppingcarts.huyDonHang',
                'uses' => 'ShoppingcartController@huyDonHang',
            ]);

            Route::get('/don-hang-moi/{id}', [
                'as' => 'shoppingcarts.donHangMoi',
                'uses' => 'ShoppingcartController@donHangMoi',
            ]);

            Route::get('/tao-don-hang', [
                'as' => 'shoppingcarts.createOrder',
                'uses' => 'ShoppingcartController@createOrder',
            ]);

            Route::get('/chi-tiet-don-hang/{id}', [
                'as' => 'shoppingcarts.detailOrder',
                'uses' => 'ShoppingcartController@detailOrder',
            ]);

            Route::post('/xoa-nhieu-don-hang', [
                'as' => 'shoppingcarts.deleteMultiOrder',
                'uses' => 'ShoppingcartController@deleteMultiOrder',
            ]);

        });

        Route::group(['prefix' => 'customerusers'], function () {
            Route::get('/', [
                'as' => 'customerusers.index',
                'uses' => 'Customer_userController@index',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'customerusers.edit',
                'uses' => 'Customer_userController@edit',
            ]);

            Route::post('update/{id}', [
                'as' => 'customerusers.update',
                'uses' => 'Customer_userController@update',
            ]);

            Route::post('destroy/{id}', [
                'as' => 'customerusers.destroy',
                'uses' => 'Customer_userController@destroy',

            ]);
        });

        // Tiện ích :

        Route::group(['prefix' => 'utilities'], function () {

            Route::get('/', [
                'as' => 'utilities.index',
                'uses' => 'UtilitiesController@index',

            ]);
            Route::post('store', [
                'as' => 'utilities.store',
                'uses' => 'UtilitiesController@store',
            ]);

            Route::get('edit/{id}', [
                'as' => 'utilities.edit',
                'uses' => 'UtilitiesController@edit',
            ]);

            Route::post('update/{id}', [
                'as' => 'utilities.update',
                'uses' => 'UtilitiesController@update',
            ]);

            Route::post('destroy/{id}', [
                'as' => 'utilities.destroy',
                'uses' => 'UtilitiesController@destroy',
            ]);

        });

        Route::group(['prefix' => 'hotels'], function () {

            Route::get('/', [
                'as' => 'hotels.index',
                'uses' => 'HotelsController@index',
            ]);
            Route::get('create', [
                'as' => 'hotels.create',
                'uses' => 'HotelsController@create',
            ]);
            Route::post('store', [
                'as' => 'hotels.store',
                'uses' => 'HotelsController@store',
            ]);

            Route::get('edit/{id}', [
                'as' => 'hotels.edit',
                'uses' => 'HotelsController@edit',
            ]);

            Route::post('update/{id}', [
                'as' => 'hotels.update',
                'uses' => 'HotelsController@update',
            ]);

            Route::post('destroy/{id}', [
                'as' => 'hotels.destroy',
                'uses' => 'HotelsController@destroy',
            ]);

            Route::post('multiprocess', [
                'as' => 'hotels.multiprocess',
                'uses' => 'HotelsController@multiprocess',
            ]);

        });

        Route::get('thong-ke', [
            'uses' => 'HotelsController@thongKe',
        ]);
        Route::post('thong-ke', [
            'as' => 'thong-ke',
            'uses' => 'HotelsController@postThongKe',
        ]);

        Route::group(['prefix' => 'rooms'], function () {
            Route::post('dat-phong', [
                'as' => 'rooms.store',
                'uses' => 'roomsController@store',
            ]);
        });

    });
});
