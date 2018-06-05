<?php $this->load->view('user_login/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em"><?php echo $jenis->nama_jenis_ujian; ?></h3></center><br>
		<div style="">
			<br><br>
			<a href="<?php echo base_url("user/training/".$this->uri->segment(3).'/elementary');?>">
				<h3>Elementary School</h3>
			</a>
				<hr/>		
		</div>
		<div style="">
			<a href="<?php echo base_url("user/training/".$this->uri->segment(3).'/junior');?>">
				<h3>Junior High School</h3>
			</a>
				<hr/>		
		</div>
		<div style="">
			
			<a href="<?php echo base_url("user/training/".$this->uri->segment(3).'/senior');?>">
				<h3>Senior High School</h3>
			</a>
				<hr/>		
		</div>
	<br><br><br>
   	<br><br><br>
   	<div class="clear"></div>
</div>
</div>	
</div>
</div></div>
<?php $this->load->view('user_login/v_footer');?>