@include('backend.include.header')

<body>
    <div id="wrapper">

        <!-- Sliderbar -->
        @include('backend.include.slidebar')
        <!-- end sliderbar -->

        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <!-- SLider bar top -->
                @include('backend.include.slider-top')
                <!-- end SLider bar top -->
            </div>

            <!-- content -->
                @yield('content')
            <!-- end content -->

            <!-- footer -->
            @include('backend.include.footer')
       <!-- end footer -->