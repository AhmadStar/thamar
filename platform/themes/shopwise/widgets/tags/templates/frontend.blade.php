<div class="side-bar-widget">
    <h3 class="title">{{ $config['name'] }}</h3>
    <ul class="side-bar-widget-tag">
        @foreach (get_popular_tags($config['number_display']) as $tag)
            <li><a href="{{ $tag->url }}">{{ $tag->name }}</a></li>
        @endforeach
    </ul>
</div>
