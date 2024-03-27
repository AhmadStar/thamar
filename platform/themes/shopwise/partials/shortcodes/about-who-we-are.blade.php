<div class="about-area ptb-100  pt-100 pb-70">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="about-play">
                    <img src="{{ RvMedia::getImageUrl($shortcode->image) }}" loading="lazy" alt="About Images">
                    <div class="about-play-content">
                        <span>Watch Our Intro Video</span>
                        <h2>Perfect Solution for It Services!</h2>
                        <div class="play-on-area">
                            <a href="{{$shortcode->vid}}" class="play-on popup-btn"><i class='bx bx-play'></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="about-content ml-25">
                    <div class="section-title">
                        <span class="sp-color2">15 Years of Experience</span>
                        <h2>{{$shortcode->title}}</h2>
                        <p>
                            {!! $shortcode->content_1  !!}</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <ul class="about-list ">
                                <li><i class='bx bxs-check-circle'></i>{{$shortcode->s_title}}</li>
                                <li><i class='bx bxs-check-circle'></i>{{$shortcode->s_title_2}}</li>
                                <li><i class='bx bxs-check-circle'></i>{{$shortcode->s_title_3}}</li>
                            </ul>
                        </div>

                        {{--<div class="col-lg-6 col-md-6">--}}
                            {{--<ul class="about-list about-list-2 text-start">--}}
                                {{--<li><i class='bx bxs-check-circle'></i>Change the Volume of Expected</li>--}}
                                {{--<li><i class='bx bxs-check-circle'></i>Easy to Customer Services</li>--}}
                                {{--<li><i class='bx bxs-check-circle'></i>Good Quality Products Services</li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    </div>
                    <p class="about-content-text">
                        {!! $shortcode->content_2  !!}</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About Area End -->

