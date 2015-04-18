<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Project_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Music Buzz-One Stop for all Music Lovers</title>
	<meta charset="utf-8" />
	<meta name="author" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/main_responsive.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/carouFredSel.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <header>
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

	<section class="billboard">
			<div class="wrapper">
				<div class="caption">
					<p >Music Buzz</p>
					<p>One Stop for all music Lovers</p>
				</div>
			</div>
	</section><!--  End Billboard  -->

	<section class="features">

		<div class="wrapper">
				<div class="feature">
					<div class="ficon">
						
					</div>
					<div class="details_exp">
						<h3>TOP ARTISTS</h3>
						<p style="font-size:large;color:white">This Week's Top 5 Artists</p>
                         <div id="result"></div>
						<a href="Top10artist.aspx" style="font-size:large;color:white">Check out the top 20 artists<span>→</span></a>
					</div>
				</div>
				<div class="feature">
					<div id="carousel">
    <ul id="carouselNav">
        <li>
            <a href="#"><img src="img/ar1.jpg" /></a>
        </li>
        <li>
            <a href="#"><img src="img/ar2.jpg" /></a>
        </li>     
        <li>
            <a href="#"><img src="img/ar4.jpg" /></a>
        </li>
    </ul>
</div>
            
                    </div>
				
				
			</div>
           
	</section><!--  End Features  -->

	<section class="testimonials wrapper">

		<span class="sep_line sep_top">
		</span>

		<h2>Guess Which Artist sang this song</h2>
		<div class="testi_slider" id="tslider">
			<div class="t">
				<p>Hush now, baby, baby, don't you cry
                   Mama's gonna make all of your nightmares come true
                   Mama's gonna put all of her fears into you
                   Mama's gonna keep you right here under her wing
                   She won't let you fly but she might let you sing</p>
                <p class="author" style="color:seagreen">Psst Let me give you a Clue: It starts with Pink</p>
			</div>
			<div class="t">
				<p>There may be others 
that know you longer
Who pledge their hearts to you
But there's no other 
could love you stronger
Any stronger than I do</p>
				<p class="author" style="color:seagreen">How about Elvis :D  </p>
			</div>
			
		</div>
		<div id="t_navigation"></div>
		<span class="sep_line sep_bottom"></span>

	</section><!--  End Testimonials  -->

	<section class="info">

		<div class="info_pic">

		</div>
		<div class="info_details">
			<h3>OMG Fact about the Beetles</h3>
			<p>The Beatles are talked about as one of the best bands of all times but surprisingly none of The Beatles could even read music! Although they could play the guitar, and wrote their own lyrics, they never learned how to read music</p>
			<a href="artist.aspx">Want to Know more ??  <span>→</span></a>
		</div>

	</section><!--  End Info  -->

	<section class="cta">
		<h3>Want to know about me and how I developed this Website</h3>
        <p>Being a Music Buff , I wanted to create a Website where you can find all billboard details in just one click</p>
		<a href="Aboutme.aspx" class="cta_btn">Click to know more about me :D </a>
		<span class="cta_sep"></span>
	</section><!--  End cta  -->

	<footer>
		<a href="index.aspx"><img src="img/logo_footer.png" alt="MusicBuzz" /></a>
		<p class="rights">Copyright © MalavikaHarikumardev - All rights reserved </p>
	</footer><!--  End Footer  -->

</body>
</html>
