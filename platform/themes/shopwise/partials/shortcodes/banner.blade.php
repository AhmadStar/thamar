@php
    app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
    $lang = app()->getLocale();
@endphp

<div class="banner-area-two">
    <div class="container-fluid">
        <div class="container-max">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="banner-content">
                        <h1>{{$shortcode->title}}</h1>
                        <p>
                            {{-- {{$shortcode->content_1}} --}}
                        </p>
                        <div class="banner-btn">
                            <a href="/{{ $lang }}/about-us" class="default-btn btn-bg-two border-radius-50">{{__('Learn More')}} <i class='bx bx-chevron-right'></i></a>
                            <a href="/{{ $lang }}/contact-us" class="default-btn btn-bg-one border-radius-50 ml-20">{{__('Contact Us')}} <i class='bx bx-chevron-right'></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-7">
                    <div class="banner-img">
                        <img src="{{ RvMedia::getImageUrl($shortcode->image) }}" alt="{{$shortcode->title}}">
                        <div class="banner-img-shape">
                            <img src="themes/shopwise/assets/images/home-three/home-three-shape.png" alt="{{$shortcode->title}}" loading="lazy">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container" dir="ltr">
        <div class="banner-sub-slider owl-carousel owl-theme">
            <div class="banner-sub-item">
                <img src="{{ RvMedia::getImageUrl($shortcode->achievement1img) }}" alt="{{ $shortcode->achievement1 }}" loading="lazy">
                <div class="content">
                    <p class="h3-number">{{ $shortcode->achievement1 }}</p>
                    <span>{{ $shortcode->achievement1text }}</span>
                </div>
            </div>

            <div class="banner-sub-item">
                <img src="{{ RvMedia::getImageUrl($shortcode->achievement2img) }}" alt="{{ $shortcode->achievement2 }}" loading="lazy">
                <div class="content">
                    <p class="h3-number">{{ $shortcode->achievement2 }}</p>
                    <span>{{ $shortcode->achievement2text }}</span>
                </div>
            </div>

            <div class="banner-sub-item">
                <img src="{{ RvMedia::getImageUrl($shortcode->achievement3img) }}" alt="{{ $shortcode->achievement3 }}" loading="lazy">
                <div class="content">
                    <p class="h3-number">{{ $shortcode->achievement3 }}</p>
                    <span>{{ $shortcode->achievement3text }}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner Area Two End -->
