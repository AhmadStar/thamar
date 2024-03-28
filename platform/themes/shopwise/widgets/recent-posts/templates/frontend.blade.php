@if (is_plugin_active('blog'))
    @php
        $posts = get_recent_posts($config['number_display']);
    @endphp
    @if ($posts->count())
        <div class="side-bar-widget">
            <h3 class="title">{{ $config['name'] }}</h3>
            <div class="side-bar-categories">
                <ul>
                    @foreach ($posts as $post)
                    <li>
                        <div class="line-circle"></div>
                        <a href="{{ $post->url }}" target="_blank">{{ $post->name }}</a>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    @endif
@endif
