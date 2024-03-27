<?php

use Botble\Ads\Facades\AdsManager;
use Botble\Ads\Models\Ads;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Models\FlashSale;
use Botble\Ecommerce\Models\ProductCollection;
use Botble\Faq\Models\FaqCategory;
use Botble\Shortcode\Compilers\Shortcode;
use Botble\SimpleSlider\Models\SimpleSlider;
use Botble\Testimonial\Models\Testimonial;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Supports\ThemeSupport;
use Botble\Partners\Models\Partners;

app()->booted(function () {
    ThemeSupport::registerGoogleMapsShortcode();
    ThemeSupport::registerYoutubeShortcode();

    if (is_plugin_active('testimonial')) {
        add_shortcode('testimonials', __('Testimonials'), __('Testimonials'), function (Shortcode $shortcode) {
            $testimonials = Testimonial::query()
                ->where(['status' => BaseStatusEnum::PUBLISHED])
                ->get();

            return Theme::partial('shortcodes.testimonials', [
                'title' => $shortcode->title,
                'testimonials' => $testimonials,
            ]);
        });

        shortcode()->setAdminConfig('testimonials', function (array $attributes) {
            return Theme::partial('shortcodes.testimonials-admin-config', compact('attributes'));
        });
    }

    if (is_plugin_active('newsletter')) {
        add_shortcode('newsletter-form', __('Newsletter Form'), __('Newsletter Form'), function (Shortcode $shortcode) {
            return Theme::partial('shortcodes.newsletter-form.index', compact('shortcode'));
        });

        shortcode()->setAdminConfig('newsletter-form', function (array $attributes) {
            return Theme::partial('shortcodes.newsletter-form.admin-config', compact('attributes'));
        });
    }

    if (is_plugin_active('contact')) {
        add_filter(CONTACT_FORM_TEMPLATE_VIEW, function () {
            return Theme::getThemeNamespace('partials.shortcodes.contact-form');
        }, 120);
    }

    if (is_plugin_active('blog')) {
        add_shortcode('featured-news', __('Featured News'), __('Featured News'), function (Shortcode $shortcode) {
            $posts = app(PostInterface::class)->getFeatured(3);

            return Theme::partial('shortcodes.featured-news', [
                'title' => $shortcode->title,
                'description' => $shortcode->description,
                'subtitle' => $shortcode->subtitle,
                'posts' => $posts,
            ]);
        });
        shortcode()->setAdminConfig('featured-news', function (array $attributes) {
            return Theme::partial('shortcodes.featured-news-admin-config', compact('attributes'));
        });
    }

    if (is_plugin_active('simple-slider')) {
        add_filter(SIMPLE_SLIDER_VIEW_TEMPLATE, function () {
            return Theme::getThemeNamespace('partials.shortcodes.simple-slider.index');
        }, 120);

        shortcode()->setAdminConfig('simple-slider', function (array $attributes) {
            $sliders = SimpleSlider::query()
                ->wherePublished()
                ->pluck('name', 'key')
                ->all();

            $ads = collect();
            if (is_plugin_active('ads')) {
                $ads = Ads::query()
                    ->wherePublished()
                    ->notExpired()
                    ->get();
            }

            return Theme::partial('shortcodes.simple-slider.admin-config', compact('attributes', 'sliders', 'ads'));
        });
    }

    if (is_plugin_active('faq')) {
        add_shortcode('faqs', __('FAQs'), __('List of FAQs'), function (Shortcode $shortcode) {
            $categories = FaqCategory::query()
                ->wherePublished()
                ->with([
                    'faqs' => function ($query) {
                        $query->wherePublished();
                    },
                ])
                ->orderBy('order')
                ->orderByDesc('created_at')
                ->when($shortcode->category_id, function ($query, $categoryId) {
                    $query->where('id', $categoryId);
                })
                ->get();

            return Theme::partial('shortcodes.faqs', compact('categories'));
        });

        shortcode()->setAdminConfig('faqs', function (array $attributes) {
            $categories = FaqCategory::query()
                ->wherePublished()
                ->pluck('name', 'id')
                ->all();

            return Theme::partial('shortcodes.faqs-admin-config', compact('attributes', 'categories'));
        });
    }


    // New Shortcodes
    add_shortcode('all', __('all'), __('all'), function (Shortcode $shortcode) {
        $field = '';
        return Theme::partial('shortcodes.all', compact('field'));
    });

    shortcode()->setAdminConfig('all', function (array $attributes) {
        return Theme::partial('shortcodes.all-admin-config', compact('attributes'));
    });

    add_shortcode('banner', __('banner'), __('banner'), function (Shortcode $shortcode) {
        $field = '';
        return Theme::partial('shortcodes.banner', compact('field','shortcode'));
    });

    shortcode()->setAdminConfig('banner', function (array $attributes) {
        return Theme::partial('shortcodes.banner-admin-config', compact('attributes'));
    });

    add_shortcode('about-home', __('about-home'), __('about-home'), function (Shortcode $shortcode) {

        return Theme::partial('shortcodes.about-home', compact('shortcode'));
    });

    shortcode()->setAdminConfig('about-home', function (array $attributes) {
        return Theme::partial('shortcodes.about-home-admin-config', compact('attributes'));
    });




    add_shortcode('about-who-we-are', __('about-who-we-are'), __('about-who-we-are'), function (Shortcode $shortcode) {

        return Theme::partial('shortcodes.about-who-we-are', compact('shortcode'));
    });

    shortcode()->setAdminConfig('about-who-we-are', function (array $attributes) {
        return Theme::partial('shortcodes.about-who-we-are-admin-config', compact('attributes'));
    });



    add_shortcode('about-us', __('about-us'), __('about-us'), function (Shortcode $shortcode) {

        return Theme::partial('shortcodes.about-us', compact('shortcode'));
    });

    shortcode()->setAdminConfig('about-us', function (array $attributes) {
        return Theme::partial('shortcodes.about-us-admin-config', compact('attributes'));
    });

    add_shortcode('services-home', __('services-home'), __('services-home'), function (Shortcode $shortcode) {
        $field = '';
        $services = \Botble\Services\Models\Services::query()
            ->wherePublished()
            ->where('service_type','=',3)
            ->limit(3)
            ->get();

        return Theme::partial('shortcodes.services-home', compact('shortcode','services'));
    });

    shortcode()->setAdminConfig('services-home', function (array $attributes) {

        return Theme::partial('shortcodes.services-home-admin-config', compact('attributes'));
    });

    add_shortcode('soloutions-home', __('soloutions-home'), __('soloutions-home'), function (Shortcode $shortcode) {
        $services = \Botble\Services\Models\Services::query()
            ->wherePublished()
            ->where('service_type','=',1)
            ->limit(3)
            ->get();

        return Theme::partial('shortcodes.soloutions-home', compact('services','shortcode'));
    });

    shortcode()->setAdminConfig('soloutions-home', function (array $attributes) {
        return Theme::partial('shortcodes.soloutions-home-admin-config', compact('attributes'));
    });

    add_shortcode('video-home', __('video-home'), __('video-home'), function (Shortcode $shortcode) {
        $field = '';
        return Theme::partial('shortcodes.video-home', compact('shortcode'));
    });

    shortcode()->setAdminConfig('video-home', function (array $attributes) {
        return Theme::partial('shortcodes.video-home-admin-config', compact('attributes'));
    });

    add_shortcode('case-study', __('case-study'), __('case-study'), function (Shortcode $shortcode) {

        $projects = Botble\Projects\Models\Projects::query()
            ->wherePublished()
            ->limit(4)
            ->get();
        return Theme::partial('shortcodes.case-study', compact('shortcode','projects'));
    });

    shortcode()->setAdminConfig('case-study', function (array $attributes) {
        return Theme::partial('shortcodes.case-study-admin-config', compact('attributes'));
    });

    add_shortcode('lets-talk', __('lets-talk'), __('lets-talk'), function (Shortcode $shortcode) {
        $field = '';
        return Theme::partial('shortcodes.lets-talk', compact('shortcode'));
    });

    shortcode()->setAdminConfig('lets-talk', function (array $attributes) {
        return Theme::partial('shortcodes.lets-talk-admin-config', compact('attributes'));
    });

    add_shortcode('technology-home', __('technology-home'), __('technology-home'), function (Shortcode $shortcode) {
        $field = '';
        return Theme::partial('shortcodes.technology-home', compact('field'));
    });

    shortcode()->setAdminConfig('technology-home', function (array $attributes) {
        return Theme::partial('shortcodes.technology-home-admin-config', compact('attributes'));
    });

    add_shortcode('partners', __('partners'), __('partners'), function (Shortcode $shortcode) {

        $partners = Partners::query()
            ->where(['status' => BaseStatusEnum::PUBLISHED])
            ->get();

        return Theme::partial('shortcodes.partners', compact('partners'));
    });

    shortcode()->setAdminConfig('partners', function (array $attributes) {
        return Theme::partial('shortcodes.partners-admin-config', compact('attributes'));
    });

    add_shortcode('clients', __('clients'), __('clients'), function (Shortcode $shortcode) {
        $testimonials = Testimonial::query()
                ->where(['status' => BaseStatusEnum::PUBLISHED])
                ->get();

        return Theme::partial('shortcodes.clients', compact('testimonials'));
    });

    shortcode()->setAdminConfig('clients', function (array $attributes) {
        return Theme::partial('shortcodes.clients-admin-config', compact('attributes'));
    });

    add_shortcode('blog-home', __('blog-home'), __('blog-home'), function (Shortcode $shortcode) {
        $posts = app(PostInterface::class)->getRecentPosts(3);

        return Theme::partial('shortcodes.blog-home', compact('posts'));
    });

    shortcode()->setAdminConfig('blog-home', function (array $attributes) {
        return Theme::partial('shortcodes.blog-home-admin-config', compact('attributes'));
    });

});
