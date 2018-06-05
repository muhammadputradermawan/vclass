<?php $this->load->view('user2/v_header');?>
<div class="wrap">
<div class="wrapper">
<div class="content">		
		<div class="about">
   		<div class="about-top">
   			<div class="about-left" style="width: 20%">
   				  <a href="<?php echo base_url('index/about');?>" class="link1">History</a><br>
   			      <a href="<?php echo base_url('index/visimisi');?>" class="link1">Vission Mision</a><br>
   			      <a href="<?php echo base_url('index/concept');?>" class="link1">Concept</a><br>
   		    </div>
   		    <div class="about-right" style="width: 70%">
   		    	
   			   	<center><h3>Concept</h3></center>
   			    <div class="right-img" style="width: 100%">
   			    
   			   	<p><?php echo $row->deskripsi_info;?></p>
   			    
   		    	</div>
   		<div class="clear"></div>
   	</div>	
   	<div class="clear"></div>
</div>
</div>	
</div>
</div></div>
<?php $this->load->view('user2/v_footer');?>