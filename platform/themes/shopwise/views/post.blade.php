@php Theme::set('pageName', __('Blog')) @endphp

@php
    $lang = app()->getLocale();
    $arrow = 'ar' ? 'left' : 'right';
@endphp

<div class="inner-banner">
    <div class="container">
        <div class="inner-title text-center">
            <h1>{{ $post->name }}</h1>
            <ul>
                <li><a href="/{{ $lang }}">{{ __("Home") }}</a></li>
                <li><i class="bx bx-chevrons-{{$arrow}}"></i></li>
                <li>{{ $post->name }}</li>
            </ul>
        </div>
    </div>
    <div class="inner-shape"><img src="assets/images/shape/inner-shape.png" alt="Images"></div>
</div>


<div class="case-details-area pt-100 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="blog-article">
                    <div class="blog-article-img">
                        <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" loading="lazy" />
                    </div>
                    <div class="blog-article-title">
                        <ul>
                            <li><i class="bx bx-time-five"></i> {{ $post->created_at->translatedFormat('M d, Y') }}</li>
                            <li><i class="bx bx-category-alt"></i>
                                @if (!$post->categories->isEmpty())
                                    @foreach($post->categories as $category)
                                        <a href="{{ $category->url }}">{{ $category->name }}</a>@if (!$loop->last),@endif
                                    @endforeach
                                @endif
                            </li>
                            <li><i class="bx bx-show-alt"></i> {{ number_format($post->views) }} {{ __('Views') }}</li>
                        </ul>
                        <h2>{{ $post->name }}</h2>
                    </div>
                    <div class="article-content">
                        <div class="ck-content">{!! BaseHelper::clean($post->content) !!}</div>
                    </div>
                    <div class="blog-article-share">
                        <div class="row align-items-center">
                            <div class="col-lg-7 col-sm-7 col-md-7">
                                <div class="blog-tag">
                                    <ul>
                                        <li><i class="bx bx-purchase-tag-alt"></i> {{ __("Tags") }}:</li>
                                        @if (!$post->tags->isEmpty())
                                            @foreach ($post->tags as $tag)
                                                <li>
                                                    <a href="{{ $tag->url }}">{{ $tag->name }}</a>
                                                </li>
                                            @endforeach
                                        @endif
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-5 col-sm-5 col-md-5">
                                <ul class="social-icon">
                                    <li>
                                        <a href="https://www.facebook.com/" target="_blank">
                                            <i class="bx bxl-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://twitter.com/?lang=en" target="_blank">
                                            <i class="bx bxl-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://www.linkedin.com/" target="_blank">
                                            <i class="bx bxl-linkedin-square"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://www.instagram.com/" target="_blank">
                                            <i class="bx bxl-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <br>
                    {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null, $post) !!}
                </div>
                @php $relatedPosts = get_related_posts($post->id, 2); @endphp

                @if ($relatedPosts->count())
                    <br>
                    <div class="related_post">
                        <div class="content_title">
                            <h5>{{ __('Related posts') }}</h5>
                        </div>
                        <div class="row">
                            @foreach ($relatedPosts as $relatedItem)
                                <div class="col-md-6">
                                    <div class="blog_post blog_style2 box_shadow1">
                                        <div class="blog_img">
                                            <a href="{{ $relatedItem->url }}"><img src="{{ RvMedia::getImageUrl($relatedItem->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="{{ $relatedItem->name }}" loading="lazy" /></a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif
            </div>
            <div class="col-lg-4">
                <div class="sidebar">
                    {!! dynamic_sidebar('primary_sidebar') !!}
                </div>
            </div>
        </div>
    </div>
</div>
