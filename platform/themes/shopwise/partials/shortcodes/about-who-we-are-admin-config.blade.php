<div class="mb-3">
    <label class="form-label">{{ __('Title') }}</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" placeholder="{{ __('Title') }}">
</div>
<div class="mb-3">
    <label class="form-label">{{ __('content') }}</label>
    <textarea name="content_1" class="form-control" placeholder="{{ __('content_1') }}" rows="3">{{ Arr::get($attributes, 'content_1') }}</textarea>
</div>
<div class="mb-3">
    <label class="form-label">{{ __('content 2') }}</label>
    <textarea name="content_2" class="form-control" placeholder="{{ __('content_2') }}" rows="3">{{ Arr::get($attributes, 'content_2') }}</textarea>
</div>
<div class="mb-3">
    <label class="form-label">{{ __('Service Title 1') }}</label>
    <input type="text" name="s_title" value="{{ Arr::get($attributes, 's_title') }}" class="form-control" placeholder="{{ __('Title 1') }}">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Service Title 2') }}</label>
    <input type="text" name="s_title_2" value="{{ Arr::get($attributes, 's_title_2') }}" class="form-control" placeholder="{{ __('Title 2') }}">
</div>
<div class="mb-3">
    <label class="form-label">{{ __('Service Title 3') }}</label>
    <input type="text" name="s_title_3" value="{{ Arr::get($attributes, 's_title_3') }}" class="form-control" placeholder="{{ __('Title 3') }}">
</div>
<div class="mb-3">
    <label class="form-label">{{ __('Video URL') }}</label>
    <input type="text" name="vid" value="{{ Arr::get($attributes, 'vid') }}" class="form-control" placeholder="{{ __('URL') }}">
</div>
<div class="mb-3">
    <label class="form-label">{{ __('Image') }}</label>
    {!! Form::mediaImages('image', explode(',', Arr::get($attributes, 'image'))) !!}
</div>

