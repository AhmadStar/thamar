@php
    app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
    $lang = app()->getLocale();
    $arrow = 'ar' ? 'left' : 'right';
@endphp


<!-- Inner Banner -->
<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h1>{{ $service->name }}</h1>
            <ul>
                <li>
                    <a href="/{{$lang}}">{{ __("Home")}}</a>
                </li>
                <li>
                    <i class='bx bx-chevrons-{{$arrow}}'></i>
                </li>
                <li>{{ $service->name }}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape">
        <img src="https://new.jusoortraining.com/storage/general/effect-team-1.png" alt="{{ $service->name }}">
    </div>
</div>
<!-- Inner Banner End -->


{{-- <!-- Services widget Area -->
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
<!-- Services widget Area End --> --}}


<!-- Service Details Area -->
<div class="service-details-area pt-100 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="service-article">
                    <div class="service-article-img">
                       <img src="{{ RvMedia::getImageUrl($service->image) }}" alt="{{$service->name}}">
                    </div>
                    <div class="service-article-content">
                        <h2>{{ $service->name }}</h2>
                        {!! $service->content !!}
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="side-bar-area">
                    <div class="side-bar-widget">
                        <h3 class="title">{{ __("Our Services") }}</h3>
                        <div class="side-bar-categories">
                            <ul>
                                @foreach ($services as $service)
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="/{{$lang}}/service/{{$service->slug}}" target="_blank">{{ $service->name }}</a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>

                    {{-- <div class="side-bar-widget">
                        <h3 class="title">Tag Cloud</h3>
                        <ul class="side-bar-widget-tag">
                            <li><a href="service-details.html" target="_blank">Android</a></li>
                            <li><a href="service-details.html" target="_blank">Creative</a></li>
                            <li><a href="service-details.html" target="_blank">App</a></li>
                            <li><a href="service-details.html" target="_blank">IOS</a></li>
                            <li><a href="service-details.html" target="_blank">Business</a></li>
                            <li><a href="service-details.html" target="_blank">Consulting</a></li>
                        </ul>
                    </div>

                    <div class="side-bar-widget">
                        <h3 class="title">Gallery</h3>
                        <ul class="blog-gallery">
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img1.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img2.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img3.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img4.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img5.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img6.jpg" alt="image">
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="side-bar-widget">
                        <h3 class="title">Archive</h3>
                        <div class="side-bar-categories">
                            <ul>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="service-details.html" target="_blank">Design<span>[70]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="service-details.html" target="_blank">Business<span>[24]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="service-details.html" target="_blank">Development<span>[08]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="service-details.html" target="_blank">Technology <span>[17]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="service-details.html" target="_blank">Startup <span>[20]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="service-details.html" target="_blank">Marketing Growth <span>[13]</span></a>
                                </li>
                            </ul>
                        </div>
                    </div> --}}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service Details Area End -->
