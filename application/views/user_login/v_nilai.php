<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em">Nilai</h3></center><br>
	<!-- Latest compiled and minified CSS -->

	<table class="table table-striped table-bordered">
	<tr>
		<th style="font-weight: bold">Nama Ujian</th>
		<th style="font-weight: bold">Jenis</th>
		<th style="font-weight: bold">Nilai</th>
	</tr>
	<?php foreach ($data->result() as $key): ?>
		<tr>
			<td><?php echo $key->judul ?></td>
			<td><?php echo $key->nama_jenis_ujian ?></td>
			<td><?php echo $key->score ?></td>
		</tr>
	<?php endforeach ?>

	</table>
	<br><br><br>
   	<br><br><br>
   	<div class="clear"></div>
</div>
</div>	
</div>
</div></div>
<?php $this->load->view('user_login/v_footer');?>