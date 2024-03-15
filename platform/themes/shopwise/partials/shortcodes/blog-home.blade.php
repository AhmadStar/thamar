<!-- Blog Area -->
<div class="blog-area pt-100 pb-70">
    <div class="container">
        <div class="section-title text-center">
            <span class="sp-color2">{{ __("Blog") }}</span>
            <h2>{{ __("Let’s Check Some Latest Blog") }}</h2>
        </div>

        <div class="row pt-45">
            @foreach ($posts as $post)
            <div class="col-lg-4 col-md-6">
                <div class="blog-card">
                    <div class="blog-img">
                        <a href="{{ $post->url }}">
                            <img src="{{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}">
                        </a>
                        <div class="blog-tag">
                            <h3>{{ $post->created_at->format('d') }}</h3>
                            <span>{{ $post->created_at->format('M') }}</span>
                        </div>
                    </div>
                    <div class="content">
                        <ul>
                            <li>
                                <i class='bx bx-purchase-tag-alt'></i>{{ $post->categories->first()->name }}
                            </li>
                        </ul>

                        <h3>
                            <a href="{{ $post->url }}">{{ $post->name }}</a>
                        </h3>
                        <p>{{ implode(' ', array_slice(explode(' ', $post->description), 0, 20)) }}</p>
                        <a href="{{ $post->url }}" class="read-btn">{{ __("Read More") }} </a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Blog Area End -->
