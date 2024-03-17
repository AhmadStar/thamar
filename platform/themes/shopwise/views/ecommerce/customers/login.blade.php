@php Theme::set('pageName', __('Login')) @endphp
{{--@php Theme::set('pageName', __('Sign up')) @endphp--}}
@php
app()->getLocale() == 'ar' ? ($dir = 'left') : ($dir = 'right');
$lang = app()->getLocale();
@endphp


        <!-- Inner Banner -->
<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h3>{{ __("Login") }}</h3>
            <ul>
                <li>
                    <a href="/{{$lang}}">{{ __("Home")}}</a>
                </li>
                <li>
                    <i class='bx bx-chevrons-right'></i>
                </li>
                <li>{{ __('Login') }}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape">
        <img src="https://new.jusoortraining.com/storage/general/effect-team-1.png" alt="">
    </div>
</div>
<div class="login_register_wrap section">
    <div class="container">
        <div class="client-login ">



            <div class="row pt-45">
                <div class="col-md-4 col-lg-4  mx-auto mb-5 mb-lg-0">
                    <div class="contact-info mr-20">
                        <span>{{ __("Contact Info")}}</span>
                        <h2>{{ __("Let's Connect With Us")}}</h2>
                        <p></p>
                        <ul>
                            <li>
                                <div class="content">
                                    <i class='bx bx-phone-call'></i>
                                    <h3>{{ __("Phone Number")}}</h3>
                                    <a href="tel:{{theme_option('hotline')}}" dir="ltr">{{theme_option('hotline')}}</a>
                                </div>
                            </li>

                            <li>
                                <div class="content">
                                    <i class='bx bxs-map'></i>
                                    <h3>{{ __("Address")}}</h3>
                                    <span>{{theme_option('address')}}</span>
                                </div>
                            </li>

                            <li>
                                <div class="content">
                                    <i class='bx bx-message'></i>
                                    <h3>{{ __("Contact Info")}}</h3>
                                    <a href="mailto:{{theme_option('email')}}">{{theme_option('email')}}</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8 col-lg-8  mx-auto mb-5 mb-lg-0 ">
                    <form class="ps-form--account ps-tab-root  contact-form" method="POST" action="{{ route('customer.login.post') }}">
                        @csrf
                        <div class="ps-form__content">
                            <h4>{{ __('Login to your account') }}</h4>
                            <p>{{__('Your personal data will be used to support your experience throughout this website, to manage access to your account.')}}</p>
                            @if (isset($errors) && $errors->has('confirmation'))
                                <div class="alert alert-danger">
                                    <span>{!! $errors->first('confirmation') !!}</span>
                                </div>
                                <br>
                            @endif
                            <div class="form-group">
                                <input class="form-control" name="email" type="email" value="{{ old('email') }}" placeholder="{{ __('Your Email') }}">
                                @if ($errors->has('email'))
                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            </div>
                            <div class="form-group form-forgot">
                                <input class="form-control" type="password" name="password" placeholder="{{ __('Password') }}"><br><a href="{{ route('customer.password.reset') }}">{{ __('Forgot password?') }}</a>
                                @if ($errors->has('password'))
                                    <span class="text-danger">{{ $errors->first('password') }}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <div class="ps-checkbox">
                                    <input class="" type="checkbox" name="remember" id="remember-me">
                                    <label for="remember-me"> {{ __('Remember me') }}</label>
                                </div>
                            </div>
                            <div class="form-group submit">
                                <button type="submit" class="default-btn btn-bg-two border-radius-50">{{ __('Login') }}</button>
                            </div>

                            <div class="form-group">
                                <p class="text-center">{{ __("Don't Have an Account?") }} <a href="{{ route('customer.register') }}" class="d-inline-block">{{ __('Sign up now') }}</a></p>
                            </div>
                        </div>
                        <div class="ps-form__footer">
                            {!! apply_filters(BASE_FILTER_AFTER_LOGIN_OR_REGISTER_FORM, null, \Botble\Ecommerce\Models\Customer::class) !!}
                        </div>
                    </form>

                </div>


            </div>
        </div>
    </div>
</div>

<div class="login_register_wrap section">
    <div class="container">
        {{--{!!--}}
           {{--$form--}}
               {{--->modify('submit', 'submit', [--}}
                       {{--'attr' => [--}}
                           {{--'class' => 'btn btn-fill-out btn-block',--}}
                       {{--],--}}
                   {{--])--}}
               {{--->modify('remember', 'html', ['html' => sprintf('<div class="chek-form col-6">--}}
                    {{--<div class="custome-checkbox">--}}
                        {{--<input class="form-check-input" type="checkbox" name="remember" id="remember-me" value="1">--}}
                        {{--<label class="form-check-label" for="remember-me"><span>%s</span></label>--}}
                    {{--</div>--}}
                {{--</div>', __('Remember me'))], true)--}}
               {{--->renderForm()--}}
       {{--!!}--}}
    </div>
</div>
