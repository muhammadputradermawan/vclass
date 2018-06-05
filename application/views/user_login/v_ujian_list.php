<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">
	<center><h3 style="font-size: 2em"><?php echo $jenis->nama_jenis_ujian; ?></h3></center><br>
	<center><h4><?php echo $tingkat ?></h4></center><br><br>
	<?php foreach ($data->result() as $key): ?>
		<div style="border: 1px solid;padding: 10px;box-shadow: 10px 10px 5px #888888;margin-bottom: 20px">
			<a href="<?php echo ($key->tgl_mulai == null?base_url("user/startexam/".$key->id_ujian):'javascript:;');?>">
			<h3 style="float: left;">
			<?php echo ($key->tgl_mulai == null?'<span><i class="glyphicon glyphicon-ok-circle" style="color:#00cc00"></i></span>':'<span><i class="glyphicon glyphicon-remove-circle" style="color:#cc0000" title="Tidak Tersedia"></i></span>');?> &nbsp;<?php echo $key->judul ?></h3></a>
			<span style="float: right; font-size: 0.9em;color: #888888;font-style: italic;"><?php echo date("d F Y H:i",strtotime($key->tgl_awal)) ?> - <?php echo date('d F Y H:i', strtotime($key->tgl_akhir)) ?></span><br>
			<span style="clear: both;"></span>
			<br />
			<hr/>
			<p>
			<?php echo $key->nama_mata_pelajaran ?><br />
			<span style="font-size: 0.8em;font-style: italic;color: #777777">Pengajar : <?php echo $key->nama ?> - Pada : <?php echo date('d F Y - H:i:s',strtotime($key->tanggal_buat)) ?></span>
			</p>

		</div>
	<?php endforeach ?>
	<br><br><br>
   	<br><br><br>
   	<div class="clear"></div>
</div>
</div>
</div>
</div></div>
<?php $this->load->view('user_login/v_footer');?>
