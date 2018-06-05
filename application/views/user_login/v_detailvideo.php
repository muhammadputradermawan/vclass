<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em"><?php echo $data->tingkat ?></h3></center><br>
	<center><h4><?php echo $data->nama_mata_pelajaran ?></h4></center><hr>
			<p>	
				<?php echo 	$data->deskripsi_video ?>
			</p>
			<br><br><br>
			<p align="center">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo str_replace('https://www.youtube.com/watch?v=', '', $data->url_video);?>" frameborder="0" allowfullscreen></iframe>
			</p>
   	<div class="clear"></div>
   	<br><br><br>
   	<br><br><br>
   	<br><br><br>
</div>
</div>	
</div>
</div></div>
<?php $this->load->view('user_login/v_footer');?>