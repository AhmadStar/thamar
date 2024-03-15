
<!-- Brand Area -->
<div class="brand-area-two ptb-100" dir="ltr">
    <div class="container">
        <div class="brand-slider owl-carousel owl-theme">
            @foreach ($partners as $partner)
            <div class="brand-item">
                    <img src="{{ RvMedia::getImageUrl($partner->logo) }}" alt="{{$partner->name}}" loading="lazy">
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Brand Area End -->
