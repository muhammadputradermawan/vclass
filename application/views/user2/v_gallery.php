<?php $this->load->view('user2/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">
	<center><h3 style="font-size: 2em">Our Activity</h3></center><br>
	<p>
		<?php foreach ($data->result() as $key): ?>
			<div style="width: 250px;float: left;margin-right: 20px">
				<img src="<?php echo base_url('assets/uploads/files/'.$key->foto);?>" class="img-responsive">
			</div>
		<?php endforeach ?>
	</p>
	<div class="clear" style="clear:both;margin-bottom:100px"></div>
</div>
</div>
</div>
</div></div>
<?php $this->load->view('user2/v_footer');?>
