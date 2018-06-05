<?php $this->load->view('user/v_header2');?>
			<!--baner-info start here-->
			<div class="banner-info">
				<div class="container">
					<div class="banner-info-main">
						<div class="col-md-12 bann-info-left">
							
							<br /><br/>
							<h3>Info</h3>
							<hr>
							<?php foreach ($row->result() as $key) { ?>
							<div class="panel panel-default">
									  <div class="panel-heading">
									<span class="glyphicon glyphicon-bullhorn"></span>&nbsp;&nbsp;<?php echo $key->judul;?>
										<span style="float: right;font-size: 0.8em;font-style: italic;color: #222">
											<span class="glyphicon glyphicon-time"></span>&nbsp;
											<?php echo date('d-m-Y - H:i',strtotime($key->tanggal))?> WIB
										</span>
									  </div>
									  <div class="panel-body">
									    <?php echo $key->info?>
									    
									  </div>
									</div>
								<?php }?>
						</div>
						<div class="clearfix"> </div>
					</div>
					
				</div>
			</div>
			<!--banner-info end here-->
<?php $this->load->view('user/v_footer');?>