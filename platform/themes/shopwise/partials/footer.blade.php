@php
 $lang = app()->getLocale();
 $arrow = 'ar' ? 'left' : 'right';
@endphp

<!-- Footer Area End -->
<footer class="footer-area footer-bg">
    <div class="container">
        <div class="footer-top pt-100 pb-70">
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="footer-widget">
                        <div class="footer-logo">
                            <a href="/">
                                <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="Images">
                            </a>
                        </div>
                        <p>
                          {{theme_option('about-us')}}
                        </p>
                        <div class="footer-call-content">
                            <h3>{{__('Get A Quote')}}</h3>
                            <span><a href="tel:{{theme_option('hotline')}}" dir="ltr">{{theme_option('hotline')}}</a></span>
                            <i class='fa fa-phone'></i>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-sm-6">
                    <div class="footer-widget pl-2">
                        <?php
                        $services = \Botble\Services\Models\Services::query()
                                ->wherePublished()
                               // ->where('service_type','=',1)
                                ->limit(8)
                                ->get();
                        ?>
                        <h3>{{__('Services')}}</h3>
                        <ul class="footer-list">
                            @foreach($services as $service)
                            <li>
                                <a href="/service/{{ $service->slug }}" target="_blank">
                                    <i class='bx bx-chevron-{{$arrow}}'></i>
                                    {{$service->name}}
                                </a>
                            </li>
                            @endforeach

                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget pl-5">
                        <?php
                        $posts = app(\Botble\Blog\Repositories\Interfaces\PostInterface::class)->getFeatured(3);
                                ?>
                        <h3>{{__('Our Blog')}}</h3>
                         <ul class="footer-blog">
                             @foreach($posts as $post)
                            <li>
                                <a href="{{$post->url}}">
                                    <img src="{{ RvMedia::getImageUrl($post->image,'thumb') }}" alt="{{ $post->name }}">
                                </a>
                                <div class="content">
                                    <h3><a href="{{$post->url}}">{{$post->name}}</a></h3>
                                    <span>{{ $post->created_at->translatedFormat('M d, Y')}}</span>
                                </div>
                            </li>
                             @endforeach

                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget">
                        <h3>{{__('Newsletter')}}</h3>
                        <p>{{__('Subscribe to our Newsletter')}}</p>
                        <div class="newsletter-area">
                            <form id="subscribeForm" method="post" class="subscibe-form newsletter-form" action="{{ route('public.newsletter.subscribe') }}">
                                @csrf
                                <input type="email" name="email" class="form-control" placeholder="{{__('Enter Your Email')}}" required autocomplete="off">
                                <button class="subscribe-btn" type="submit" id="buttonText">
                                    <i class='bx bx-paper-plane'></i>
                                </button>
                                <button class="btn btn-yellow " id="loader" style="display: none"><i class="fas fa-spinner fa-spin"></i></button>
                                <div id="validator-newsletter" class="form-result"></div>
                                <div id="message" style="display: none;"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="copy-right-area">
            <div class="copy-right-text">
                <p>

                     {{theme_option('copyright')}}
                </p>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Area End -->

<!-- Color Switch Button -->
<div class="switch-box">
    <label id="switch" class="switch">
        <input type="checkbox" onchange="toggleTheme()" id="slider">
        <span class="slider round"></span>
    </label>
</div>
<!-- Color Switch Button End -->


    <script>
        window.trans = {
            "No reviews!": "{{ __('No reviews!') }}",
            "Days": "{{ __('Days') }}",
            "Hours": "{{ __('Hours') }}",
            "Minutes": "{{ __('Minutes') }}",
            "Seconds": "{{ __('Seconds') }}",
        };

        window.siteUrl = "{{ route('public.index') }}";
    </script>

    {!! Theme::footer() !!}

    </body>
</html>
