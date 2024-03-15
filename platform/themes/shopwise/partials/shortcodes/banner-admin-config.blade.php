<div class="mb-3">
    <label class="form-label">{{ __('Title') }}</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" placeholder="{{ __('Title') }}">
</div>
<div class="mb-3">
    <label class="form-label">{{ __('Image') }}</label>
    {!! Form::mediaImage('image', Arr::get($attributes, 'image')) !!}
</div>
<div class="mb-3">
    <label class="form-label">{{ __('Achievement 1') }}</label>
    <input type="text" name="achievement1" value="{{ Arr::get($attributes, 'achievement1') }}" class="form-control" placeholder="{{ __('Achievement 1') }}">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Achievement 1 Text') }}</label>
    <input type="text" name="achievement1text" value="{{ Arr::get($attributes, 'achievement1text') }}" class="form-control" placeholder="{{ __('Achievement 1 Text') }}">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Achievement 1 Image') }}</label>
    {!! Form::mediaImage('achievement1img', Arr::get($attributes, 'achievement1img')) !!}
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Achievement 2') }}</label>
    <input type="text" name="achievement2" value="{{ Arr::get($attributes, 'achievement2') }}" class="form-control" placeholder="{{ __('Achievement 2') }}">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Achievement 2 Text') }}</label>
    <input type="text" name="achievement2text" value="{{ Arr::get($attributes, 'achievement2text') }}" class="form-control" placeholder="{{ __('Achievement 2 Text') }}">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Achievement 2 Image') }}</label>
    {!! Form::mediaImage('achievement2img', Arr::get($attributes, 'achievement2img')) !!}
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Achievement 3') }}</label>
    <input type="text" name="achievement3" value="{{ Arr::get($attributes, 'achievement3') }}" class="form-control" placeholder="{{ __('Achievement 3') }}">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Achievement 3 Text') }}</label>
    <input type="text" name="achievement3text" value="{{ Arr::get($attributes, 'achievement3text') }}" class="form-control" placeholder="{{ __('Achievement 3 Text') }}">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Achievement 3 Image') }}</label>
    {!! Form::mediaImage('achievement3img', Arr::get($attributes, 'achievement3img')) !!}
</div>

