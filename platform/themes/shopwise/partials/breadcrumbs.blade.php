<ol class="breadcrumb justify-content-md-end">
    @foreach ($crumbs = Theme::breadcrumb()->getCrumbs() as $i => $crumb)
        @if ($i != (count($crumbs) - 1))
            <li class="breadcrumb-item">
                <a href="{{ $crumb['url'] }}" title="{{ $crumb['label'] }}">
                    {!! BaseHelper::clean($crumb['label']) !!}
                </a>
            </li>
        @else
            <li class="breadcrumb-item active">{!! BaseHelper::clean($crumb['label']) !!}</li>
        @endif
    @endforeach
</ol>




<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h3>Blog Details </h3>
            <ul>
                <li>
                    <a href="index.html">Home</a>
                </li>
                <li>
                    <i class="bx bx-chevrons-right"></i>
                </li>
                <li>Blog Details</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape">
        <img src="assets/images/shape/inner-shape.png" alt="Images">
    </div>
</div>
