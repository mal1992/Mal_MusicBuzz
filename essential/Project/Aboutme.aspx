<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aboutme.aspx.cs" Inherits="Project_Aboutme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About me </title>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/main_responsive.css" />
    <style>
        body{
           font-family: 'Gill Sans', 'Gill Sans MT', Calibri, sans-serif;
           font-size:large;
            color:white;
            background-image:url(img/bk.jpg)
        }
  .tooltip {
position: relative; opacity: 0; color: #FFF;
top: -100px; left: 0px;
width: 180px; padding: 10px;
border-radius: 25px; -webkit-border-radius: 25px;
background-color: rgba(0,0,30,0.5);
-webkit-box-shadow: 0px 0px 15px 2px rgba(255,255,255,.75);
box-shadow: 0px 0px 15px 2px rgba(255,255,255, .75);
-webkit-transition: .5s; transition: .5s;
-webkit-transform: rotateY(180deg); transform: rotateY(180deg);
}
.container .tooltip:after {
position: absolute; top: 100%; left: 45%; height: 0; width: 0;
border: 6px solid transparent; border-top: 6px solid rgba(0, 0, 30, 0.5);
content: "Malavika says"; white-space: nowrap; color:#DDD;
}
.container:hover .tooltip {
opacity: 1; top: -225px;
-webkit-transform: rotateY(0deg); transform: rotateY(0deg);
}


#ceo{
    width:350px;height:500px;
    border-radius:10px;
}
 #container {
            width: 900px;
            height: auto;
            margin: 0 auto;
            border: double;
            background-color: black;
            border-radius: 25px;
            opacity:0.6;
          
        }
    @media only screen and (max-width: 1100px) {

            #container {
                width: 90%;
            }
            #ceo{
                width:200px;
                height:320px;
            }
           
        }
    @media only screen and (max-width: 600px) {

            #container {
                width: 90%;
            }
            #ceo{
                width:100px;
                height:200px;
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

			
		</div>
	</header><!--  End Header  -->
        <div id="container">
            <br />

            <h1 style="font-size:150%">About me</h1>
<div class="container" style="text-align:center" >
<img id="ceo" src="img/ceo.jpg" alt="" />
<div class="tooltip">
<p class="tooltiptxt">Loves Music and Designing Websites</p>
    </div>
   
</div>
            <h3 style="color:wheat">Few quotes to make your day</h3>
                <p>One good thing about music, when it hits you, you feel no pain. ----
Bob Marley
</p>
                <p>
                    Music was my refuge. I could crawl into the space between the notes and curl my back to loneliness.----
Maya Angelou

                </p>
            <hr />
            <div>
                <h2 style="color:wheat">Where did this love for music come from ? :d</h2>
                <p>All my life I have been in love with music. From a young age I would sing and dance to all sorts
                     of random music that would come up on the radio. When I was about 10 I got my 
                    first ever cd and it was by the one and only Pink Floyd.However my music taste 
                    has expanded a hell of a lot since when I was 10,
                     although I do like to listen to a bit of Back to Bedlam from time to time ;)</p>
               <p>I created this website , cause this is something I would personally like someone to have it done for me
                   collecting all components in one website :D . I will further work on it to make it better and def add more 
                   elements !
               </p>
            </div>
          <hr />

            <div>
                

                <h3 style="color:wheat">Few ways to connect with me</h3>
                <a href="https://www.linkedin.com/in/mal44" style="color:orange;font-size:100%">The Professional Network : Linkedin</a>
                <br />
                <a href="https://www.facebook.com/malvika.harikumar" style="color:orange;font-size:100%">The Not so Professional Network : Facebook</a>
            </div>
            <br />
            <br/><br/>
</div>
             
            
    </form>
</body>
</html>
