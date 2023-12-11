<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from techno.websitelayout.net/index-modern-it-company.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Nov 2023 10:25:46 GMT -->
<head>

    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="{{ $web_information->information->seo_title }}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="{{ $web_information->information->seo_title }}">
    <meta name="description" content="{{ $web_information->information->seo_title }}">

    <!-- title  -->
    <title>
        @yield('title', 'NEWWAYTECH')
    </title>

    <!-- favicon -->
    <link rel="shortcut icon" href="img/logos/favicon.png">
    <link rel="apple-touch-icon" href="img/logos/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/logos/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/logos/apple-touch-icon-114x114.png">

    {{-- CSS --}}
    @include('frontend.scripts.style')
</head>

<body>

    <!-- PAGE LOADING
    ================================================== -->
    <div id="preloader"></div>

    <!-- MAIN WRAPPER
    ================================================== -->
    <div class="main-wrapper">

        <!-- HEADER
        ================================================== -->
        @include('frontend.elements.header')

        @yield('content')

        <!-- FOOTER
        ================================================== -->
        @include('frontend.elements.footer')
    </div>

    {{-- JS --}}
    @include('frontend.scripts.script')
</body>
</html>