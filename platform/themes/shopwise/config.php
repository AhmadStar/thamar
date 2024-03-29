<?php

use Botble\Base\Facades\BaseHelper;
use Botble\Shortcode\View\View;
use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these event can be override by package config.
    |
    */

    'events' => [

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme) {
            $version = get_cms_version();

            // $theme->asset()->usePath()->add('bootstrapcss', 'assets/css/bootstrap.min.css');
            $theme->asset()->usePath()->add('animatecss', 'assets/css/animate.min.css');
            $theme->asset()->usePath()->add('flaticoncss', 'assets/fonts/flaticon.css');
            $theme->asset()->usePath()->add('boxiconscss', 'assets/css/boxicons.min.css');
            $theme->asset()->usePath()->add('carouselcss', 'assets/css/owl.carousel.min.css');
            $theme->asset()->usePath()->add('owlccss', 'assets/css/owl.theme.default.min.css');
            $theme->asset()->usePath()->add('magnificcss', 'assets/css/magnific-popup.css');
            $theme->asset()->usePath()->add('nicecss', 'assets/css/nice-select.min.css');
            $theme->asset()->usePath()->add('meanmenucss', 'assets/css/meanmenu.css');
            $theme->asset()->usePath()->add('style', 'assets/css/style.css');
            $theme->asset()->usePath()->add('themedark', 'assets/css/theme-dark.css');

            $theme->asset()->usePath()->add('responsive', 'assets/css/responsive.css');

            if (BaseHelper::isRtlEnabled()) {
                $theme->asset()->usePath()->add('rtl-style', 'css/rtl-style.css', [], ['async'], $version);

                $theme->asset()->usePath()->add('thamar-style-rtl', 'css/thamar-style-rtl.css', [], ['async'], $version);

                $theme->asset()->usePath()->add('thamar-rtl', 'css/thamar-rtl.css', [], ['async'], $version);
            }

//            $theme->asset()->add('slick-style', 'https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css');

            $theme->asset()->usePath()->add('custome-style', 'assets/css/custome-style.css');

            $theme->asset()->container('header')->usePath()->add('jquery', 'assets/js/jquery.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrapjs', 'assets/js/bootstrap.bundle.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('carouseljs', 'assets/js/owl.carousel.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('magnificjs', 'assets/js/jquery.magnific-popup.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('selectjs', 'assets/js/jquery.nice-select.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('wowjs', 'assets/js/wow.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('meanmenujs', 'assets/js/meanmenu.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('ajaxchimpjs', 'assets/js/jquery.ajaxchimp.min.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('validatorjs', 'assets/js/form-validator.min.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('contactjs', 'assets/js/contact-form-script.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('customjs', 'assets/js/custom.js', ['jquery']);
//            $theme->asset()->container('footer')->add('slick', 'https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js', ['jquery']);



            if (function_exists('shortcode')) {
                $theme->composer([
                    'page',
                    'post',
                    'ecommerce.product',
                    'ecommerce.products',
                    'ecommerce.product-category',
                    'ecommerce.product-tag',
                    'ecommerce.brand',
                    'ecommerce.search',
                    'ecommerce.cart',
                ], function (View $view) {
                    $view->withShortcodes();
                });
            }

            app()->booted(function () use ($theme) {
                $theme->asset()->remove('language-css');
                $theme->asset()->remove('language-public-js');
            });
        },
    ],
];
