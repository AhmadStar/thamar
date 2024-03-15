@php
    $supportedLocales = Language::getSupportedLocales();
    if (!isset($options) || empty($options)) {
        $options = [
            'before' => '',
            'lang_flag' => true,
            'lang_name' => true,
            'class' => '',
            'after' => '',
        ];
    }
@endphp

@if ($supportedLocales && count($supportedLocales) > 1)

    @php
        $languageDisplay = setting('language_display', 'all');
    @endphp

    @foreach ($supportedLocales as $localeCode => $properties)
        @if ($localeCode != Language::getCurrentLocale())
            <span class="current">
                <a href="{{ Language::getSwitcherUrl($localeCode, $properties['lang_code']) }}" class="head-ahref">
                    {{ $properties['lang_name'] }}
                </a>
            </span>
        @endif
    @endforeach

@endif
