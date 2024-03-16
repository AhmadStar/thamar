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

        @php
            Theme::asset()->remove('language-css');
            Theme::asset()->remove('ckeditor-content-styles');
        @endphp

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

<link rel="preload" href="{{ asset('/themes/shopwise/assets/css/bootstrap.min.css') }}" as="style" onload="this.onload=null;this.rel='stylesheet'">
        <noscript><link rel="stylesheet" href="{{ asset('/themes/shopwise/assets/css/bootstrap.min.css') }}"></noscript>

        {!! Theme::header() !!}
    </head>
    <body {!! Theme::bodyAttributes() !!}>
    {!! apply_filters(THEME_FRONT_BODY, null) !!}

    <div id="alert-container"></div>

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
                            <a href="mailto:{{theme_option('email')}}" target="_blank" class="head-ahref" dir="ltr">
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
                                                <a href="{{ $socialLink[2]['value'] }}" target="_blank" aria-label="Open {{ $socialLink[0]['value'] }} Account">
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
             <a href="/{{ app()->getLocale() }}" class="logo">
                <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo-one" alt="Logo">
                <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo-two" alt="Logo">
            </a>
        </div>

        <!-- Menu For Desktop Device -->
        <div class="main-nav">
            <div class="container-fluid">
                <div class="container-max">
                    <nav class="navbar navbar-expand-md navbar-light ">
                        <a class="navbar-brand" href="/{{ app()->getLocale() }}">
                            <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo-one" alt="Logo">
                            <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo-two" alt="Logo">
                        </a>

                        <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                            {!! Menu::renderMenuLocation('main-menu', [
                                                  'view' => 'menu',
                                                  'options' => ['class' => 'menu'],
                                              ]) !!}
                            <div class="nav-side d-display nav-side-mt">
                                <div class="nav-side-item">
                                    <div class="search-side-widget">
                                        <form class="search-side-form">
                                            <input type="search" class="form-control" placeholder="{{__('Search')}}...">
                                            <button type="submit" aria-label="Search Thamar Blog">
                                                <i class="bx bx-search"></i>
                                            </button>
                                        </form>
                                    </div>
                                </div>

                                <div class="nav-side-item">
                                    <div class="get-btn">
                                        <a href="/{{ app()->getLocale() }}/contact-us" class="default-btn btn-bg-two border-radius-50">{{__('Get A Quote')}} <i class='bx bx-chevron-right'></i></a>
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
                                    <a href="/{{ app()->getLocale() }}/contact-us" class="default-btn btn-bg-two border-radius-50">{{__('Get A Quote')}} <i class='bx bx-chevron-right'></i></a>
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
