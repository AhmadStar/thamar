<!-- Inner Banner -->
<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h3>{{ __("Contact Us")}}</h3>
            <ul>
                <li>
                    <a href="">{{ __("Home")}}</a>
                </li>
                <li>
                    <i class='bx bx-chevrons-right'></i>
                </li>
                <li>{{ __("Contact Us")}}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape">
        <img src="assets/images/shape/inner-shape.png" alt="Images">
    </div>
</div>
<!-- Inner Banner End -->

<!-- Contact Form Area -->
<div class="contact-form-area pt-100 pb-70 ">
    <div class="container">
        <div class="section-title text-center">
            <h2>{{ __("Let's Send Us a Message Below") }}</h2>
        </div>

        <div class="row pt-45">
            <div class="col-lg-4">
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

            <div class="col-lg-8">
                <div class="contact-form">
                    {!! Form::open(['route' => 'public.send.contact', 'class' => 'form--contact contact-form', 'method' => 'POST']) !!}
                    {!! apply_filters('pre_contact_form', null) !!}
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="contact_name" class="form-label required">{{ __('Name') }}</label>
                                <input type="text" class="form-control" name="name" value="{{ old('name') }}" id="contact_name"
                                       placeholder="{{ __('Name') }}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="contact_email" class="form-label required">{{ __('Email') }}</label>
                                <input type="email" class="form-control" name="email" value="{{ old('email') }}" id="contact_email"
                                       placeholder="{{ __('Email') }}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="contact_address" class="form-label">{{ __('Address') }}</label>
                                <input type="text" class="form-control" name="address" value="{{ old('address') }}" id="contact_address"
                                       placeholder="{{ __('Address') }}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="contact_phone" class="form-label">{{ __('Phone') }}</label>
                                <input type="text" class="form-control" name="phone" value="{{ old('phone') }}" id="contact_phone"
                                       placeholder="{{ __('Phone') }}">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="contact_subject" class="form-label">{{ __('Subject') }}</label>
                                <input type="text" class="form-control" name="subject" value="{{ old('subject') }}" id="contact_subject"
                                       placeholder="{{ __('Subject') }}">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="contact_content" class="form-label required">{{ __('Message') }}</label>
                                <textarea name="content" id="contact_content" class="form-control" rows="5" placeholder="{{ __('Message') }}">{{ old('content') }}</textarea>
                            </div>
                        </div>
                        @if (is_plugin_active('captcha'))
                            @if (setting('enable_captcha'))
                                <div class="mb-3 col-12">
                                    {!! Captcha::display() !!}
                                </div>
                            @endif

                            @if (setting('enable_math_captcha_for_contact_form', 0))
                                <div class="mb-3 col-12">
                                    <label for="math-group" class="contact-label required">{{ app('math-captcha')->label() }}</label>
                                    {!! app('math-captcha')->input(['class' => 'form-control', 'id' => 'math-group']) !!}
                                </div>
                            @endif
                        @endif

                        {!! apply_filters('after_contact_form', null) !!}

                        <div class="col-lg-12 col-md-12 text-center">
                            <button type="submit" class="default-btn btn-bg-two border-radius-50">
                                {{ __('Send Message') }} <i class='bx bx-chevron-right'></i>
                            </button>
                        </div>
                    </div>

                    <div class="mb-3">
                        <div class="contact-message contact-success-message" style="display: none"></div>
                        <div class="contact-message contact-error-message" style="display: none"></div>
                    </div>
                {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contact Form Area End -->
