{!! Theme::partial('header') !!}


<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h3>{{ Theme::get('pageName') }}</h3>
            {!! Theme::partial('breadcrumbs') !!}
        </div>
    </div>
    <div class="inner-shape">
        <img src="assets/images/shape/inner-shape.png" alt="Images">
    </div>
</div><br>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                {!! Theme::content() !!}
            </div>
            <div class="col-lg-3 mt-4 pt-2 mt-lg-0 pt-lg-0">
                <div class="sidebar">
                    {!! dynamic_sidebar('primary_sidebar') !!}
                </div>
            </div>
        </div>
    </div>
</div>

{!! Theme::partial('footer') !!}
