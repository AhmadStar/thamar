
<!-- Brand Area -->
<div class="brand-area-two ptb-100" dir="ltr">
    <div class="container">
        <div class="section-title text-center">

            <h2>{{__('Partners')}}</h2>
            {{--<span class="sp-color2">{{$shortcode->content_1}}</span>--}}
        </div>
        <div class="brand-slider owl-carousel owl-theme">
            @foreach ($partners as $partner)
            <div class="brand-item">
                    <img src="{{ RvMedia::getImageUrl($partner->logo) }}" alt="{{$partner->name}}">
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Brand Area End -->
