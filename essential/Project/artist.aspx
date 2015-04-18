<%@ Page Language="C#" AutoEventWireup="true" CodeFile="artist.aspx.cs" Inherits="Project_artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Artist Space</title>
   
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="js/artist.js"></script>
    <link href="css/Test.css" rel="stylesheet" />
    
    <script type="text/javascript" src="http://static.echonest.com/demo/common/get_key_with_callback.js"></script>
     <link href="css/artist.css" rel="stylesheet" />
    
	<link rel="stylesheet" type="text/css" href="css/main_responsive.css" />

<style>
    *{
   
   color:black;
}
    body{
        color:black;
         background-image:url(img/artist.png);
         
    }

 .well{
     background-color:none;
 }
 table,th,tr{
     border-color:black;
 }
 a{
     color:blue;
 }
 .ctabtn:hover{
 background: black;
  color: orange;
 }
 a.ctabtn
{
  display: inline-block;
  padding: 20px 60px;
  background-color: orange;
  color: #fff;
  border: solid 1px #dcdcdc;
  transition: box-shadow 0.3s, border 0.3s;
  font-family: "lato_regular", arial;
  font-size: 20px;
  text-decoration: none;
  margin-top: 60px;
  text-transform: uppercase;
  letter-spacing: 1px;
  -moz-border-radius: 1px;
  -webkit-border-radius: 1px;
  border-radius: 1px;
}

</style>
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


 <section class="cta">
		<h3>One Stop for all details</h3>
		
        <input id="artist2" type="text" placeholder="Enter artist name ..."/>
        <br />
		<a id="go" class="ctabtn">Go Go Go</a>
       
        <hr />
        
     </section>

<div class="container">
   

    <div id='yes-artist' class="container">

        <section class="cta" style="background-image:url(img/artist.png)">
		<h2 class="well" id="artist-name" > Artist </h2>
		
	</section><!--  End cta  -->


      <div class="row-fluid">
        <div class="">
          <div id="bio" > </div>
        </div>

        
       </div>
        <br />
       
        <hr />
       
      <div class="row-fluid">
        <div class="span6">
          <div id="images"> 
             <h3> Images: Navigate using the buttons </h3>
             <div id="aimages" class="image-container">  
                  <div id='button-panel' class='image-annotations btn-group'>
                      <button id='img-prev' rel='tooltip' title='previous image'
                        class="btn btn-primary btn-small"><i class="icon-white icon-backward"></i></button>
                      <button id='img-next' rel='tooltip' title='next image', 
                            class="btn btn-primary btn-small"><i class="icon-white icon-forward"></i></button>
                  </div>
                  <div class="pull-right label image-annotations" id="image-attribution"> </div>
             </div> 
          </div>
       </div>
        <div class="span6">
          <h3>Videos: Navigate using arrows in the video</h3>
             <div id="avideo" class="video-container">  
                  <div id='button-panel' class='video-annotations btn-group'>
                      <button id='vid-prev' rel='tooltip' title='previous video'
                        class="btn btn-primary btn-small"><i class="icon-white icon-backward"></i></button>
                      <a id='vid-play' target="video" rel='tooltip' title='play video', 
                            class="btn btn-primary btn-small"><i class="icon-white icon-play"></i></a>
                      <button id='vid-next' rel='tooltip' title='next video', 
                            class="btn btn-primary btn-small"><i class="icon-white icon-forward"></i></button>
                  </div>
                  <div class="pull-right label video-annotations" id="video-site"> </div>
                  <div class="label video-annotations" id="video-title"> </div>
             </div> 
       </div>
     </div>

        <br />
        <hr />


      <div class="row-fluid">
        <div class="span6">
          <h3>About the Artist </h3>
                <table class="table table-condensed table-bordered table-striped">
                    <tbody>
                        <tr> <th style="color:orange"> Years Active </th> <td id="artist-years-active"> </td>  </tr>
                        <tr> <th > Location</th> <td id="artist-location"> </td> </tr> 
                        <tr> <th style="color:orange"> Hotttnesss </th> <td id="artist-hotttnesss"> </td>  </tr>
                        <tr> <th > Social Websites </th> <td id="artist-urls" style="color:red"> </td>  </tr>
                       
                    </tbody>
                </table>
        </div>
        <div class="span6">
          <h3>Album Details</h3>
            <table class="table table-condensed table-bordered table-striped">
                <thead> <tr> <th style="color:orange"> Type </th> <th style="color:orange"> Count </th> <th style="color:orange"> Type </th> <th style="color:orange"> Count </th> </tr> </thead>
                <tbody id="artist-doc-counts"> </tbody>
            </table>
        </div>
      </div>


        <br />
        <hr />

    <!-- Example row of columns -->
      <div class="row-fluid">
        <div >
          <h3 >Artists similar that you might want to check out.</h3>
          <div id="similar-artists"> </div>
        </div>
      
       </div>
     
      </div>


      <div class="row-fluid">
      </div>
   
   

  </div>

  <footer style="background:none">
		<a href="index.aspx"><img src="img/logo_footer.png" alt="MusicBuzz" /></a>
		<p class="rights">Copyright © MalavikaHarikumardev - All rights reserved </p>
	</footer><!--  End Footer  -->
</body>
</html>
