<?php $this->load->view('user/v_header2');?>
			<!--baner-info start here-->
			<div class="banner-info">
				<div class="container">
					<div class="banner-info-main">
						<div class="col-md-12 bann-info-left">
							<br /><br/>
							<table class="table table-striped">
								<tr>
									<th width="200">Judul Tiket</th>
									<td><?php echo $diskusi->judul;?></td>
								</tr>
								<tr>
									<th width="200">Kelas</th>
									<td><?php echo $diskusi->kelas;?></td>
								</tr>
								<tr>
									<th width="200">Mata Pelajaran</th>
									<td><?php echo $diskusi->nama_mata_pelajaran;?></td>
								</tr>
								<tr>
									<th width="200">Guru</th>
									<td><?php echo $diskusi->nama;?></td>
								</tr>
							</table>
							<hr>
							
							<br>		
							<?php echo $diskusi->diskusi;?>
							<br>
							<?php if ($ceksoal): ?>
								<a href="<?php echo base_url('index/soal/'.$diskusi->id_diskusi);?>">
									<button class ='btn btn-primary'>Kerjakan Soal</button>
								</a>
							<?php endif ?>
							
							<hr>
							<h2>Komentar</h2><hr>
							<?php if ($komentar->num_rows()): ?>
								<?php foreach ($komentar->result() as $key):?>
									<div class="panel panel-default">
	 								<div class="panel-heading"><?php echo date('d F Y - H:i', strtotime($key->tanggal))?></div> 
	  								<div class="panel-body"> 
	    								<?php echo $key->pesan; ?>
	  								</div>
									</div>
								<?php endforeach;?>
							<?php else: ?>
								<center>Tidak Ada Komentar</center>
							<?php endif ?>
							<hr>
							<?php if ($this->session->userdata('login_murid')): ?>
								<form method='post' action=''>
								<textarea name='komentar' class='form-control' placeholder="Masukkan Komentar Anda"></textarea><br>
								<button class="btn btn-primary">Kirim</button>
							</form>	
							<?php endif ?>
							
												
						</div>
						<div class="clearfix"> </div>
					</div>
					
				</div>
			</div>
<?php $this->load->view('user/v_footer');?>