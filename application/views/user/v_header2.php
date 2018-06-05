<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<base href="<?php echo base_url('assets/user');?>/" />
<title>Study  A Education category Flat bootstrap Responsive  Website Template | Gallery :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Study Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
<script src="js/menu_jquery.js"></script>
<!--script-->
	<script src="js/modernizr.custom.97074.js"></script>
<script src="js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
		<!--light-box-files -->
		<script type="text/javascript" charset="utf-8">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
		<script type="text/javascript" src="js/jquery.hoverdir.js"></script>

</head>
<body>
<!--header start here-->
<div class="header1">
	<div class="container">
		 <div class="header-main">
				<!---->
					<div class="header-logo">
						<div class="logo">
						<a href="index.html"><img src="images/lo1.png" alt="" ></a>
						</div>
						<div class="top-nav">
							<span class="icon"><img src="images/menu.png" alt=""> </span>
							<ul>
								<li ><a href="index.html">Home</a> </li>
								<li ><a href="about.html" >About  </a> </li>
								<li><a href="typo.html"  >Short Codes</a></li>
								<li><a href="galley.html" >Gallery</a></li>
								<li><a href="contact.html" >Contact </a></li>
							</ul>
							<!--script-->
						<script>
							$("span.icon").click(function(){
								$(".top-nav ul").slideToggle(500, function(){
								});
							});
					</script>				
				</div>
				<div class="clearfix"> </div>
					</div>
			<!---->
			<div class="top-menu">					
					<ul>
						<li ><a href="<?php echo base_url() ?>" >Home</a> </li>
							<li ><a href="<?php echo base_url('index/about') ?>">About  </a> </li>
							<li><a href="<?php echo base_url('index/info') ?>">Info</a></li>
							<li><a href="<?php echo base_url()?>"> <img src="images/lo1.png" alt=""> </a></li>
							<li ><a href="<?php echo base_url('index/gallery') ?>">Gallery  </a> </li>
							<li><a href="<?php echo base_url('index/ticket')?>">Ticket </a></li>
						<li><div class="header-login">
								<div class="top-nav-right">
									<div id="loginContainer">
										<?php if(!$this->session->userdata("login_murid")){?>
										<a href="#" id="loginButton">
											<span>Login</span></a>
											<div id="loginBox">
												<form id="loginForm" method="post" action= "<?php echo base_url('index');?>">
													<fieldset id="body">
														<fieldset>
															<label for="email">id </label>
															<input type="text" name="id_murid" id="email">
														</fieldset>
														<fieldset>
															<label for="password">Password</label>
															<input type="password" name="password" id="password">
														</fieldset>
														<input type="submit" id="login" value="Sign in">
														<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
													</fieldset>
													<span><a href="#">Forgot your password?</a></span>
												</form>
											</div>
											<?php } else { ?>
											<a href="<?php echo base_url('index/Logout')?>" id="">
											Logout</a>
											<?php }?>
										</div>
									</div>
								</div>	</li>
					</ul>
				</div>
					<!--script-->
	 </div>
   </div>
</div>