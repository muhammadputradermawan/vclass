<?php $this->load->view('user_login/v_header');?>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
   
  var mapProp = {
    center:new google.maps.LatLng(-6.1744789,106.6462915),
    zoom:5,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
  var marker=new google.maps.Marker({
  position:new google.maps.LatLng(-6.1744789,106.6462915),
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
<div class="wrap">
<div class="wrapper">
<div class="content">      
      <div class="about">
         <div class="about-top">
            <div class="about-left" style="width: 30%">
                 <h3>Location</h3>
                 <div style="border: 1px solid; width: 100%;height: 150px;">
                  <div id="googleMap" style="width:100%;height:100%;"></div>
                 </div>
             </div>
             <div class="about-right" style="width: 50%">
               
                  <center><h3><?php echo  $data->nama_info ?></h3></center>
                <div class="right-img" style="">
                     <p>
                       <?php echo  $data->deskripsi_info ?>
                     </p>
               </div>
         <div class="clear"></div>
      </div>   
      <div class="clear"></div>
</div>
</div>   
</div>
</div></div>
<?php $this->load->view('user_login/v_footer');?>