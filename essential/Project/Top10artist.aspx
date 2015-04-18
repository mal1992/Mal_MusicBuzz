<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top10artist.aspx.cs" Inherits="Project_Top10artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Top Artists of this week</title>
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/main_responsive.css" />
    <style>
        body{
            
            background-image:url( img/guitar.jpg);
             font-family: "Lucida Grande", sans-serif;
        }
        #header {
    
    color:black;
    text-align:center;
    padding:3px;
   
}
#nav {
    line-height:30px;
    color:white;
    background-color:black;
    height:120px;
    width:60px;
    float:left;
    text-align:center;
   
}
#section {
    width:350px;
    height:120px;
    float:left;
   align-content:center;
   text-align:center;
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   
}

         #container {
            width: 900px;
            height: auto;
            margin: 0 auto;
            border: 20px thick;
            border-color: green;
            background-color: white;
            border-radius: 25px;
           opacity:0.8; 
        }
        
        @media only screen and (max-width: 1100px) {
            #container {
                width: 90%;
            }
        }
        .rw-wrapper{
	width: 80%;
	position: relative;
	margin: 10px auto 0 auto;
	padding: 10px;
}
.rw-sentence{
	margin: 0;
	text-align: left;
	text-shadow: 1px 1px 1px rgba(255,255,255,0.8);
}
.rw-sentence span{
	color: #444;
	font-size:150%;
	font-weight:600;
}
.rw-words{
	display: inline;
	text-indent: 10px;
}
.rw-words-1 span{
	position: absolute;
	opacity: 0;
	overflow: hidden;
	color: #6b969d;
	-webkit-animation: rotateWord 18s linear infinite 0s;
	-ms-animation: rotateWord 18s linear infinite 0s;
	animation: rotateWord 18s linear infinite 0s;
}
.rw-words-1 span:nth-child(2) { 
    -webkit-animation-delay: 3s; 
	-ms-animation-delay: 3s; 
	animation-delay: 3s; 
	color: #6b889d;
}
.rw-words-1 span:nth-child(3) { 
    -webkit-animation-delay: 6s; 
	-ms-animation-delay: 6s; 
	animation-delay: 6s; 
	color: #6b739d;	
}
.rw-words-1 span:nth-child(4) { 
    -webkit-animation-delay: 9s; 
	-ms-animation-delay: 9s; 
	animation-delay: 9s; 
	color: #7a6b9d;
}
.rw-words-1 span:nth-child(5) { 
    -webkit-animation-delay: 12s; 
	-ms-animation-delay: 12s; 
	animation-delay: 12s; 
	color: #8d6b9d;
}
.rw-words-1 span:nth-child(6) { 
    -webkit-animation-delay: 15s; 
	-ms-animation-delay: 15s; 
	animation-delay: 15s; 
	color: #9b6b9d;
}
@-webkit-keyframes rotateWord {
    0% { opacity: 0; }
    2% { opacity: 0; -webkit-transform: translateY(-30px); }
	5% { opacity: 1; -webkit-transform: translateY(0px);}
    17% { opacity: 1; -webkit-transform: translateY(0px); }
	20% { opacity: 0; -webkit-transform: translateY(30px); }
	80% { opacity: 0; }
    100% { opacity: 0; }
}
@-ms-keyframes rotateWord {
    0% { opacity: 0; }
    2% { opacity: 0; -ms-transform: translateY(-30px); }
	5% { opacity: 1; -ms-transform: translateY(0px);}
    17% { opacity: 1; -ms-transform: translateY(0px); }
	20% { opacity: 0; -ms-transform: translateY(30px); }
	80% { opacity: 0; }
    100% { opacity: 0; }
}
@keyframes rotateWord {
    0% { opacity: 0; }
    2% { opacity: 0; -webkit-transform: translateY(-30px); transform: translateY(-30px); }
	5% { opacity: 1; -webkit-transform: translateY(0px); transform: translateY(0px);}
    17% { opacity: 1; -webkit-transform: translateY(0px); transform: translateY(0px); }
	20% { opacity: 0; -webkit-transform: translateY(30px); transform: translateY(30px); }
	80% { opacity: 0; }
    100% { opacity: 0; }
}
@media screen and (max-width: 768px){
	.rw-sentence { font-size: 18px; }
}
@media screen and (max-width: 320px){
	.rw-sentence { font-size: 9px; }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header style="background:none;background-color:none">
		<div class="wrapper" >
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
    <div id="container">
        
        <br />
        <h1 style="font-size:200%"> Top 20 Artists of this Week</h1>
        <hr />

        	<section class="rw-wrapper">
				<h2 class="rw-sentence">
					<span>Real Artists are like</span>
					<br />
					<span>flying beautiful butterflies</span>
					<br />
					<span>with a silent touch of</span>
					<div class="rw-words rw-words-1">
						<span>talent</span>
						<span>colors</span>
						<span>happiness</span>
						<span>hope</span>
						<span>inspiration</span>
						<span>Smile</span>
					</div>
				</h2>
			</section>
			
      <script>
        $(document).ready(function () {
            $.getJSON("http://ws.audioscrobbler.com/2.0/?method=chart.gettopartists&api_key=1bc8721107d980dbbf6357927816c966&format=json&limit=20&callback=?", function (json) {
                var html = '';
                var count = 1;
               // html = "<table><tr><th>Artist Name</th><th> Image</th> </tr> ";
                $.each(json.artists.artist, function (i, item) {
                   
                    html += "<div id='header'><h4><a style='color:black' href=" + item.url + " target='_blank'>" + item.name + "</h4></a></div>";
                    html += "<div id='nav'><h2>" + count + "</h2></div>";
                    html += "<div id='section'><p><img style='width:100px;height:100px' src=" + item.image[2]["#text"] + "></p></div>";
                    html += "<div id='footer'><p > " + item.listeners + " are listening right now</p> </div></br>"
                     count += 1;
                });
                html += "</table>"
                $('#result').append(html);
            });
        });
    </script>
        
    
    
    <div id="result" style="  margin: 30px;
            padding: 50px;
            background: #fff;
            border: solid 3px black;"></div>


    </div>
    </form>
</body>
</html>
