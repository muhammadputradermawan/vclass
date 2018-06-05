<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em"><?php echo $data->nama_mata_pelajaran ?></h3></center><br>
	<center><h4><?php echo $data->tingkat ?></h4></center>
	<h3 style="font-weight: bold;font-size: 1.5em"><?php echo $data->bab ?></h3><br/>
			<p>	
				<?php echo 	$data->sinopsis ?>
			</p>
   	<div class="clear"></div>
   	<br><br><br>
   	<a href="<?php echo base_url('assets/uploads/files/'.$data->file);?>" target="_blank">Download File</a>
   	<br><br><br>
   	<br><br><br>
</div>
</div>	
</div>
</div></div>
<?php $this->load->view('user_login/v_footer');?>