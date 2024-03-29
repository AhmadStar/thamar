<div class="section-hero-slider">
    <div class="container1">
    <div id="slick" class="hero-slider" style="direction: ltr">

            @foreach($sliders->loadMissing('metadata') as $key=>$slider)
                <div class="slide{{$key+1}} office-photo" style="direction: rtl">
                    <div class="text--holder">
                        @if ($slider->title)
                            <h2 class="staggered-animation" data-animation="slideInLeft"
                                data-animation-delay="1s">{{ $slider->title }}</h2>
                        @endif
                        @if ($slider->description)
                            <h5 class="mb-3 staggered-animation font-weight-light" data-animation="slideInLeft"
                                data-animation-delay="0.5s">{{ $slider->description }}</h5>
                        @endif
                    </div>
                    <div class="layer-0"></div>
                    <div class="img--holder"
                         style="background-image: url({{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }});"></div>
                </div>
            @endforeach
            {{--<div class="slide2">--}}
            {{--<div class="text--holder">--}}
            {{--<h2>We want you to love your smile</h2>--}}
            {{--</div>--}}
            {{--<div class="img--holder" style="background-image: url(https://source.unsplash.com/random?1);"></div>--}}
            {{--</div>--}}
            {{--<div class="slide3">--}}
            {{--<div class="text--holder">--}}
            {{--<h2>New Patient Special</h2>--}}
            {{--<p>Cleaning, Xrays, and Exam<br>only $129!</p>--}}
            {{--</div>--}}
            {{--<div class="img--holder" style="background-image: url(https://source.unsplash.com/random?3);"></div>--}}
            {{--</div>--}}
        </div>
        <!-- /#slick -->
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
    <!-- /.container -->

</div>


