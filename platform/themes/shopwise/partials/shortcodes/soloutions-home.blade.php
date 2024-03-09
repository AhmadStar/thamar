<!-- Services Area Three -->
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
                        <a href="service-details.html">
                            <img src="{{ RvMedia::getImageUrl($service->image) }}" alt="{{$service->name}}">
                        </a>
                        <div class="content">
                            <img src="{{ RvMedia::getImageUrl($service->icon) }}" alt="{{$service->name}}">
                            {{--<i class="flaticon-data-analytics"></i>--}}
                            <span><a href="/">{{__('Thamar Consulting')}}</a></span>
                            <h3><a href="/">{{$service->name}}</a></h3>
                            {{--{{$service->summary}}--}}
                        </div>
                    </div>
                </div>



            @endforeach




        </div>
    </div>
</section>
<!-- Services Area Three End -->
