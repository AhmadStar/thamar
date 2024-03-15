<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <meta name="csrf-token" content="{{ csrf_token() }}">

        {!! BaseHelper::googleFonts('https://fonts.googleapis.com/css2?family=' . urlencode(theme_option('primary_font', 'Poppins')) . ':wght@200;300;400;500;600;700;800;900&display=swap') !!}

        {{--
        006A62
        22AC9B
        1F90A6
         --}}

        <style>
            :root {
                --color-1st: {{ theme_option('primary_color', '#FF324D') }};
                --primary-color: {{ theme_option('primary_color', '#FF324D') }};
                --color-2nd: {{ theme_option('secondary_color', '#1F90A6') }};
                --secondary-color: {{ theme_option('secondary_color', '#1F90A6') }};
                --3-color:  #22AC9B;
                --4-color: {{ theme_option('forth_color', '#1F90A6') }};
                --primary-font: '{{ theme_option('primary_font', 'Poppins') }}', sans-serif;
            }
        </style>

        {!! Theme::header() !!}
    </head>
    <body {!! Theme::bodyAttributes() !!}>
    {!! apply_filters(THEME_FRONT_BODY, null) !!}

    <div id="alert-container"></div>

    <!-- Pre Loader -->
    <div class="preloader">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="spinner"></div>
            </div>
        </div>
    </div>
    <!-- End Pre Loader -->

    <!-- Top Header Start -->
    <header class="top-header top-header-bg">
        <div class="container-fluid">
            <div class="container-max">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-6">
                        <div class="top-head-left">
                            <a href="tel:{{theme_option('hotline')}}" target="_blank" class="head-ahref" dir="ltr">
                                {{theme_option('hotline')}}
                            </a>
                            |
                            <a href="tel:{{theme_option('email')}}" target="_blank" class="head-ahref" dir="ltr">
                                {{theme_option('email')}}
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-5 col-md-6">
                        <div class="top-header-right">
                            @if (theme_option('social_links') && $socialLinks = json_decode(theme_option('social_links'), true))
                            <div class="top-header-social">
                                <ul>
                                    @foreach($socialLinks as $socialLink)
                                        @if ($socialLink[2]['value'])
                                            <li>
                                                <a href="{{ $socialLink[2]['value'] }}" target="_blank">
                                                    <i class='bx bxl-{{ $socialLink[0]['value'] }}'></i>
                                                </a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                            @endif
                            @if (is_plugin_active('language'))
                                {!! Theme::partial('language-switcher') !!}
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Top Header End -->

    <!-- Start Navbar Area -->
    <div class="navbar-area">
        <!-- Menu For Mobile Device -->
        <div class="mobile-nav">
             <a href="index.html" class="logo">
                <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo-one" alt="Logo">
                <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo-two" alt="Logo">
            </a>
        </div>

        <!-- Menu For Desktop Device -->
        <div class="main-nav">
            <div class="container-fluid">
                <div class="container-max">
                    <nav class="navbar navbar-expand-md navbar-light ">
                        <a class="navbar-brand" href="index.html">
                            <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo-one" alt="Logo">
                            <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo-two" alt="Logo">
                        </a>

                        <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                            {{--<ul class="navbar-nav m-auto">--}}
                                {{--<li class="nav-item">--}}
                                    {{--<a href="#" class="nav-link active">--}}
                                        {{--Home--}}
                                        {{--<i class='bx bx-caret-down'></i>--}}
                                    {{--</a>--}}
                                    {{--<ul class="dropdown-menu">--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="index.html" class="nav-link">--}}
                                                {{--Home One--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="index-2.html" class="nav-link">--}}
                                                {{--Home Two--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="index-3.html" class="nav-link active">--}}
                                                {{--Home Three--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="index-4.html" class="nav-link">--}}
                                                {{--Home Four--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="index-5.html" class="nav-link">--}}
                                                {{--Home Five--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="index-6.html" class="nav-link">--}}
                                                {{--Home Six--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="index-7.html" class="nav-link">--}}
                                                {{--Home Seven--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="index-8.html" class="nav-link">--}}
                                                {{--Video Home <span>(New)</span>--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                    {{--</ul>--}}
                                {{--</li>--}}

                                {{--<li class="nav-item">--}}
                                    {{--<a href="about.html" class="nav-link">--}}
                                        {{--About--}}
                                    {{--</a>--}}
                                {{--</li>--}}

                                {{--<li class="nav-item">--}}
                                    {{--<a href="#" class="nav-link">--}}
                                        {{--Pages--}}
                                        {{--<i class='bx bx-caret-down'></i>--}}
                                    {{--</a>--}}
                                    {{--<ul class="dropdown-menu">--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="team.html" class="nav-link">--}}
                                                {{--Team--}}
                                            {{--</a>--}}
                                        {{--</li>--}}

                                        {{--<li class="nav-item">--}}
                                            {{--<a href="testimonials.html" class="nav-link">--}}
                                                {{--Testimonials--}}
                                            {{--</a>--}}
                                        {{--</li>--}}

                                        {{--<li class="nav-item">--}}
                                            {{--<a href="faq.html" class="nav-link">--}}
                                                {{--FAQ--}}
                                            {{--</a>--}}
                                        {{--</li>--}}

                                       {{--<li class="nav-item">--}}
                                            {{--<a href="#" class="nav-link">--}}
                                                {{--Case Study--}}
                                                {{--<i class='bx bx-caret-down'></i>--}}
                                            {{--</a>--}}
                                            {{--<ul class="dropdown-menu">--}}
                                                {{--<li class="nav-item">--}}
                                                    {{--<a href="case-study.html" class="nav-link">--}}
                                                        {{--Case Study--}}
                                                    {{--</a>--}}
                                                {{--</li>--}}
                                                {{--<li class="nav-item">--}}
                                                    {{--<a href="case-details.html" class="nav-link">--}}
                                                        {{--Case Study Details--}}
                                                    {{--</a>--}}
                                                {{--</li>--}}
                                            {{--</ul>--}}
                                        {{--</li>--}}

                                        {{--<li class="nav-item">--}}
                                            {{--<a href="#" class="nav-link">--}}
                                                {{--User--}}
                                                {{--<i class='bx bx-caret-down'></i>--}}
                                            {{--</a>--}}
                                            {{--<ul class="dropdown-menu">--}}
                                                {{--<li class="nav-item">--}}
                                                    {{--<a href="log-in.html" class="nav-link">--}}
                                                        {{--Log In--}}
                                                    {{--</a>--}}
                                                {{--</li>--}}
                                                {{--<li class="nav-item">--}}
                                                    {{--<a href="register.html" class="nav-link">--}}
                                                        {{--Registration--}}
                                                    {{--</a>--}}
                                                {{--</li>--}}
                                                {{--<li class="nav-item">--}}
                                                    {{--<a href="forget-password.html" class="nav-link">--}}
                                                        {{--Forget Password--}}
                                                    {{--</a>--}}
                                                {{--</li>--}}
                                            {{--</ul>--}}
                                        {{--</li>--}}

                                        {{--<li class="nav-item">--}}
                                            {{--<a href="terms-condition.html" class="nav-link">--}}
                                                {{--Terms & Conditions--}}
                                            {{--</a>--}}
                                        {{--</li>--}}

                                        {{--<li class="nav-item">--}}
                                            {{--<a href="privacy-policy.html" class="nav-link">--}}
                                                {{--Privacy Policy--}}
                                            {{--</a>--}}
                                        {{--</li>--}}

                                        {{--<li class="nav-item">--}}
                                            {{--<a href="404.html" class="nav-link">--}}
                                                {{--404 page--}}
                                            {{--</a>--}}
                                        {{--</li>--}}

                                        {{--<li class="nav-item">--}}
                                            {{--<a href="coming-soon.html" class="nav-link">--}}
                                                {{--Coming Soon--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                    {{--</ul>--}}
                                {{--</li>--}}

                                {{--<li class="nav-item">--}}
                                    {{--<a href="#" class="nav-link">--}}
                                        {{--Services--}}
                                        {{--<i class='bx bx-caret-down'></i>--}}
                                    {{--</a>--}}
                                    {{--<ul class="dropdown-menu">--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="services-1.html" class="nav-link">--}}
                                                {{--Services Style One--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="services-2.html" class="nav-link">--}}
                                                {{--Services Style Two--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="service-details.html" class="nav-link">--}}
                                                {{--Service Details--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                    {{--</ul>--}}
                                {{--</li>--}}

                                {{--<li class="nav-item">--}}
                                    {{--<a href="#" class="nav-link">--}}
                                        {{--Blog--}}
                                        {{--<i class='bx bx-caret-down'></i>--}}
                                    {{--</a>--}}
                                    {{--<ul class="dropdown-menu">--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="blog-1.html" class="nav-link">--}}
                                                {{--Blog Style One--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="blog-2.html" class="nav-link">--}}
                                                {{--Blog Style Two--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                        {{--<li class="nav-item">--}}
                                            {{--<a href="blog-details.html" class="nav-link">--}}
                                                {{--Blog Details--}}
                                            {{--</a>--}}
                                        {{--</li>--}}
                                    {{--</ul>--}}
                                {{--</li>--}}

                                {{--<li class="nav-item">--}}
                                    {{--<a href="contact.html" class="nav-link">--}}
                                        {{--Contact--}}
                                    {{--</a>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                            {!! Menu::renderMenuLocation('main-menu', [
                                                  'view' => 'menu',
                                                  'options' => ['class' => 'menu'],
                                              ]) !!}
                            <div class="nav-side d-display nav-side-mt">
                                <div class="nav-side-item">
                                    <div class="search-side-widget">
                                        <form class="search-side-form">
                                            <input type="search" class="form-control" placeholder="{{__('Search')}}...">
                                            <button type="submit">
                                                <i class="bx bx-search"></i>
                                            </button>
                                        </form>
                                    </div>
                                </div>

                                <div class="nav-side-item">
                                    <div class="get-btn">
                                        <a href="contact.html" class="default-btn btn-bg-two border-radius-50">{{__('Get A Quote')}} <i class='bx bx-chevron-right'></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>

       <div class="side-nav-responsive">
            <div class="container-max">
                <div class="dot-menu">
                    <div class="circle-inner">
                        <div class="in-circle circle-one"></div>
                        <div class="in-circle circle-two"></div>
                        <div class="in-circle circle-three"></div>
                    </div>
                </div>

                <div class="container">
                    <div class="side-nav-inner">
                        <div class="side-nav justify-content-center align-items-center">
                            <div class="side-nav-item nav-side">
                                <div class="search-box">
                                    <i class='bx bx-search'></i>
                                </div>
                                <div class="get-btn">
                                    <a href="contact.html" class="default-btn btn-bg-two border-radius-50">{{__('Get A Quote')}} <i class='bx bx-chevron-right'></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Navbar Area -->

    <!-- Search Overlay -->
    <div class="search-overlay">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="search-layer"></div>
                <div class="search-layer"></div>
                <div class="search-layer"></div>

                <div class="search-close">
                    <span class="search-close-line"></span>
                    <span class="search-close-line"></span>
                </div>

                <div class="search-form">
                    <form>
                        <input type="text" class="input-search" placeholder="Search here...">
                        <button type="submit"><i class='bx bx-search'></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- End Search Overlay -->
