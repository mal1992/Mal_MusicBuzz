<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Project_Contatc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
     <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/main_responsive.css" />
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script>
        function initialize() {
            var mapOptions = {
                zoom: 17
            };

            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var pos = new google.maps.LatLng(42.3343843,
                                                     -71.10092220000001);

                    map.setCenter(pos);
                    var marker = new google.maps.Marker({
                        position: pos,
                        map: map,
                        title: 'This is where music buzz is buzzing'
                    });

                    var infoWindow = new google.maps.InfoWindow({
                        map: map,
                        position: pos,
                        content: "This is where music buzz is buzzing"
                    });

                    

                }, function () {
                    handleNoGeolocation(true);
                });
            } else {
                // Browser doesn't support Geolocation
                handleNoGeolocation(false);
            }

        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>


    <style>
        body{
            color:orangered;
            background-image:url(img/me.jpg);
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, sans-serif;
        }
        #nav {
    line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:350px;
    float:left;
    padding:10px;	 	 
}


         #map-canvas {
            height: 400px;
        }
         #container {
            width: 900px;
            height: auto;
            margin: 0 auto;
            border: 20px thick;
            border-color: grey;
            background-color: black;
            border-radius: 25px;
           opacity:0.8; 
        }

         table,th,td{
             color:wheat;
         }

        @media only screen and (max-width: 1100px) {
            #container {
                width: 90%;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
       

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
	</header><!--  End Header  -->
         <br />
        <br />
    <div id="container">

        <br />
        <h1 style="font-size:200%;text-align:center" >Contact Us Page</h1>
        <br />
         <div id="results" style="  margin: 30px;
            padding: 50px;
            background:black;
            border: solid 3px black;">
        <div class="panel-body">
            <div id="map-canvas"></div>
        </div>
        <div>
            </div>
<div>
    <br />
    <p>Music Buzz is being developed currently at boston.Get back to contact details for more information</p>
    <br />
    <br />
  <p style="color:wheat">
      Name     : Malavika Harikumardev
  </p>
    <p style="color:wheat">
        Email Id : harikumardev.m@husky.neu.edu
    </p>
    <br />
    <br />
    <p>Please Drop a mail to this email id for any suggestions or complain</p>
    <p>Please Like Music Buzz Page at Facebook :D</p>
    <br />

</div>
</div>
    
    </div>
        <footer style="background:none">
		<a href="index.aspx"><img src="img/logo_footer.png" alt="MusicBuzz" /></a>
		<p class="rights" style="color:white">Copyright © MalavikaHarikumardev - All rights reserved </p>
	</footer><!--  End Footer  -->

    </form>
</body>
</html>
