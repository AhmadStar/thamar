@php
    app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
    $lang = app()->getLocale();
    $arrow = 'ar' ? 'left' : 'right';
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
                    <i class='bx bx-chevrons-{{$arrow}}'></i>
                </li>
                <li>{{ __("Projects") }}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape">
        <img src="https://new.jusoortraining.com/storage/general/effect-team-1.png" alt="{{ __("Projects") }}">
    </div>
</div>
<!-- Inner Banner End -->


<!-- Services widget Area -->
<section class="services-widget-area pt-100 pb-70">
    <div class="container">
        <div class="section-title text-center">
            <span class="sp-color2">{{ __("Our Projects") }}</span>
            <h2>{{ __("We Provide a Wide Variety of Projects") }}</h2>
        </div>
        <div class="row pt-45">
            @foreach ($projects as $project)
            <div class="col-lg-4 col-md-6">
                <div class="projects-item">
                    <a href="/{{$lang}}/project/{{$project->slug}}">
                        <img src="{{ RvMedia::getImageUrl($project->image) }}" alt="{{ $project->name }}">
                    </a>
                    <div class="content">
                        <h3><a href="/{{$lang}}/project/{{$project->slug}}">{{$project->name}}</a></h3>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<!-- Services widget Area End -->

