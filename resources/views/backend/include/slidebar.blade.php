 <nav class="navbar-default navbar-static-side" role="navigation">
     <div class="sidebar-collapse">
         <ul class="nav metismenu" id="side-menu">
             <li class="nav-header">
                 <div class="dropdown profile-element">
                     <span>
                         <!--  <img alt="image" src="{!! URL::asset('public/cms') !!}/img/logo.png" /> -->
                         <img class="img-responsive" alt="image"
                             src="{!! URL::asset('public') !!}/img/LOGO-HOMESTAY.png" />

                     </span>
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                         <span class="clear">
                             <span class="block m-t-xs"> <strong class="font-bold">CMS Webify V1.10</strong>
                             </span>
                             <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                 <li><a href="#">Về Webify</a></li>
                                 <li><a href="#">Liên hệ</a></li>
                                 <li><a href="#">Hướng dẫn sử dụng</a></li>
                             </ul>
                 </div>
                 <div class="logo-element">
                     IN+
                 </div>
             </li>
             <li class="active">
                 <a href="/homestay/admin"><i class="fa fa-tachometer"></i> <span class="nav-label">Trung tâm</span> </a>
             </li>
             <li class="hide">
                 <a href="media.html"><i class="fa fa-picture-o"></i> <span class="nav-label">Thư viện</span></a>
             </li>
             <li>
                 <a href="post.html"><i class="fa fa-newspaper-o"></i> <span class="nav-label">Quản lý khách
                         sạn</span><span class="fa arrow"></span></a>
                 <ul class="nav nav-second-level collapse">
                     <li><a href="{!! route('hotels.index') !!}">Tất cả</a></li>
                     <li><a href="{!! route('hotels.create') !!}">Thêm mới</a></li>
                     <li><a href="{!! route('utilities.index') !!}">Tiện nghi</a></li>
                 </ul>
             </li>
             <li>
                 <a href="page.html"><i class="fa fa-twitch"></i> <span class="nav-label">Quản lý Tin tức</span><span
                         class="fa arrow"></span></a>
                 <ul class="nav nav-second-level collapse">
                     <li><a href="{!! route('posts.create') !!}">Thêm mới</a></li>
                     <li><a href="{!! route('posts.index') !!}">Tất cả</a></li>
                     <li><a href="{!! route('categories.index') !!}">Danh mục</a></li>

                 </ul>
             </li>


             <li class="hide">
                 <a href="page.html"><i class="fa fa-twitch"></i> <span class="nav-label">Quản lý Trang</span><span
                         class="fa arrow"></span></a>
                 <ul class="nav nav-second-level collapse">
                     <li><a href="page.html">Tất cả</a></li>
                     <li><a href="add_page.html">Thêm trang</a></li>
                 </ul>
             </li>


             <li>
                 <a href="{!! route('booking.index') !!}"><i class="fa fa-twitch"></i> <span class="nav-label">Quản lý đặt Phòng</span><span
                         class="fa arrow"></span></a>
             </li>

             <li>
                 <a href="page.html"><i class="fa fa-twitch"></i> <span class="nav-label">Quản lý Khách hàng</span><span
                         class="fa arrow"></span></a>
                 <ul class="nav nav-second-level collapse">
                     <li><a href="{!! route('customerusers.index') !!}">Tất cả khách hàng</a></li>
                 </ul>
             </li>

             <li>
                 <a href="/homestay/admin/thong-ke"><i class="fa fa-twitch"></i> <span class="nav-label">Quản lý doanh thu</span><span
                         class="fa arrow"></span></a>
             </li>

         </ul>

     </div>
 </nav>
