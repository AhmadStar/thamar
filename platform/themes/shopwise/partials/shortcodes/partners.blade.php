
<!-- Brand Area -->
<div class="brand-area-two ptb-100" dir="ltr">
    <div class="container">
        <div class="section-title text-center">
            <span class="sp-color1">{{ __("Our Partners")}}</span>
            <h2>{{__('Partners')}}</h2>

        </div>
<br><br>
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
