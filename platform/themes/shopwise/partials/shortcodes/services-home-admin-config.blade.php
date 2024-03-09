<div class="mb-3">
    <label class="form-label">{{ __('Title') }}</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" placeholder="{{ __('Title') }}">
</div>
<div class="mb-3">
    <label class="form-label">{{ __('content') }}</label>
    <textarea name="content_1" class="form-control" placeholder="{{ __('content_1') }}" rows="3">{{ Arr::get($attributes, 'content_1') }}</textarea>
</div>