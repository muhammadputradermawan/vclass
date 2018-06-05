<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em"><?php echo $materi->nama_mata_pelajaran; ?></h3></center><br>
	<center><h4><?php echo $tingkat ?></h4></center>
	<?php $tmpbab="";foreach ($data->result() as $key): ?>
		<div style="">
			<?php if ($key->bab != $tmpbab): ?>
					<br><br>
					<a href="<?php echo base_url("user/detailmateri/".$key->id_materi);?>"><h2><?php echo $key->bab ?></h2></a><hr/>
					<?php $tmpbab = $key->bab;?>
					<?php echo $key->sinopsis ?>
					</a>
			<?php else: ?>	
				<?php echo 	$key->sinopsis ?>
			<?php endif ?>
			
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