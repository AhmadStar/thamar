@php
    app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
    $lang = app()->getLocale();
    $arrow = 'ar' ? 'left' : 'right';
@endphp


<!-- Inner Banner -->
<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h3>{{ __("Services") }}</h3>
            <ul>
                <li>
                    <a href="/{{$lang}}">{{ __("Home")}}</a>
                </li>
                <li>
                    <i class='bx bx-chevrons-{{$arrow}}'></i>
                </li>
                <li>{{ __("Services") }}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape">
        <img src="https://new.jusoortraining.com/storage/general/effect-team-1.png" alt="{{ __("Services") }}">
    </div>
</div>
<!-- Inner Banner End -->


<!-- Services widget Area -->
<section class="services-widget-area pt-100 pb-70">
    <div class="container">
        <div class="section-title text-center">
            <span class="sp-color2">{{ __("Our Services") }}</span>
            <h2>We Provide a Wide Variety of It Services</h2>
        </div>
        <div class="row pt-45">
            @foreach ($services as $service)
            <div class="col-lg-4 col-md-6">
                <div class="services-item">
                    <a href="/{{$lang}}/service/{{$service->slug}}">
                        <img src="{{ RvMedia::getImageUrl($service->image) }}" alt="{{ $service->name }}">
                    </a>
                    <div class="content">
                        <i class="flaticon-consultant"></i>
                        <span><a href="/{{$lang}}/service/{{$service->slug}}">{{$service->name}}</a></span>
                        <h3><a href="/{{$lang}}/service-type/{{$service->service_type}}">{{$service->service_type}}</a></h3>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<!-- Services widget Area End -->
