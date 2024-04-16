<div class="section-hero-slider about-bg">
    {{--<div class="container1">--}}
    {{--<div id="slick" class="hero-slider" style="direction: ltr">--}}

    {{--@foreach ($sliders->loadMissing('metadata') as $key => $slider)--}}
    {{--<div class="slide{{ $key + 1 }} office-photo" style="direction: rtl">--}}
    {{--<div class="text--holder">--}}
    {{--@if ($slider->title)--}}
    {{--<h2 class="staggered-animation" data-animation="slideInLeft" data-animation-delay="1s">--}}
    {{--{{ $slider->title }}</h2>--}}
    {{--@endif--}}
    {{--@if ($slider->description)--}}
    {{--<h5 class="mb-3 staggered-animation font-weight-light" data-animation="slideInLeft"--}}
    {{--data-animation-delay="0.5s">{{ $slider->description }}</h5>--}}
    {{--@endif--}}
    {{--</div>--}}
    {{--<div class="layer-0"></div>--}}
    {{--<div class="img--holder"--}}
    {{--style="background-image: url({{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }});">--}}
    {{--</div>--}}
    {{--</div>--}}
    {{--@endforeach--}}

    {{--</div>--}}
            <!-- /#slick -->

    <div class="banner-seven-slide owl-carousel owl-theme" dir="ltr">
        @foreach($sliders->loadMissing('metadata') as $slider)
            <div class="banner-five-area " style="
            background: url(https://staging.thamar-consulting.com/storage/general/blurred-soft-people-meeting-table-business-people-talking-modern-office-generative-ai-1.jpg)
            ">
                {{--<div class=" zoom-infinite"--}}
                     {{--style="--}}
            {{--background: url(https://staging.thamar-consulting.com/storage/general/blurred-soft-people-meeting-table-business-people-talking-modern-office-generative-ai-1.jpg)--}}
            {{--"></div>--}}
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-lg-6">
                            <div class="banner-five-content">
                                <span>Thamar Consulting</span>
                                @if ($slider->title)
                                    <h1 class="staggered-animation" data-animation="slideInLeft"
                                        data-animation-delay="1s">
                                        {{ $slider->title }}</h1>
                                @endif
                                @if ($slider->description)
                                    <p class="mb-3 staggered-animation font-weight-light" data-animation="slideInLeft"
                                       data-animation-delay="0.5s">{{ $slider->description }}</p>
                                @endif
                                {{--<p>--}}
                                {{--Aenean Sollicitudin, Lorem quis cursus a auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit duis sed odio sit amet nibh.--}}
                                {{--</p>--}}
                                <a class="default-btn btn-bg-two border-radius-50 " href="{{ $slider->link }}"
                                   data-animation="slideInLeft"
                                   data-animation-delay="1.5s">{!! BaseHelper::clean($slider->getMetaData('button_text', true) ?: __('Shop Now')) !!}</a>


                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="banner-five-img">
                                <img src="{{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }}"
                                     alt="Images">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <div class="container" dir="ltr">
        <div class="banner-sub-slider owl-carousel owl-theme">
            <div class="banner-sub-item">

                <img src="{{ RvMedia::getImageUrl($shortcode->achievement1img) }}"
                     alt="{{ $shortcode->achievement1 }}" loading="lazy">
                <div class="content">
                    <p class="h3-number">{{ $shortcode->achievement1 }}</p>
                    <span>{{ $shortcode->achievement1text }}</span>
                </div>
            </div>

            <div class="banner-sub-item">
                <img src="{{ RvMedia::getImageUrl($shortcode->achievement2img) }}"
                     alt="{{ $shortcode->achievement2 }}" loading="lazy">
                <div class="content">
                    <p class="h3-number">{{ $shortcode->achievement2 }}</p>
                    <span>{{ $shortcode->achievement2text }}</span>
                </div>
            </div>

            <div class="banner-sub-item">
                <img src="{{ RvMedia::getImageUrl($shortcode->achievement3img) }}"
                     alt="{{ $shortcode->achievement3 }}" loading="lazy">
                <div class="content">
                    <p class="h3-number">{{ $shortcode->achievement3 }}</p>
                    <span>{{ $shortcode->achievement3text }}</span>
                </div>


            </div>
</div>
    </div>
</div>