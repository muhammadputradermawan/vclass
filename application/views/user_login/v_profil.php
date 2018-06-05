<?php $this->load->view('user_login/v_header');?>
<style type="text/css">

</style>
<div class="wrap">
<div class="wrapper">
<div class="content">		
	<center><h3 style="font-size: 2em"><?php echo "Profil" ?></h3></center><br>
	<form method="post" action="" id="profil" enctype="multipart/form-data">
		<div>
			<label>ID Murid</label>
			<input type="text" style="width: 100%" value="<?php echo $user->id_murid;?>" readonly="readonly"  />
		</div>
		<div>
			<label>Nama Murid</label>
			<input type="text" style="width: 100%" name="nama_murid" value="<?php echo $user->nama_murid;?>" />
		</div>
		<div>
			<label>Tempat Lahir</label>
			<input type="text" style="width: 100%" name="tempat_lahir" value="<?php echo $user->tempat_lahir;?>" />
		</div>
		<div>
			<label>Tanggal Lahir</label>
			<input type="text" style="width: 100%" name="Tanggal_lahir" value="<?php echo $user->Tanggal_lahir;?>" />
		</div>
		<div>
			<label>Agama</label>
			<select name="agama" style="width: 100%;height: 30px">
			<option value="Islam" <?php echo ($user->agama == 'Islam'?'selected="selected"':'');?>>Islam</option>
			<option value="Kristen" <?php echo ($user->agama == 'Kristen'?'selected="selected"':'');?>>Kristen</option>
			<option value="Katolik" <?php echo ($user->agama == 'Katolik'?'selected="selected"':'');?>>Katolik</option>
			<option value="Hindu" <?php echo ($user->agama == 'Hindu'?'selected="selected"':'');?>>Hindu</option>
			<option value="Budha" <?php echo ($user->agama == 'Budha'?'selected="selected"':'');?>>Budha</option>
			</select>
		</div>
		<br />
		<div>
			<label>Nama Sekolah</label>
			<input type="text" style="width: 100%" name="nama_sekolah" value="<?php echo $user->nama_sekolah;?>" />
		</div>
		<div>
			<label>Alamat</label>
			<input type="text" style="width: 100%" name="alamat_murid" value="<?php echo $user->alamat_murid;?>" />
		</div>
		<div>
			<label>Nama Wali</label>
			<input type="text" style="width: 100%" name="nama_wali" value="<?php echo $user->nama_wali;?>" />
		</div>
		<div>
			<label>No Telepon</label>
			<input type="text" style="width: 100%" name="notelp_wali" value="<?php echo $user->notelp_wali;?>" />
		</div>
		<div>
			<label>Password</label>
			<input type="text" style="width: 100%" name="password_murid" value="" />
		</div>
		<div>
			<label>Foto</label>
			<input type="hidden" style="width: 100%" name="foto" value=""/>
			<input type="file" name="userfile" id="file-gambar" style="display: none;">
			<img src="<?php echo base_url('assets/foto/'.$user->foto);?>" style="border: 3px solid; width: 100px;box-shadow: 10px 10px 5px #888888;" id="box-img">
		</div>
		<div>
			<center><input type="submit" value="Simpan"></center>
		</div>
	</form>
	<br/><br/><br/>
</div>
</div>	
</div>
</div></div>
<script>
	$(document).ready(function(){
		var img = false;
		$("form#profil").submit(function(){
			if(img === true){
				$.ajax({
					url: "<?php echo base_url('user/upload');?>",
					type: "POST",            
					data: new FormData(this),
					contentType: false,      
					cache: false,            
					processData:false,
					dataType:"json",
					success: function(data)   
					{
						// console.log(data['msg']);
						if(data.status){
							$("#box-img").attr('src',"<?php echo base_url('assets/foto');?>"+'/'+data.msg);
						} else {
							alert(data.msg);
						}
					}
				});
				img = false;
				return false;
			} else {
				if(confirm("Apakah Anda Yakin ?")){
					return true;
				} else {
					return false;
				}
			}
		});

		$("#box-img").on('click',function(){
			$("#file-gambar").trigger('click');
		});

		$("#file-gambar").on('change',function(){
			img = true;
			$("form#profil").trigger('submit');
		});
	});
</script>
<?php $this->load->view('user_login/v_footer');?>