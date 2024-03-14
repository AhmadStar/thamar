<!-- Case Study Area -->
<div class="case-study-area pb-70">
    <div class="container-fluid p-0">
        <div class="section-title text-center">

            <h2>{{$shortcode->title}}</h2>
            <span class="sp-color2">{{$shortcode->content_1}}</span>
        </div>

        <div class="case-study-slider owl-carousel owl-theme pt-45" style="direction: ltr">

            @foreach($projects as $project)
                <div class="case-study-item">
                    <a href="case-details.html">
                        <img src="{{ RvMedia::getImageUrl($project->image,'medium') }}" alt="Images">
                    </a>
                    <div class="content">
                        <h3><a href="case-details.html">{{$project->name}}</a></h3>
                        <ul>
                            <li><a href="">{{$project->company}}</a></li>
                        </ul>
                        <a href="" class="more-btn"><i class='bx bx-right-arrow-alt'></i></a>
                    </div>
                </div>
            @endforeach
            <div class="case-study-item">
                <a href="case-details.html">
                    <img src="themes/shopwise/assets/images/case-study/case-study2.jpg" alt="Images">
                </a>
                <div class="content">
                    <h3><a href="case-details.html">Business Solution</a></h3>
                    <ul>
                        <li><a href="case-details.html">Business</a></li>
                        <li><a href="case-details.html">Planing</a></li>
                    </ul>
                    <a href="case-details.html" class="more-btn"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
            </div>

            <div class="case-study-item">
                <a href="case-details.html">
                    <img src="themes/shopwise/assets/images/case-study/case-study3.jpg" alt="Images">
                </a>
                <div class="content">
                    <h3><a href="case-details.html">Business Solution</a></h3>
                    <ul>
                        <li><a href="case-details.html">Business</a></li>
                        <li><a href="case-details.html">Planing</a></li>
                    </ul>
                    <a href="case-details.html" class="more-btn"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
            </div>

            <div class="case-study-item">
                <a href="case-details.html">
                    <img src="themes/shopwise/assets/images/case-study/case-study4.jpg" alt="Images">
                </a>
                <div class="content">
                    <h3><a href="case-details.html">UI/UX Research</a></h3>
                    <ul>
                        <li><a href="case-details.html">UI/UX Design</a></li>
                        <li><a href="case-details.html">Research</a></li>
                    </ul>
                    <a href="case-details.html" class="more-btn"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
            </div>

            <div class="case-study-item">
                <a href="case-details.html">
                    <img src="themes/shopwise/assets/images/case-study/case-study6.jpg" alt="Images">
                </a>
                <div class="content">
                    <h3><a href="case-details.html">Business Solution</a></h3>
                    <ul>
                        <li><a href="case-details.html">Solution</a></li>
                        <li><a href="case-details.html">Business</a></li>
                    </ul>
                    <a href="case-details.html" class="more-btn"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
            </div>

            <div class="case-study-item">
                <a href="case-details.html">
                    <img src="themes/shopwise/assets/images/case-study/case-study2.jpg" alt="Images">
                </a>
                <div class="content">
                    <h3><a href="case-details.html">Web Development</a></h3>
                    <ul>
                        <li><a href="case-details.html">Design</a></li>
                        <li><a href="case-details.html">Development</a></li>
                    </ul>
                    <a href="case-details.html" class="more-btn"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Case Study Area End -->
