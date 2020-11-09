<!-- header top menu -->
  @include('backend.include.header')
<!-- header top menu -->
<!--sidebar-menu-->
  @include('backend.include.sidebar')
<!--sidebar-menu-->

<!--main-container-part-->
  
   @yield('content')
<!--end-main-container-part-->

<!--Footer-part-->
@include('backend.include.footer')
<!--end-Footer-part-->