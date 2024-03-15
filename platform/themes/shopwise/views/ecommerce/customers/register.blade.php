{{--@php Theme::set('pageName', __('Sign up')) @endphp--}}
@php
app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
$lang = app()->getLocale();
@endphp


        <!-- Inner Banner -->
<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h3>{{ __("register") }}</h3>
            <ul>
                <li>
                    <a href="/{{$lang}}">{{ __("Home")}}</a>
                </li>
                <li>
                    <i class='bx bx-chevrons-right'></i>
                </li>
                <li>{{ __('register') }}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape">
        <img src="https://new.jusoortraining.com/storage/general/effect-team-1.png" alt="">
    </div>
</div>
<div class="login_register_wrap section">
    <div class="container">
        {!!
            $form
                ->modify('submit', 'submit', [
                        'attr' => [
                            'class' => 'btn btn-fill-out btn-block',
                        ],
                    ])
                ->renderForm()
        !!}
    </div>
</div>
