<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em">Information</h3></center><br>
	<?php foreach ($data->result() as $key): ?>
		<div style="">
			<h2><?php echo $key->judul ?></h2><hr/>
			<?php echo $key->info ?>
		</div>
	<?php endforeach ?>
	<br><br><br><br>
   	<div class="clear"></div>
</div>
</div>	
</div>
</div></div>
<?php $this->load->view('user_login/v_footer');?>