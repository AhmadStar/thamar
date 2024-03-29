
<div class="banner-seven-slide owl-carousel owl-theme" dir="ltr">
    @foreach($sliders->loadMissing('metadata') as $slider)
    <div class="banner-five-area">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="banner-five-content">
                        <span>TECHNOLOGY & IT SOLUTIONS</span>
                        <h1>It Solutions , <b>Digital</b> Technology & Services All Around the World</h1>
                        <p>
                            Aenean Sollicitudin, Lorem quis cursus a auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit duis sed odio sit amet nibh.
                        </p>
                        <a href="contact.html" class="default-btn btn-bg-two border-radius-50 ">Get A Quote</a>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="banner-five-img">
                        <img src="{{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }}" alt="Images">
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach
</div>
