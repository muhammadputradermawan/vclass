<?php $this->load->view('user/v_header2');?>
			<!--baner-info start here-->
			<div class="banner-info">
				<div class="container">
					<div class="banner-info-main">
						<div class="col-md-12 bann-info-left">
							<form method="get" action="">
								<div class="row">
								  <div class="col-lg-12">
								    <div class="input-group input-group-lg">
								      <input type="text" name="ticket"  class="form-control" placeholder="Masukkan Judul Forum" required="required">
								      <span class="input-group-btn">
								        <input type="submit" value="Cari" class="btn btn-primary" id="">
								      </span>
								    </div><!-- /input-group -->
								  </div><!-- /.col-lg-6 -->
								</div><!-- /.row -->
							</form>
							<br /><br/>
							<h3>Ticket Tersedia</h3>
							<hr>
							
								<?php 
								$x = 0;
								foreach ($row->result() as $key) { ?>
									<div class="panel panel-default">
									  <div class="panel-heading"><a href="<?php echo base_url('index/diskusi/'.$key->id_diskusi)?>">
									<span class="glyphicon glyphicon-tags"></span>&nbsp;&nbsp;<?php echo $key->judul;?></a>
										<span style="float: right;font-size: 0.8em;font-style: italic;color: #222">
											<span class="glyphicon glyphicon-time"></span>&nbsp;
											<?php echo date('d-m-Y - H:i')?> WIB
										</span>
									  </div>
									  <div class="panel-body">
									    <?php echo substr($key->diskusi,0,100);?>
									    <hr>
									    <span style="font-size: 0.8em;font-style: italic;color: #222">
											Pengajar: <?php echo $key->namaguru?>
										</span>
									  </div>
									</div>
								<?php }?>
							
						</div>
						<div class="clearfix"> </div>
					</div>
					
				</div>
			</div>
<?php $this->load->view('user/v_footer');?>