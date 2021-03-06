﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Project_News" %>

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
     <header style="background:none;background-image:none">
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
		<h3>Get Recent News about your Fav Artist</h3>
		<br />
        <input id="artist" type="text" placeholder="Enter artist name ..."/>
        <br />
		<a href="#" id="go" class="cta_btn">Get News</a>
       
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
         var apiKey = "AJYBC172TW7GL04YY";
         jQuery.ajaxSettings.traditional = true;
         function fetchNews(artist, highRelevance) {
             var url = 'http://developer.echonest.com/api/v4/artist/news';
             $("#results").hide();
             var args = {
                 format: 'json',
                 api_key: apiKey,
                 name: artist,
                 results: 10,
                 high_relevance: highRelevance,
             };
             info("Fetching the news for " + artist);
             $.getJSON(url, args,
                     function (data) {
                         $("#results").empty();
                         if (!('news' in data.response)) {
                             error("Can't find any news for " + artist);
                         } else {
                             $("#results").show();
                             var titles = {}
                             $.each(data.response.news, function (index, news) {
                                 if (!(news.name in titles)) {
                                     var div = formatNews(news);
                                     $("#results").append(div);
                                     titles[news.name] = 1;
                                 }
                             });
                             info("Showing " + data.response.news.length + " of " + data.response.total + " news items for " + artist);
                         }
                     },
                     function () {
                         error("Trouble getting news for " + artist);
                     }
                 );
         }
         function formatNews(news) {
             var div = $("<div class='well'>");
             div.append($("<h4 style='color:orange ' >").html(news.name));
             var date = "";
             if ('date_posted' in news) {
                 date = "<i>" + news.date_posted.substring(0, 10) + '</i> ';
             }
             div.append($("<p>").html(date + news.summary + " ..."));
             var link = $("<a>");
             link.attr('href', news.url);
             
             link.text("full story on " + getSource(news.url));
             div.append(link);
             return div;
         }
         function go() {
             var artist = $.trim($("#artist").val());
             if (artist.length > 0) {
                 var relevance = $("#relevant").is(':checked');
                 fetchNews(artist, relevance);
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
                     api_key = 'MY_ECHO_NEST_API_KEY';
                 }
                 apiKey = api_key;
                 $.ajaxSetup({ cache: false });
                 $("#all_results").hide();
                 $("#go").click(go);
                 $("#artist").change(go);
             });
         });
    </script>
</body>
</html>
