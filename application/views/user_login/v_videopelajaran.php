<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em">Video <?php echo $tingkat ?></h3></center><br>
	<center><h4><?php echo $materi->nama_mata_pelajaran ?></h4></center>
	<?php foreach ($data->result() as $key): ?>
		<div style="">
			<br><br>
			<a href="<?php echo base_url("user/detailvideo/".$key->id_video);?>"><h2><?php echo $key->judul?></h2></a><hr/>	
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