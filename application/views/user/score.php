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
							<table class= "table table-bordered">
								<?php 
								$x = 0;
								foreach ($row->result() as $key) {
									if($x != $key->kelas){ ?>
									<tr>
										<td style="font-size: 1.5em">
											<a href="<?php echo base_url('index/ticket?kelas='.$key->kelas);?>">Kelas <?php echo $key->kelas.' ('.$key->kls.')';?></a>
										
										</td>
									</tr>
								<?php } ?>
								
								<?php }?>
							</table>
						</div>
						<div class="clearfix"> </div>
					</div>
					
				</div>
			</div>
			<!--banner-info end here-->
<?php $this->load->view('user/v_footer');?>