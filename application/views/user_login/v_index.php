<?php $this->load->view('user_login/v_header');?>
<div class="transparent p1">
   	<div class="wrap">
					<div class="html_carousel">
						<div id="foo3">
							<div class="slide">
								<img src="images/e1.jpg" alt="carousel 1" width="1000" height="450"/>
								<div>
									<h4>Infinity</h4>
									<p>A concept that in many fields refers to a quantity without bound or end.</p>
								</div>
							</div>
							<div class="slide">
								<img src="images/e2.jpg" alt="carousel 2" width="1000" height="450"  />
								<div>
									<h4>Circular journey</h4>
									<p>An excursion in which the final destination is the same as the starting point.</p>
								</div>
							</div>
							<div class="slide">
								<img src="images/e3.jpg" alt="carousel 3" width="1000" height="450" />
								<div>
									<h4>jQuery</h4>
									<p>jQuery is a JavaScript library designed to simplify the client-side scripting.</p>
								</div>
							</div>
							<div class="slide">
								<img src="images/e4.jpg" alt="carousel 4" width="1000" height="450" />
								<div>
									<h4>Carousel</h4>
									<p>A carousel is an amusement ride consisting of a rotating circular platform with seats.</p>
								</div>
							</div>
						</div>
						</div>
						</div>
						</div>
						</div>
						</div>
					</div>
				<div class="clearfix"></div>
<div class="wrap">
<div class="wrapper">
   <div class="content">
		<div class="grids">
			<?php foreach ($berita->result() as $key) : ?>
				<div class="bot-grid<?php $x=rand(0, 2);echo($x==0?"":$x)?>" style="width: 200px; height:500px;position:relative">
					<img src="<?php echo base_url('assets/uploads/files/'.$key->gambar);?>" alt="" style="width: 100%;height:150px" />
					<h3 style="font-size:1.5em"><?php echo    $key->judul ?></h3>
					<p>
						<?php echo    substr(strip_tags($key->isi), 0, 100)?>
					</p>
					<a href="<?php echo base_url('index/detail/'.$key->id_home);?>" style="position: absolute;bottom: 0;width: 100%;height: 50px;"><p><span class="one">Read More</span></p></a>
				</div>
			<?php endforeach;?>

			<div class="clear"></div>
		</div>
</div>
</div>
</div>
<?php $this->load->view('user_login/v_footer');?>
