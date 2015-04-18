$(document).ready(function(){

    /*  Testimonials Slider  */
	$('#tslider').carouFredSel({
            circular : true,
            infinite: false,
            responsive : true,
            scroll : {
                items : 1,
                fx : "fade"
            },
            pagination: {
				container:	"#t_navigation",
				anchorBuilder:	function(nr){
					return '<a href="#'+nr+'"></a>';
				}
			}
    });


    /*  hide-show mobile menu  */
    $("#menu_icon").click(function(){
        $("#nav_menu").toggleClass("show_menu");
        return false;
    });

});

jQuery(document).ready(function () {
    /**
	 * Check if first li element is hidden
	 * then show
	 */
    if (jQuery('#carouselNav li:first-child').is(':hidden')) {
        // Toggle visibility
        jQuery('#carouselNav li:first-child').toggle();
    }
    // Interval time
    var carouselInterval = 3000;
    // Slider
    function carouselSlide() {
        // Check if last element was reached
        if (jQuery('#carouselNav li:visible').next().length == 0) {
            // Hide last li element
            jQuery('#carouselNav li:last-child').slideUp('fast');
            // Show the first one
            jQuery('#carouselNav li:first-child').slideDown('fast');
        } else {
            // Rotate elements
            jQuery('#carouselNav li:visible').slideUp('fast').next('li:hidden').slideDown('fast');
        }
    }
    // Set Interval
    var carouselScroll = setInterval(carouselSlide, carouselInterval);
    // Pause on hover
    jQuery('#carousel').hover(function () {
        clearInterval(carouselScroll);
    }, function () {
        carouselScroll = setInterval(carouselSlide, carouselInterval);
        carouselSlide();
    });
});

// Top Tracks from chart

$(document).ready(function () {
    $.getJSON("http://ws.audioscrobbler.com/2.0/?method=chart.getTopTracks&api_key=1bc8721107d980dbbf6357927816c966&limit=5&format=json&callback=?", function (json) {
        var html = '';
        $.each(json.tracks.track, function (i, item) {
            html += "<p><a href=" + item.url + " target='_blank'>" + item.name + " </a> - By " + "<p style='color:orange;margin-bottom:0px' >" + item.artist.name + "</p></p>";
            
        });
        $('#result').append(html);
    });
});