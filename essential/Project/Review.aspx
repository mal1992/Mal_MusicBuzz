<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Review.aspx.cs" Inherits="Project_Review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/main_responsive.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/carouFredSel.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <link href="css/news.css" rel="stylesheet" />
    
     <script>
         function fetchApiKeyV1(callback) {
             $.getJSON('http://developer.echonest.com/user/api_key.json', function (data) {
                 var apiKey = data.api_key;
                 var isLoggedIn = 'logged_in' in data && data.logged_in;
                 if (callback) {
                     callback(apiKey, isLoggedIn);
                 }
             }).error(function () {
                 var apiKey = 'API_KEY_ERROR'
                 var isLoggedIn = false;
                 if (callback) {
                     callback(null, false);
                 }
             });
         }



         function fetchApiKey(callback) {
             var spareKey = 'AJYBC172TW7GL04YY';
             $.ajax({
                 type: "GET",
                 dataType: "json",
                 xhrFields: { withCredentials: true },
                 url: "http://developer.echonest.com/user/api_key.json"
             }).then(
                     function (data) {
                         if (callback) {
                             if (data.logged_in) {
                                 callback(data.api_key, data.logged_in);
                             } else {
                                 callback(spareKey, data.logged_in);
                             }
                         }
                     },
                     function (data) {
                         if (callback) {
                             callback(spareKey, false);
                         }
                     }
                 );
         }
    </script>
  
  <style>
      body{
          color:white;
      }
      a{
          color:wheat;
      }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
     <header style="background:none">
		<div class="wrapper">
			<a href="index.aspx"><img src="img/logo.png" alt="MusicBuzz" class="logo" /></a>
			<a href="#" class="menu_icon" id="menu_icon"></a>
			<nav id="nav_menu">
				<ul>
                    <li><a href="artist.aspx" style="color:orange">Artist-pedia</a></li>
					<li><a href="News.aspx" style="color:orange">Artist News</a></li>
					<li><a href="Review.aspx" style="color:orange">Artist Reviews</a></li>
				    <li><a href="Top10artist.aspx" style="color:orange">Top Artists</a></li>
					<li><a href="Contact.aspx" style="color:orange">Contact</a></li>
				</ul>
			</nav>

			<ul class="social">
			<li><a class="fb" href="https://www.facebook.com/musicbuzzmal"></a></li>
				<li><a class="twitter" href="https://twitter.com/Malvikah444"></a></li>
			</ul>
		</div>
	</header>


    <section class="cta">
		<h3>See Recent Reviews for your Favourite Artist</h3>
		<br />
        <input id="artist" type="text" placeholder="Enter artist name ..."/>
        <br />
		<a href="#" id="go" class="cta_btn">Check out the reviews</a>
       
        <hr />
        
         
		<span class="cta_sep"></span>

	</section><!--  End cta  -->


        <div class="hero-unit">
          
               <div id="info" class=""> </div>
        </div>
        <div id="results" style="  margin: 30px;
            padding: 50px;
            background: #fff;
            border: solid 3px black;"><p style="color:black">Results to be displayed here</p></div>
        
    <footer>
		<a href="index.aspx"><img src="img/logo_footer.png" alt="MusicBuzz" /></a>
		<p class="rights">Copyright © MalavikaHarikumardev - All rights reserved </p>
	</footer><!--  End Footer  -->

     <script type="text/javascript">
         var apiKey = 'AJYBC172TW7GL04YY';
         jQuery.ajaxSettings.traditional = true;
         function fetchReviews(artist) {
             var url = 'http://developer.echonest.com/api/v4/artist/reviews';
             $("#results").hide();
             var args = {
                 format: 'json',
                 api_key: apiKey,
                 name: artist,
                 results: 15,
             };
             info("Fetching reviews for " + artist);
             $.getJSON(url, args,
                     function (data) {
                         console.log(data);
                         $("#results").empty();
                         if (!('reviews' in data.response)) {
                             error("Can't find any reviews for " + artist);
                         } else {
                             $("#results").show();
                             var titles = {}
                             $.each(data.response.reviews, function (index, item) {
                                 if (!(item.name in titles)) {
                                     var div = format(item);
                                     if (div) {
                                         $("#results").append(div);
                                     }
                                     titles[item.name] = 1;
                                 }
                             });
                             info("Showing " + data.response.reviews.length + " of " + data.response.total + " reviews for " + artist);
                         }
                     },
                     function () {
                         error("Trouble getting reviews for " + artist);
                     }
                 );
         }
         var blackList = ['www.crawdaddy.com'];
         function format(item) {
             var div = $("<div class='well clearfix'>");
             var source = getSource(item.url);
             if (blackList.indexOf(source) != -1) {
                 return null;
             }
             div.append($("<h4 style='color:orange'>").html(item.name));
             
             var date = null;
             if ('date_posted' in item) {
                 date = item.date_posted;
             } else if ('date_found' in item) {
                 date = item.date_found;
             }
             if (date) {
                 date = "<i>" + date.substring(0, 10) + '</i> ';
             }
             div.append($("<p>").html(date + item.summary + " ..."));
             var link = $("<a>");
             link.attr('href', item.url);
             link.text("full review on " + source);
             div.append(link);
             return div;
         }
         function go() {
             var artist = $.trim($("#artist").val());
             if (artist.length > 0) {
                 var relevance = $("#relevant").is(':checked');
                 fetchReviews(artist, relevance);
             } else {
                 info("Type an artist name first");
             }
         }
         function getSource(url) {
             var path = url.split('/');
             return path[2];
         }
         function info(s) {
             $("#info").removeClass();
             if (s.length > 0) {
                 $("#info").addClass("alert alert-info");
             }
             $("#info").text(s);
         }
         function error(s) {
             $("#info").removeClass();
             if (s.length > 0) {
                 $("#info").addClass("alert alert-error");
             }
             $("#info").text(s);
         }

         $(document).ready(function () {
             // fetchApiKey will fetch the Echo Nest demo key for demos
             // hosted on The Echo Nest, otherwise it fetch an empty key
             fetchApiKey(function (api_key, isLoggedIn) {
                 if (!api_key) {
                     api_key = 'AJYBC172TW7GL04YY';
                 }
                 apiKey = api_key;
                 $("#all_results").hide();
                 $("#go").click(go);
                 $("#artist").change(go);
             });
         });
</script>
</body>
</html>
