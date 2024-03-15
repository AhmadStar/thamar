<!-- Clients Area -->
<section class="clients-area pt-100 pb-70" dir="ltr">
    <div class="container">
        <div class="section-title text-center">
            <span class="sp-color2">{{ __("Our Clients")}}</span>
            <h2>{{ __("Our Clients Feedback")}}</h2>
        </div>

        <div class="clients-slider owl-carousel owl-theme pt-45">
            @foreach($testimonials as $testimonial)

                <div class="clients-content">
                    <div class="content">
                        <img src="{{ RvMedia::getImageUrl($testimonial->image, null, false, RvMedia::getDefaultImage()) }}" alt="{{ $testimonial->name }}" loading="lazy">
                        <i class='bx bxs-quote-alt-left'></i>
                        <h3>{{ $testimonial->name }}</h3>
                        <span>{{ $testimonial->company }}</span>
                    </div>
                    <p>
                        {!! BaseHelper::clean($testimonial->content) !!}
                    </p>
                </div>

            @endforeach

        </div>
    </div>

    <div class="client-circle">
        <div class="client-circle-1">
            <div class="circle"></div>
        </div>
        <div class="client-circle-2">
            <div class="circle"></div>
        </div>
        <div class="client-circle-3">
            <div class="circle"></div>
        </div>
        <div class="client-circle-4">
            <div class="circle"></div>
        </div>
        <div class="client-circle-5">
            <div class="circle"></div>
        </div>
        <div class="client-circle-6">
            <div class="circle"></div>
        </div>
        <div class="client-circle-7">
            <div class="circle"></div>
        </div>
    </div>
</section>
<!-- Clients Area End -->
