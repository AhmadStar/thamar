(function($) {


    'use strict';

    // Mean Menu JS
    jQuery('.mean-menu').meanmenu({
        meanScreenWidth: "991"
    });

    // Navbar Area
    $(window).on('scroll', function() {
        if ($(this).scrollTop() >150){
            $('.navbar-area').addClass("sticky-nav");
        }
        else{
            $('.navbar-area').removeClass("sticky-nav");
        }
    });

    // Search Overlay JS
	$(".nav-side .search-box i").on("click", function(){
		$(".search-overlay").toggleClass("search-overlay-active");
	});
	$(".search-close").on("click", function(){
		$(".search-overlay").removeClass("search-overlay-active");
    });

    // Others Option For Responsive JS
	$(".side-nav-responsive .dot-menu").on("click", function(){
		$(".side-nav-responsive .container-max .container").toggleClass("active");
    });

    // Banner Slider
    $('.banner-slider').owlCarousel({
        loop: true,
        margin: 30,
        nav: false ,
        items: 1,
        dots: true,
        autoplay: true,
        autoHeight: true,
        autoplayHoverPause: true,
    })

    // Case Study Slider
    $('.case-study-slider').owlCarousel({
        loop: true,
        margin: 30,
        nav: false,
        dots: false,
        center: true,
        autoplay: true,
        autoplayHoverPause: true,
        responsive:{
            0:{
                items: 1
            },
            600:{
                items: 2
            },
            1024:{
                items: 3
            },
            1200:{
                items: 4
            },
        },
    })

    // Brand Slider
    $('.brand-slider').owlCarousel({
        loop: true,
        margin: 60,
        nav: false,
        dots: false,
        autoplay: true,
        autoplayHoverPause: true,
        responsive:{
            0:{
                items: 2
            },
            600:{
                items: 2
            },
            700:{
                items: 3
            },
            1024:{
                items: 5
            }
        },
    })

    // Brand Seven Slider JS New
    $('.banner-seven-slide').owlCarousel({
        loop: true,
        margin: 0,
        items: 1,
        nav: true,
        dots: false,
        autoplay: true,
        autoHeight: true,
        autoplayHoverPause: true,
    })

    // Clients Slider
    $('.clients-slider').owlCarousel({
        loop: true,
        margin: 30,
        nav: false,
        dots: false,
        autoplay: true,
        autoplayHoverPause: true,
        responsive:{
            0:{
                items: 1
            },
            992:{
                items: 2
            }
        },
        navText: [
            "<i class='bx bx-chevron-left'></i>",
            "<i class='bx bx-chevron-right'></i>"
        ],
    })

    // Clients Slider
    $('.clients-slider-two').owlCarousel({
        loop: true,
        margin: 30,
        nav: true,
        dots: false,
        autoplay: true,
        autoplayHoverPause: true,
        items: 1,
        navText: [
            "<i class='bx bx-chevron-left'></i>",
            "<i class='bx bx-chevron-right'></i>"
        ],
    })

    // Banner Sub Slider
    $('.banner-sub-slider').owlCarousel({
        loop: true,
        margin: 30,
        nav: false,
        dots: false,
        autoplay: true,
        autoplayHoverPause: true,
        responsive:{
            0:{
                items: 1
            },
            1024:{
                items: 3
            }
        },
    })

    // Popup Video
    $('.popup-btn').magnificPopup({
        disableOn: 320,
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,
        fixedContentPos: false
    });

    // Nice Select JS
    $('select').niceSelect();

    // FAQ Accordion JS
	$('.accordion').find('.accordion-title').on('click', function(){
		// Adds Active Class
		$(this).toggleClass('active');
		// Expand or Collapse This Panel
		$(this).next().slideToggle('fast');
		// Hide The Other Panels
		$('.accordion-content').not($(this).next()).slideUp('fast');
		// Removes Active Class From Other Titles
		$('.accordion-title').not($(this)).removeClass('active');
    });

    // Skill-bar JS
    $(".skill-bar").each(function () {
        $(this).find(".progress-content").animate({ width: $(this).attr("data-percentage") }, 2000);
        $(this).find(".progress-number-mark").animate({ left: $(this).attr("data-percentage") },
            {
                duration: 2000,
                step: function (now, fx) {
                    var data = Math.round(now);
                    $(this)
                        .find(".percent")
                        .html(data + "%");
                },
            }
        );
    });

    // WOW JS
    new WOW().init();

    // Preloader JS
    $(window).on('load',function(){
        $(".preloader").fadeOut(100);
    });

    // Back To Top
    $('body').append("<div class='go-top'><i class='bx bx-chevrons-up'></i></div>");
    $(window).on('scroll', function() {
        var scrolled = $(window).scrollTop();
        if (scrolled > 600) $('.go-top').addClass('active');
        if (scrolled < 600) $('.go-top').removeClass('active');
    });
    $('.go-top').on('click', function() {
        $('html, body').animate({
            scrollTop: '0',
        }, 50 );
    });

    // Count Time JS
	function makeTimer() {
		var endTime = new Date("December 30, 2024 17:00:00 PDT");
		var endTime = (Date.parse(endTime)) / 1000;
		var now = new Date();
		var now = (Date.parse(now) / 1000);
		var timeLeft = endTime - now;
		var days = Math.floor(timeLeft / 86400);
		var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
		var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600 )) / 60);
		var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));
		if (hours < "10") { hours = "0" + hours; }
		if (minutes < "10") { minutes = "0" + minutes; }
		if (seconds < "10") { seconds = "0" + seconds; }
		$("#days").html(days + "<span>Days</span>");
		$("#hours").html(hours + "<span>Hours</span>");
		$("#minutes").html(minutes + "<span>Minutes</span>");
		$("#seconds").html(seconds + "<span>Seconds</span>");
	}
    setInterval(function() { makeTimer(); }, 300);
    $(document).on('submit', '.contact-form', function (event) {
        event.preventDefault()
        event.stopPropagation()

        const $form = $(this)
        const $button = $form.find('button[type=submit]')

        $('.contact-success-message').html('').hide()
        $('.contact-error-message').html('').hide()

        $.ajax({
                type: 'POST',
                cache: false,
                url: $form.prop('action'),
                data: new FormData($form[0]),
                contentType: false,
                processData: false,
                beforeSend: () => $button.addClass('button-loading'),
            success: ({ error, message }) => {
            if (!error) {
                $form[0].reset()
                showSuccess(message)
            } else {
                showError(message)
            }

            if (typeof refreshRecaptcha !== 'undefined') {
                refreshRecaptcha()
            }
        },
        error: (error) => {
            if (typeof refreshRecaptcha !== 'undefined') {
                refreshRecaptcha()
            }
            handleError(error)
        },
        complete: () => $button.removeClass('button-loading'),
    })
        let showError = function (message) {
            $('.contact-error-message').html(message).show()
        }

        let showSuccess = function (message) {
            $('.contact-success-message').html(message).show()
        }
    });
    $(document).on('click', '.subscibe-form button', function (event) {
        event.preventDefault();
        event.stopPropagation();

        $('.contact-success-message').html('').hide();
        $('.contact-error-message').html('').hide();

        // Show loader and hide button text
        document.getElementById('buttonText').style.display = 'none';
        document.getElementById('loader').style.display = 'inline-block';


        $.ajax({
            type: 'POST',
            cache: false,
            url: $(this).closest('form').prop('action'),
            data: new FormData($(this).closest('form')[0]),
            contentType: false,
            processData: false,
            success: res => {
                if (!res.error) {
                    $(this).closest('form').find('input[type=email]').val('');

                    // Reset form and hide loader
                    document.getElementById('subscribeForm').reset();
                    document.getElementById('buttonText').style.display = 'inline-block';
                    document.getElementById('loader').style.display = 'none';

                    document.getElementById('message').innerText = res.message;
                    document.getElementById('message').style.display = 'block';
                    document.getElementById('message').style.color = 'green';


                } else {
                    // showError(res.message);
                    console.log(res.message);
                }

                // Reset form and hide loader after a delay
                setTimeout(function() {
                    document.getElementById('subscribeForm').reset();
                    document.getElementById('buttonText').style.display = 'inline-block';
                    document.getElementById('loader').style.display = 'none';
                    document.getElementById('message').style.display = 'none'; // Hide message after timeout
                }, 3000);

            },
            error: res => {
                if (typeof refreshRecaptcha !== 'undefined') {
                    refreshRecaptcha();
                }
                // Loader
                document.getElementById('subscribeForm').reset();
                document.getElementById('buttonText').style.display = 'inline-block';
                document.getElementById('loader').style.display = 'none';

                // Mesage
                var errorMessage = res.responseJSON.message;

                document.getElementById('message').innerText = errorMessage;
                document.getElementById('message').style.display = 'block';
                document.getElementById('message').style.color = 'red';

                // Reset form and hide loader after a delay
                setTimeout(function() {
                    document.getElementById('subscribeForm').reset();
                    document.getElementById('buttonText').style.display = 'inline-block';
                    document.getElementById('loader').style.display = 'none';
                    document.getElementById('message').style.display = 'none'; // Hide message after timeout
                }, 3000);
            }
        });
    });

})(jQuery);

// function to set a given theme/color-scheme
function setTheme(themeName) {
    localStorage.setItem('theme', themeName);
    document.documentElement.className = themeName;
}

// function to toggle between light and dark theme
function toggleTheme() {
    if (localStorage.getItem('theme') === 'theme-dark') {
        setTheme('theme-light');
    } else {
        setTheme('theme-dark');
    }
}

// Immediately invoked function to set the theme on initial load
(function () {
    if (localStorage.getItem('theme') === 'theme-dark') {
        setTheme('theme-dark');
        document.getElementById('slider').checked = false;
    } else {
        setTheme('theme-light');
      document.getElementById('slider').checked = true;
    }
})();
