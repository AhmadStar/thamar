@php
    app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
    $lang = app()->getLocale();
@endphp

<section class="services-area-three pt-100 pb-70">
    <div class="container">
        <div class="section-title text-center">
            <h2>{{$shortcode->title}}</h2>
            <span class="sp-color2">{{$shortcode->content_1}}</span>
        </div>
        <div class="row pt-45">
            @foreach($services as $service)
                <div class="col-lg-4 col-md-6">
                    <div class="services-item">
                        <a href="/{{$lang}}/service/{{$service->slug}}">
                            <img src="{{ RvMedia::getImageUrl($service->image) }}" alt="{{$service->name}}">
                        </a>
                        <div class="content">
                            <img src="{{ RvMedia::getImageUrl($service->icon) }}" alt="{{$service->name}}" loading="lazy">
                            <span><a href="/{{$lang}}/service/{{$service->slug}}">{{__('Thamar Consulting')}}</a></span>
                            <h3><a href="/{{$lang}}/service/{{$service->slug}}">{{$service->name}}</a></h3>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
