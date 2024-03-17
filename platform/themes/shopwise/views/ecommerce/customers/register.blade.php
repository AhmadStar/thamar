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
        <div class="client-register ">


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
                <div class="col-md-8 col-lg-8  mx-auto mb-5 mb-lg-0 contact-form">
                    <h2 class="font-weight-bold text-5 mb-0 ">{{ __('Register an account') }}</h2>
                    <form class="ps-form--account ps-tab-root" method="POST" action="{{ route('customer.register.post') }}">
                        @csrf
                        <br>
                        <div class="ps-form__content">
                            <div class="row">
                                <div class="form-group">
                                    {{--<label for="contact_name" class="form-label required">{{__('Full name')}}</label>--}}
                                    <input class="form-control" name="name" id="txt-name" type="text" value="{{ old('name') }}" placeholder="{{ __('Your full name') }}">
                                    @if ($errors->has('name'))
                                        <span class="text-danger small">{{ $errors->first('name') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <input class="form-control" name="email" id="txt-email" type="email" value="{{ old('email') }}" autocomplete="email" placeholder="{{ __('Your Email') }}">
                                    @if ($errors->has('email'))
                                         <span class="text-danger small"> {{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <input class="form-control" type="password" name="password" id="txt-password" autocomplete="new-password" placeholder="{{ __('Password') }}">
                                    @if ($errors->has('password'))
                                        <span class="text-danger small">{{ $errors->first('password') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <input class="form-control" type="password" name="password_confirmation" id="txt-password-confirmation" autocomplete="new-password" placeholder="{{ __('Password') }}">
                                    @if ($errors->has('password_confirmation'))
                                        <span class="text-danger small">{{ $errors->first('password_confirmation') }}</span>
                                    @endif
                                </div>
                            </div>
                            {{-- @if (is_plugin_active('marketplace'))
                                <div class="show-if-vendor" @if (old('is_vendor') == 0) style="display: none" @endif>
                                    <div class="form-group">
                                        <label for="shop-name" class="required">{{ __('Shop Name') }}</label>
                                        <input class="form-control" name="shop_name" id="shop-name" type="text" value="{{ old('shop_name') }}" placeholder="{{ __('Shop Name') }}">
                                        @if ($errors->has('shop_name'))
                                            <span class="text-danger small">{{ $errors->first('shop_name') }}</span>
                                        @endif
                                    </div>
                                    <div class="form-group shop-url-wrapper">
                                        <label for="shop-url" class="required float-left">{{ __('Shop URL') }}</label>
                                        <span class="d-inline-block float-right shop-url-status"></span>
                                        <input class="form-control" name="shop_url" id="shop-url" type="text" value="{{ old('shop_url') }}" placeholder="{{ __('Shop URL') }}" data-url="{{ route('public.ajax.check-store-url') }}">
                                        @if ($errors->has('shop_url'))
                                            <span class="text-danger small">{{ $errors->first('shop_url') }}</span>
                                        @else
                                            <span class="d-inline-block"><small data-base-url="{{ route('public.store', '') }}">{{ route('public.store', (string)old('shop_url')) }}</small></span>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <label for="shop-phone" class="required">{{ __('Phone Number') }}</label>
                                        <input class="form-control" name="shop_phone" id="shop-phone" type="text" value="{{ old('shop_phone') }}" placeholder="{{ __('Shop phone') }}">
                                        @if ($errors->has('shop_phone'))
                                            <span class="text-danger small">{{ $errors->first('shop_phone') }}</span>
                                        @endif
                                    </div>
                                </div>
                                <div class="form-group user-role">
                                    <p>
                                        <label>
                                            <input type="radio" name="is_vendor" value="0" @if (old('is_vendor') == 0) checked="checked" @endif>
                                            <span class="d-inline-block">
                                                {{ __('I am a customer') }}
                                            </span>
                                        </label>
                                    </p>
                                    <p>
                                        <label>
                                            <input type="radio" name="is_vendor" value="1" @if (old('is_vendor') == 1) checked="checked" @endif>
                                            <span class="d-inline-block">
                                                {{ __('I am a vendor') }}
                                            </span>
                                        </label>
                                    </p>
                                </div>
                            @endif --}}
                            <br>
                            <div class="row">
                                <div class="form-group">
                                    <p>{{__('Your personal data will be used to support your experience throughout this website, to manage access to your account.') }}</p>
                                </div>
                            </div>
                            <div class="row justify-content-between">
                                <div class="form-group col-md-auto">
                                    <div class="custom-control custom-checkbox">
                                        <input type="hidden" name="agree_terms_and_policy" value="0">
                                        <input class="custom-control-input" type="checkbox" name="agree_terms_and_policy" id="agree-terms-and-policy" value="1" @if (old('agree_terms_and_policy') == 1) checked @endif>
                                        <label class="form-label custom-control-label cur-pointer text-2" for="agree-terms-and-policy">{{ __('I agree to the Terms and Privacy Policy') }}</label>
                                    </div>
                                    @if ($errors->has('agree_terms_and_policy'))
                                        <span class="text-danger small">{{ $errors->first('agree_terms_and_policy') }}</span>
                                    @endif
                                </div>
                            </div>

                            @if (is_plugin_active('captcha') && setting('enable_captcha') && get_ecommerce_setting('enable_recaptcha_in_register_page', 0))
                                <div class="form-group">
                                    {!! Captcha::display() !!}
                                </div>
                            @endif

                            <div class="row">
                                <div class="form-group col">
                                    <button class="btn btn-dark btn-modern w-100 text-uppercase rounded-0 font-weight-bold text-3 py-3" type="submit">{{ __('Sign up') }}</button>
                                </div>
                            </div>

                            <div class="form-group">
                                <p class="text-center">{{ __('Already have an account?') }} <a href="{{ route('customer.login') }}" class="d-inline-block">{{ __('Log in') }}</a></p>
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
