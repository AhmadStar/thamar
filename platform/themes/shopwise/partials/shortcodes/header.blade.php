@php
    $lang = app()->getLocale();
    $arrow = 'ar' ? 'left' : 'right';
@endphp

<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h1>{{ $title }}</h1>
            <ul>
                <li><a href="/{{ $lang }}">{{ __("Home") }}</a></li>
                <li><i class="bx bx-chevrons-{{$arrow}}"></i></li>
                <li>{{ $title }}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape"><img src="assets/images/shape/inner-shape.png" alt="Images"></div>
</div>
