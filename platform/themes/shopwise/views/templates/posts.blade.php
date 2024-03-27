@if ($posts->count() > 0)
    <div class="section-title text-center">
        <span class="sp-color2">{{__('Thamar Consulting')}}</span>
        <h2>{{__('Blog')}}</h2>
    </div>
    <div class="row pt-45">

    @foreach ($posts as $post)
        <div class="col-lg-6 col-md-6">
            <div class="blog-card">
                <div class="blog-img">
                    <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }}">
                    </a>
                    <div class="blog-tag">
                        <h3>{{ $post->created_at->translatedFormat(' d') }}</h3>
                        <span>{{ $post->created_at->translatedFormat('M') }}</span>
                    </div>
                </div>
                <div class="content">
                    <ul class="list_none blog_meta">
                        <li><i class="ti-calendar"></i> {{ $post->created_at->translatedFormat('M d, Y') }}</li>
                        <li><i class="ti-eye"></i> {{ number_format($post->views) }} {{ __('Views') }}</li>
                    </ul>
                    <h3>
                        <a href="blog-details.html">{{ $post->name }}</a>
                    </h3>
                    <p>{{ Str::limit($post->description, 130) }}</p>
                    <a href="{{ $post->url }}" class="btn btn-fill-line border-2 btn-xs rounded-0">{{ __('Read More') }}</a>
                </div>
            </div>
        </div>

    @endforeach </div>
    <div class="row">
        <div class="col-12 mt-2 mt-md-4">
            <div class="pagination_style1 justify-content-center">
                {!! $posts->withQueryString()->links() !!}
            </div>
        </div>
    </div>
@endif
