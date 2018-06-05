<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<base href="<?php echo base_url('assets/user2/');?>/">
<title>Catherine Course</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/examples.css" type="text/css" media="all" />
<script src="js/jquery-1.8.1.min.js"></script>
<script src="js/jquery.carouFredSel-6.0.5-packed.js"></script>


<script type="text/javascript" language="javascript">
			$(function() {
$("#foo1").carouFredSel();
$("#foo2").carouFredSel({
	width	: 1000,
	items	: 8,
	scroll	: 4
});
$("#foo3").carouFredSel({
	items 		: 1,
	direction	: "up",
	auto : {
		easing		: "elastic",
		duration	: 1000,
		timeoutDuration: 2000,
		pauseOnHover: true
	}
}).find(".slide").hover(
	function() { $(this).find("div").slideDown(); },
	function() { $(this).find("div").slideUp();	}
);
				

			});
</script>
	<script type="text/javascript" language="javascript">
			var siteroot = "../";
	</script>
	<style type="text/css">

	</style>
</head>
<body>
<style type="text/css">
	.third-level-menu
{
    position: absolute;
    top: 0;
    right: -150px;
    width: 150px;
    list-style: none;
    padding: 0;
    margin: 0;
    display: none;
}

.third-level-menu > li
{
    /*height: 30px;*/
    background: #999999;
}
.third-level-menu > li:hover { background: #CCCCCC; }

.second-level-menu
{
    position: absolute;
    /*top: 30px;*/
    left: 0;
    width: 100%;
    list-style: none;
    padding: 0;
    margin: 0;
    display: none;
}

.second-level-menu > li
{
    position: relative;
    width: 100%;
    /*height: 30px;*/
    background: #999999;
}
.second-level-menu > li:hover { background: #CCCCCC; }

.top-level-menu
{
    list-style: none;
    padding: 0;
    margin: 0;
}

.top-level-menu > li
{
    position: relative;
    float: left;
    /*height: 30px;*/
    width: auto;
    background: #999999;
}
.top-level-menu > li:hover { background: #CCCCCC; }

.top-level-menu li:hover > ul
{
    /* On hover, display the next level's menu */
    display: inline;
    z-index: 10000000;
}


/* Menu Link Styles */

.top-level-menu a /* Apply to all links inside the multi-level menu */
{
    font: bold 14px Arial, Helvetica, sans-serif;
    color: #FFFFFF;
    text-decoration: none;
    padding: 0 0 0 10px;

    /* Make the link cover the entire list item-container */
    display: block;
    line-height: 30px;
}
.top-level-menu a:hover { color: #000000; }
</style>

<div class="header-bg">
<div class="wrap">
<div class="wrapper">
   <div class="header">
       <div class="logo">
			<a href="index.html"><img src="images/logo.png" /></a>
	   </div>
	   <div class="menu" style="padding:0">
	   <ul class="top-level-menu">
		    <li><a href="<?php echo base_url()?>">Home</a></li>
			<li><a href="<?php echo base_url("user/about")?>">About</a></li>
			<li><a href="<?php echo base_url("user/information")?>">Information</a></li>
			<li><a href="<?php echo base_url("user/gallery")?>">Gallery</a></li>
		    <li>
		        <a href="#">Forum Of Knowledge</a>
		        <ul class="second-level-menu">
		            <li><a href="javascript:;">Materi</a>
		                <ul class="third-level-menu">
		                    <li><a href="<?php echo base_url("user/materi/elementary")?>">Elementary</a>
		                    </li>
		                    <li><a href="<?php echo base_url("user/materi/junior")?>">Junior</a></li>
		                    <li><a href="<?php echo base_url("user/materi/senior")?>">Senior</a></li>
		                </ul>
		            </li>
		            <li><a href="javascript:;">Video</a>
		                <ul class="third-level-menu">
		                    <li><a href="<?php echo base_url("user/video/elementary")?>">Elementary</a>
		                    </li>
		                    <li><a href="<?php echo base_url("user/video/junior")?>">Junior</a></li>
		                    <li><a href="<?php echo base_url("user/video/senior")?>">Senior</a></li>
		                </ul>
		            </li>
		            
		        </ul>
		    </li>
		    <li>
		        <a href="#">Try Out</a>
		        <ul class="second-level-menu">
		            <li><a href="<?php echo base_url('user/training/1');?>">WS</a>
		            </li>
		            <li><a href="<?php echo base_url('user/training/2');?>">TO</a></li>
		            <li><a href="<?php echo base_url('user/nilai');?>">Nilai</a></li>
		            
		        </ul>
		    </li>
		    <li style="background: rgb(23,197,134)">
		    	<a href="<?php echo base_url("index/contact_us")?>">Contact Us</a>
		    </li>
		    <li style="background: rgb(80,170, 105)">
				<a href="<?php echo base_url("user/profil")?>">Profil</a>
			</li>
			<li style="background: rgb(40,45,175)">
				<a href="<?php echo base_url("user/logout")?>">Logout</a>
			</li>
		</ul>
	<!-- 		<ul>
				 <li><a href="<?php echo base_url()?>">Home</a></li>
				 <li><a href="<?php echo base_url("user/history")?>">About</a></li>
				 <li><a href="<?php echo base_url("user/information")?>">Information</a></li>
				 <li><a href="<?php echo base_url("user/gallery")?>">Gallery</a></li>
				 <li class="headprogram"><a href="javascript:void(0)">Forum of Knowledge</a>
					<ul class="program-child">
				 		<li><a href="<?php echo base_url("user/materi/1")?>">Materi</a>
						<ul>
								<li>Elementary</li>
								<li>Elementary</li>
							</ul>
				 		</li>
				 		<li><a href="<?php echo base_url("user/video")?>">Video</a></li>
				 	</ul>
				 </li>
				 <li style="background: rgb(240,154,0)" class="headprogram"><a href="javascript:void(0)">Tryout </a>
				 	<ul class="program-child" style="display: none">
				 		<li><a href="#">Online TO</a>
							
				 		</li>
				 		<li><a href="#">Worksheet</a></li>
				 		<li><a href="#">Result</a></li>
				 	</ul>
				 </li>
				 <li style="background:rgb(173,203,29)" class="headprogram"><a href="javascript:void(0)">Class Program</a>
				 	<ul class="program-child">
				 		<li><a href="<?php echo base_url("user/program/4")?>">Kindegarten</a></li>
				 		<li><a href="<?php echo base_url("user/program/5")?>">Elementary School</a></li>
				 		<li><a href="<?php echo base_url("user/program/6")?>">Junior High School</a></li>
				 		<li><a href="<?php echo base_url("user/program/7")?>">Senior High School</a></li>
				 	</ul>
				 </li>
				 <li style="background: rgb(23,197,134)"><a href="<?php echo base_url("index/contact_us")?>">Contact Us</a></li>
				 <li style="background: rgb(40,45,175)"><a href="<?php echo base_url("user/logout")?>">Logout</a></li>
			</ul> -->
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
   </div>
