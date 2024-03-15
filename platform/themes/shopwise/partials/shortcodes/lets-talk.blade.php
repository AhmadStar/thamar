@php
    app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
    $lang = app()->getLocale();
@endphp

<div class="talk-area ptb-100">
    <div class="container">
        <div class="talk-content text-center">
            <div class="section-title text-center">
                <span class="sp-color1">{{$shortcode->title}}</span>
                <h2>{{$shortcode->content_1}}</h2>

            </div>
            <a href="/{{ $lang }}/contact-us" class="default-btn btn-bg-two border-radius-5">{{__('Contact Us')}}</a>
        </div>
    </div>
</div>

