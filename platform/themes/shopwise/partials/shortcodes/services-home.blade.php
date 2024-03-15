<!-- Security Area -->
<div class="security-area pt-100 pb-70">
    <div class="container">
        <div class="section-title text-center">

            <h2>{{$shortcode->title}}</h2>
            <span class="sp-color2">{{$shortcode->content_1}}</span>
        </div>
        <div class="row pt-45">

            @foreach($services as $service)
            <div class="col-lg-4 col-sm-6">
                <div class="security-card">
                    <img src="{{ RvMedia::getImageUrl($service->icon) }}" alt="{{$service->name}}" loading="lazy">
                    <h3><a href="/">{{$service->name}}</a></h3>
                    <p>{{$service->summary}}</p>
                </div>
            </div>

            @endforeach

        </div>
    </div>
</div>
<!-- Security Area End -->
