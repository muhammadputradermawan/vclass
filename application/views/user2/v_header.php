<?php if($this->session->userdata('login_murid')):?>
	<?php $this->load->view('user_login/v_header');?>
<?php else: ?>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/examples.css" type="text/css" media="all" />
<script src="js/jquery-1.8.1.min.js"></script>
<script src="js/jquery.carouFredSel-6.0.5-packed.js"></script>
<style>
	.program-child{
		z-index: 100000;
		position: absolute;
		display: none;
	}

	.menu > ul  {
		width: auto;
	}

	.menu > ul > li {
		display: table;
	}

	.menu >  ul > li > a{
		height: 30px;
		font-size: 1em;
	}

	/*Child dropdown*/
	.menu > ul > li > ul.program-child{

	}
	.menu > ul > li > ul.program-child > li{
		clear: both;
	}

	.menu > ul > li > ul.program-child > li > a{
		font-size: 0.8em;
	}

</style>
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
				$(".headprogram").on('hover',function(){
					$(this).find('ul').toggle();
				});

			});
</script>
	<script type="text/javascript" language="javascript">
			var siteroot = "../";
	</script>
</head>
<body>
<div class="header-bg">
<div class="wrap">
<div class="wrapper">
   <div class="header" style="">
       <div class="logo">
			<a href="index.html"><img src="images/logo.png" /></a>
	   </div>
	   <div class="menu">
			<ul>
				 <li><a href="<?php echo base_url()?>">Home</a></li>
				 <li><a href="<?php echo base_url("index/history")?>">About</a></li>
				 <li><a href="<?php echo base_url("index/gallery")?>">Gallery</a></li>
				 <li style="" class="headprogram"><a href="javascript:void(0)">Class Program</a>
					 <ul class="program-child">
				 		<li><a href="<?php echo base_url("index/program/4")?>">Kindegarten</a></li>
				 		<li><a href="<?php echo base_url("index/program/5")?>">Elementary School</a></li>
				 		<li><a href="<?php echo base_url("index/program/6")?>">Junior High School</a></li>
				 		<li><a href="<?php echo base_url("index/program/7")?>">Senior High School</a></li>
				 	</ul>
				 </li>
				 <li><a href="<?php echo base_url("index/contact_us")?>">Contact Us</a></li>
				 <div class="clear"></div>
			</ul>
		</div>
		<div class="clear"></div>
   </div>
<?php endif;?>
