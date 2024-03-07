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

            // You may use this event to set up your assets.
            // $theme->asset()->usePath()->add('animate', 'css/animate.css');
            // $theme->asset()->usePath()->add('bootstrap-css', 'plugins/bootstrap/css/bootstrap.min.css');
            // $theme->asset()->usePath()->add('ionicons', 'css/ionicons.min.css');
            // $theme->asset()->usePath()->add('themify-icons', 'css/themify-icons.css');
            // $theme->asset()->usePath()->add('linearicons', 'css/linearicons.css');
            // $theme->asset()->usePath()->add('flaticon', 'css/flaticon.css');
            // $theme->asset()->usePath()->add('simple-line-icons', 'css/simple-line-icons.css');
            // $theme->asset()->usePath()->add('owl.carousel', 'plugins/owlcarousel/css/owl.carousel.min.css');
            // $theme->asset()->usePath()->add('owl.theme', 'plugins/owlcarousel/css/owl.theme.css');
            // $theme->asset()->usePath()->add('owl.theme.default', 'plugins/owlcarousel/css/owl.theme.default.min.css');
            // $theme->asset()->usePath()->add('slick-theme-css', 'plugins/slick/slick-theme.css');
            // $theme->asset()->usePath()->add('slick-css', 'plugins/slick/slick.css');
            // $theme->asset()->usePath()->add('magnific-popup-css', 'css/magnific-popup.css');
            // $theme->asset()->usePath()->add('style', 'css/style.css', [], [], $version);

            $theme->asset()->usePath()->add('bootstrapcss', 'assets/css/bootstrap.min.css');
            $theme->asset()->usePath()->add('animatecss', 'assets/css/animate.min.css');
            $theme->asset()->usePath()->add('flaticoncss', 'assets/fonts/flaticon.css');
            $theme->asset()->usePath()->add('boxiconscss', 'assets/css/boxicons.min.css');
            $theme->asset()->usePath()->add('carouselcss', 'assets/css/owl.carousel.min.css');
            $theme->asset()->usePath()->add('owlccss', 'assets/css/owl.theme.default.min.css');
            $theme->asset()->usePath()->add('magnificcss', 'assets/css/magnific-popup.css');
            $theme->asset()->usePath()->add('nicecss', 'assets/css/nice-select.min.css');
            $theme->asset()->usePath()->add('meanmenucss', 'assets/css/meanmenu.css');
            $theme->asset()->usePath()->add('style', 'assets/css/style.css');
            $theme->asset()->usePath()->add('responsive', 'assets/css/responsive.css');
            $theme->asset()->usePath()->add('themedark', 'assets/css/theme-dark.css');


            if (BaseHelper::isRtlEnabled()) {
                $theme->asset()->usePath()->add('rtl-style', 'assets/css/rtl-style.css', [], [], $version);
            }

            // $theme->asset()->container('header')->usePath()->add('jquery', 'js/jquery-3.6.0.min.js');
            // $theme->asset()->container('footer')->usePath()->add('popper', 'js/popper.min.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('bootstrap-js', 'plugins/bootstrap/js/bootstrap.min.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('magnific-popup-js', 'js/magnific-popup.min.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('waypoints', 'js/waypoints.min.js', ['jquery'], [], '4.0.1');
            // $theme->asset()->container('footer')->usePath()->add('slick-js', 'plugins/slick/slick.min.js');
            // $theme->asset()->container('footer')->usePath()->add('carousel-js', 'plugins/owlcarousel/js/owl.carousel.min.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('elevatezoom-js', 'js/jquery.elevatezoom.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('countdown', 'js/jquery.countdown.min.js', ['jquery']);
            // $theme->asset()->container('footer')->usePath()->add('scripts', 'js/scripts.js', ['jquery', 'jquery-ui-js'], [], $version);
            // $theme->asset()->container('footer')->usePath()->add('backend-js', 'js/backend.js', ['jquery', 'jquery-ui-js'], [], $version);

            $theme->asset()->container('header')->usePath()->add('jquery', 'assets/js/jquery.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrapjs', 'assets/js/bootstrap.bundle.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('carouseljs', 'assets/js/owl.carousel.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('magnificjs', 'assets/js/jquery.magnific-popup.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('selectjs', 'assets/js/jquery.nice-select.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('wowjs', 'assets/js/wow.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('meanmenujs', 'assets/js/meanmenu.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('ajaxchimpjs', 'assets/js/jquery.ajaxchimp.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('validatorjs', 'assets/js/form-validator.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('contactjs', 'assets/js/contact-form-script.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('customjs', 'assets/js/custom.js', ['jquery']);


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
