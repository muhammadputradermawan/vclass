<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em">Video <?php echo $tingkat ?></h3></center><br>
	<?php foreach ($data->result() as $key): ?>
		<div style="">
			<br><br>
			<a href="<?php echo base_url("user/videopelajaran/".$this->uri->segment(3).'/'.$key->id_mata_pelajaran);?>"><h2><?php echo $key->nama_mata_pelajaran?></h2></a><hr/>	
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