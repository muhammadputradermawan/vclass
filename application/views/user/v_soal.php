<?php $this->load->view('user/v_header2');?>
			<!--baner-info start here-->
			<div class="banner-info">
				<div class="container">
					<div class="banner-info-main">
						<div class="col-md-12 bann-info-left">
							<br /><br/>
							<h2>Selamat Mengerjakan</h2>
							<table class="table table-striped table-bordered">
								<tr>
									<th width="10">Nomor</th>
									<th>Soal</th>
								</tr>
								<tr>
									<th><?php echo $nomor;?></th>
									<th style=""><?php echo strip_tags($soal->soal);?>
										<br>
										<br>
										<?php foreach ($jawaban->result() as $key): ?>
											<input type="radio" class="" name="jawaban" value="a"> <?php echo $key->isi_jawaban;?><br/>
										<?php endforeach ?>
									</th>
								</tr>
							</table>
							<?php echo $page->create_links();?>											
						</div>
						<div class="clearfix"> </div>
					</div>
					
				</div>
			</div>
<?php $this->load->view('user/v_footer');?>