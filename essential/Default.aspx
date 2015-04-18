<%@ Page Language="C#" %>

<script runat="server">
    
</script>

<!DOCTYPE html>

<html lang="en">

<head>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#nav-mobile").html($("#nav-main").html());
            $("#nav-trigger span").click(function () {
                if ($("nav#nav-mobile ul").hasClass("expanded")) {
                    $("nav#nav-mobile ul.expanded").removeClass("expanded").slideUp(250);
                    $(this).removeClass("open");
                } else {
                    $("nav#nav-mobile ul").addClass("expanded").slideDown(250);
                    $(this).addClass("open");
                }
            });
        });
    </script>
<meta charset='utf-8' />

<title>Malavika's Home Page</title>
    <link href="css/HomePage.css" rel="stylesheet" />
<style type="text/css">
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
    ul.master_navigation
    {
        font-size: 100%;
        font-weight: bold;
        text-align: center;
        list-style: none;
        margin: 0.5em 0;
        padding: 0;
    }

    ul.master_navigation li
    {
        display: inline-block;
        padding: 0 0.5%;
    }

    a
    {
        color: #08f;
        font-weight: bold;
        text-decoration: none;
    }

    a:visited
    {
        color: #88f;
    }

    a:hover
    {
        color: #f00;
    }

    p
    {
        text-align: justify;
    }
</style>

<style type="text/css" media="screen">
    body {
        
        max-width: 100%;
        margin: 0;
        padding: 0;
    }

    .pad {
        padding: 10px;
    }
</style>

</head>

<body>

<div class="pad">

<form id="form1" runat="server">

<div>
<nav id="nav-main">
    <ul>
          <li><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
    <li><a href="statistics/" target="_blank">Statistics</a></li>
    <li><a href="source/" target="_blank">Source</a></li>
    <li><a href="search/" target="_blank">Search</a></li>
    <li><a href="searchtree/" target="_blank">SearchTree</a></li>
    <li><a href="textview/" target="_blank">TextView</a></li>
    <li><a href="filelist.aspx" target="_blank">FileList</a></li>
    <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
    <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
    <li><a href="blog/" target="_blank">Blog</a></li>
    </ul>
</nav>
<div id="nav-trigger">
    <span>Menu</span>
</div>
<nav id="nav-mobile"></nav>


    <div>
   <div class="space"> <br /><br /></div>
    <div class=".header" >
    <div class="grow pic">
  <img src="images/ProfilePic.JPG" alt="portrait" height="500" width="380">
</div>

 <section class="rw-wrapper">
				<h2 class="rw-sentence">
					<span>Life isn't about Finding yourself</span>
					<br />
					<span>Life is all about </span>
					<br />
                    <div class="rw-words rw-words-1">
						<span>creating yourself</span>
						<span>dreaming the future</span>
						<span>making a difference</span>
						<span>hope for the best</span>
						<span>inspiring everyone</span>
						<span>beleiving in God</span>
					</div>
                   <br />
                    <br />
        <br />
        <br />
					 <span style="color:white">Welcome to Malavika's Homepage :)</span>
				</h2>
			</section>
        </div>
        <br />
        <br />
        
        
        <br />
        <br />
        <br />
   
    <p> I am currently in my Second Semester and this website is For Web Development coursework Under Dr. Richard Rasala.</p>

<hr />

<p>

Hello Everyone !! This is Malavika doing my Masters at Northeastern University in Computer and Information Science.
This Website is developed as a part of the course  Web Development under Prof. Richard Rasala.

I have chosen this course to get a better exposure to Web Technologies like Html5, CSS3 , Jquery , Javascript :D 

</p>

 

        <div id="ballMenuContainer" >
<div id="menuBall1" class="menuBall">
  <a href="story/index.htm" target="_blank" class="ball redball">
    <div class="menuText" style="font-size:x-small">
        Experiments
    </div>
  </a>
</div>
            <div id="menuBall2" class="menuBall">
  <a href="blog/" target="_blank" class="ball redball">
    <div class="menuText" style="font-size:x-small">
        Blog
    </div>
  </a>
</div>
            <div id="menuBall3" class="menuBall">
  <a href="Project/index.aspx" target="_blank" class="ball redball">
    <div class="menuText" style="font-size:x-small">
        Project
    </div>
     
  </a>
</div>
             <div id="menuBall4" class="menuBall">
  <a href="http://net4.ccs.neu.edu/home/mal/story/index.htm?project/" target="_blank" class="ball redball">
    <div class="menuText" style="font-size:x-small">
        Project Documentation
    </div>
      </a>
                 </div>
        </div>
        <br /><br />
        <hr />
       <p>
           My Project for this semester is all about the People who create Music. My website will help you find anything minute detail
           about any of your favourite artist. why dont you check it out ! Link above
       </p>
        <p>I Thank Prof.Rasala and Prof.Jose for providing such a wonderful oppurtunity.This course has helped me learn different
            technologies in the pace comfortable for me enabling me to experiment different techinques and learn from them.
        </p>

<hr />
        <div style="border:thick;border-color:white;text-align:center">
        <h5>Number of Page Views</h5>
        <!-- Counter Code START --><a href="http://www.e-zeeinternet.com/" target="_blank"><img src="http://www.e-zeeinternet.com/count.php?page=1094510&style=default&nbdigits=6&reloads=1" alt="Free Counter" border="0" ></a><br><a href="http://www.e-zeeinternet.com/" title="Free Counter" target="_blank" style="font-family: Geneva, Arial, Helvetica, sans-serif; font-size: 10px; color: #000000; text-decoration: none;">Free Counter</a><!-- Counter Code END -->
        </div>

<hr />

</div>
    </div>
   
</form>
</div>

</body>
    
</html>

