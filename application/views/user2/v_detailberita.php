
<?php $this->load->view('user2/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em"><?php echo $data->judul ?></h3></center><br>
	<img src="<?php echo base_url('assets/uploads/files/'.$data->gambar);?>" width="500"/>
	<p>	
		<?php echo 	$data->isi ?>
	</p>
	<br><br><br><br>
   	<div class="clear"></div>
</div>
</div>	
</div>
</div></div>
<?php $this->load->view('user_login/v_footer');?>