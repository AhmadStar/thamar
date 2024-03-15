{{-- @php
    dd($shortcode);
@endphp --}}
<!-- Banner Area Two -->
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
                            <a href="about.html" class="default-btn btn-bg-two border-radius-50">{{__('Learn More')}} <i class='bx bx-chevron-right'></i></a>
                            <a href="contact.html" class="default-btn btn-bg-one border-radius-50 ml-20">{{__('Contact Us')}} <i class='bx bx-chevron-right'></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-7">
                    <div class="banner-img">
                        <img src="{{ RvMedia::getImageUrl($shortcode->image) }}" alt="Images">
                        <div class="banner-img-shape">
                            <img src="themes/shopwise/assets/images/home-three/home-three-shape.png" alt="Images">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container" dir="ltr">
        <div class="banner-sub-slider owl-carousel owl-theme">
            <div class="banner-sub-item">
                <img src="{{ RvMedia::getImageUrl($shortcode->achievement1img) }}" alt="Images">
                <div class="content">
                    <h3>{{ $shortcode->achievement1 }}</h3>
                    <span>{{ $shortcode->achievement1text }}</span>
                </div>
            </div>

            <div class="banner-sub-item">
                <img src="{{ RvMedia::getImageUrl($shortcode->achievement2img) }}" alt="Images">
                <div class="content">
                    <h3>{{ $shortcode->achievement2 }}</h3>
                    <span>{{ $shortcode->achievement2text }}</span>
                </div>
            </div>

            <div class="banner-sub-item">
                <img src="{{ RvMedia::getImageUrl($shortcode->achievement3img) }}" alt="Images">
                <div class="content">
                    <h3>{{ $shortcode->achievement3 }}</h3>
                    <span>{{ $shortcode->achievement3text }}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner Area Two End -->
