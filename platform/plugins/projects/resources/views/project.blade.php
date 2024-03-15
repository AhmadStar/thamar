@php
    app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
    $lang = app()->getLocale();
@endphp


<!-- Inner Banner -->
<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h3>{{ __("Projects") }}</h3>
            <ul>
                <li>
                    <a href="/{{$lang}}">{{ __("Home")}}</a>
                </li>
                <li>
                    <i class='bx bx-chevrons-right'></i>
                </li>
                <li>{{ $project->name }}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape">
        <img src="https://new.jusoortraining.com/storage/general/effect-team-1.png" alt="{{ $project->name }}">
    </div>
</div>
<!-- Inner Banner End -->


{{-- <!-- Projects widget Area -->
<section class="projects-widget-area pt-100 pb-70">
    <div class="container">
        <div class="section-title text-center">
            <span class="sp-color2">{{ __("Our Projects") }}</span>
            <h2>We Provide a Wide Variety of It Projects</h2>
        </div>
        <div class="row pt-45">
            @foreach ($projects as $project)
            <div class="col-lg-4 col-md-6">
                <div class="projects-item">
                    <a href="/{{$lang}}/project/{{$project->slug}}">
                        <img src="{{ RvMedia::getImageUrl($project->image) }}" alt="{{ $project->name }}">
                    </a>
                    <div class="content">
                        <i class="flaticon-consultant"></i>
                        <span><a href="/{{$lang}}/project/{{$project->slug}}">{{$project->name}}</a></span>
                        <h3><a href="/{{$lang}}/project-type/{{$project->project_type}}">{{$project->project_type}}</a></h3>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<!-- Projects widget Area End --> --}}


<!-- Service Details Area -->
<div class="project-details-area pt-100 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="project-article">
                    <div class="project-article-img">
                       <img src="{{ RvMedia::getImageUrl($project->image) }}" alt="{{$project->name}}">
                    </div>
                    <div class="project-article-content">
                        <h2>{{ $project->name }}</h2>
                        {!! $project->content !!}
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="side-bar-area">
                    <div class="side-bar-widget">
                        <h3 class="title">{{ __("Our Projects") }}</h3>
                        <div class="side-bar-categories">
                            <ul>
                                @foreach ($projects as $project)
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="/{{$lang}}/project/{{$project->slug}}" target="_blank">{{ $project->name }}</a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>

                    {{-- <div class="side-bar-widget">
                        <h3 class="title">Tag Cloud</h3>
                        <ul class="side-bar-widget-tag">
                            <li><a href="project-details.html" target="_blank">Android</a></li>
                            <li><a href="project-details.html" target="_blank">Creative</a></li>
                            <li><a href="project-details.html" target="_blank">App</a></li>
                            <li><a href="project-details.html" target="_blank">IOS</a></li>
                            <li><a href="project-details.html" target="_blank">Business</a></li>
                            <li><a href="project-details.html" target="_blank">Consulting</a></li>
                        </ul>
                    </div>

                    <div class="side-bar-widget">
                        <h3 class="title">Gallery</h3>
                        <ul class="blog-gallery">
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img1.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img2.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img3.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img4.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img5.jpg" alt="image">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <img src="assets/images/blog/blog-small-img6.jpg" alt="image">
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="side-bar-widget">
                        <h3 class="title">Archive</h3>
                        <div class="side-bar-categories">
                            <ul>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="project-details.html" target="_blank">Design<span>[70]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="project-details.html" target="_blank">Business<span>[24]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="project-details.html" target="_blank">Development<span>[08]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="project-details.html" target="_blank">Technology <span>[17]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="project-details.html" target="_blank">Startup <span>[20]</span></a>
                                </li>
                                <li>
                                    <div class="line-circle"></div>
                                    <a href="project-details.html" target="_blank">Marketing Growth <span>[13]</span></a>
                                </li>
                            </ul>
                        </div>
                    </div> --}}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service Details Area End -->
