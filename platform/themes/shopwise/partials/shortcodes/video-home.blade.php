@php
    app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
    $lang = app()->getLocale();
@endphp

<!-- Build Area -->
<div class="build-area pt-100 pb-70">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 col-md-8">
                <div class="build-content">
                    <div class="section-title">
                        <h2>{{$shortcode->title}}</h2>
                        <span class="sp-color2">{{$shortcode->content_1}}</span>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-4">
                <div class="build-btn-area">
                    <a href="/{{ $lang }}/contact-us" class="default-btn btn-bg-two border-radius-50">{{__('Contact Us')}} <i class='bx bx-chevron-right'></i></a>
                </div>
            </div>
        </div>

        <div class="row pt-45 youtube-vid">
            <div class="col-lg-12">
                <div class="play-btn-area">
                    <a href="https://www.youtube.com/watch?v=tUP5S4YdEJo" class="build-play popup-btn"><i class='bx bx-play'></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Build Area End -->
