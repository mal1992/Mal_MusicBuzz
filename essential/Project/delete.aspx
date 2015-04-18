<%@ Page Language="C#" AutoEventWireup="true" CodeFile="artist.aspx.cs" Inherits="Project_artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Artist Space</title>
   
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="js/artist.js"></script>
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet" />
    
    <script type="text/javascript" src="http://static.echonest.com/demo/common/get_key_with_callback.js"></script>
     <link href="css/artist.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/main_responsive.css" />

  
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
					<li><a href="#" style="color:orange">Artist News</a></li>
					<li><a href="#" style="color:orange">Artist Reviews</a></li>
					<li><a href="#" style="color:orange">Book Tickets</a></li>
					<li><a href="#" style="color:orange">Contact</a></li>
				</ul>
			</nav>

			<ul class="social">
				<li><a class="fb" href="#"></a></li>
				<li><a class="twitter" href="#"></a></li>
				<li><a class="gplus" href="#"></a></li>
			</ul>
		</div>
	</header><!--  End Header  -->
 <section class="cta">
		<h3>One Stop for all details</h3>
		
        <input id="artist2" type="text" placeholder="Enter artist name ..."/>
        <br />
		<button id="go" class="cta_btn">Go</button>
       
        <hr />
        
         
		<span class="cta_sep"></span>
     </section>

<div class="container">
   

    <div id='yes-artist' class="container">

        <section class="cta">
		<h2 class="span12 well" id="artist-name"> Artist </h2>
		<p>Being a Music Buff , I wanted to create a Website where you can find all billboard details in just one click</p>
		<a href="#" class="cta_btn">Click to know more about me :D </a>
		<span class="cta_sep"></span>
	</section><!--  End cta  -->



      <div class="row-fluid">
          <h2 class="span12 well" id="artist-name"> Artist </h2>
      </div>
      <div class="row-fluid">
        <div class="">
          <div id="bio"> </div>
        </div>

        
       </div>

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
        <div class="span4">
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

      <div class="row-fluid">
        <div class="span6">
          <h3>General Info</h3>
                <table class="table table-condensed table-bordered table-striped">
                    <tbody>
                        <tr> <th> Years Active </th> <td id="artist-years-active"> </td>  </tr>
                        <tr> <th> Location</th> <td id="artist-location"> </td> </tr> 
                        <tr> <th> Hotttnesss </th> <td id="artist-hotttnesss"> </td>  </tr>
                        <tr> <th> Familiarity </th> <td id="artist-familiarity"> </td> </tr>
                        <tr> <th> URLs </th> <td id="artist-urls"> </td>  </tr>
                        <tr> <th> Echo Nest ID </th> <td id="artist-id"> </td> </tr>
                    </tbody>
                </table>
        </div>
        <div class="span6">
          <h3>Doc Counts</h3>
            <table class="table table-condensed table-bordered table-striped">
                <thead> <tr> <th> Type </th> <th> Count </th> <th> Type </th> <th> Count </td> </tr> </thead>
                <tbody id="artist-doc-counts"> </tbody>
            </table>
        </div>
      </div>

    <!-- Example row of columns -->
      <div class="row-fluid">
        <div class="span6">
          <h3>Similar Artists</h3>
          <div id="similar-artists"> </div>
        </div>
        <div class="span6">
          <h3 id="top-genre-header">Top Genres</h3>
          <div id="top-genres"> </div>
       </div>
       </div>
      </div>


      <div class="row-fluid">
      </div>
   
  </div>

 
</body>
</html>
