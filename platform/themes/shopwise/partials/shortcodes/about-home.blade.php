
<!-- About Area -->
<div class="about-area about-bg pt-100 pb-70">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="about-img-2">
                    <img src="{{ RvMedia::getImageUrl($shortcode->image) }}" loading="lazy" alt="About Images">
                </div>
            </div>

            <div class="col-lg-6">
                <div class="about-content-2 ml-20">
                    <div class="section-title">
                        <span class="sp-color1">About Us</span>
                        <h2>{{$shortcode->title}}</h2>
                        <p>
                            {{$shortcode->content_1}}</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-6">
                            <div class="about-card">
                                <div class="content">
                                    <i class="flaticon-practice"></i>
                                    <h3>{{$shortcode->s_title}}</h3>
                                </div>
                                <p>{{$shortcode->s_content_1}}</p>
                            </div>
                        </div>

                        <div class="col-lg-6 col-6">
                            <div class="about-card">
                                <div class="content">
                                    <i class="flaticon-help"></i>
                                    <h3>{{$shortcode->s_title_2}}</h3>
                                </div>
                                <p>{{$shortcode->s_content_2}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About Area End -->
