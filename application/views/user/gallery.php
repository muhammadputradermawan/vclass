<?php $this->load->view('user/v_header2');?>
<script type="text/javascript" src="js/modernizr.custom.97074.js"></script>
<script type="text/javascript" src="js/jquery.hoverdir.js"></script>
			<!--baner-info start here-->
			<div class="banner-info">
				<div class="container">
					<div class="banner-info-main">
						<div class="col-md-12 bann-info-left">
							<ul id="da-thumbs" class="da-thumbs">
							<?php foreach ($data->result() as $key): ?>
								<li>
									<a href="#" rel="title" class="b-link-stripe b-animate-go thickbox">
										<img src="<?php echo base_url('assets/uploads/files/'.$key->foto);?>" class="img-responsive">
										<div>
											<h5>Catherine Course</h5>
											<span><?php echo $key->keterangan;?></span>
										</div>
									</a>
								</li>
							<?php endforeach ?>
							</ul>
							<script type="text/javascript">
								$('#da-thumbs > li').each(function(){$(this).hoverdir();})
							</script>
						</div>
						<div class="clearfix"> </div>
					</div>
					
				</div>
			</div>

			<!--banner-info end here-->
<?php $this->load->view('user/v_footer');?>