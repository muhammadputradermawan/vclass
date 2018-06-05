<?php $this->load->view('user_login/v_header');?>
<style type="text/css">
	.current{
		background-color: #555555;
		color: #ffffff;
	}
</style>
<div class="wrap">
<div class="wrapper">
<div class="content">
	<center><h3 style="font-size: 2em"><?php echo $exam->nama_mata_pelajaran; ?></h3></center><br>
	<table style="float: left;">
		<tr>
			<td><?php echo $nomor ?>.&nbsp;</td>
			<td><?php echo $soal->soal ?></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
				<form method="post" action="">
				<input type="hidden" name="nomor" value="<?php echo $nomor;?>">
				<input type="hidden" name="soal" value="<?php echo $soal->id_soal;?>" />
				<input type="hidden" name="durasi" id="durasi" value="">
				<ul>
				<?php foreach ($jawaban->result() as $key): ?>
					<li>
						<input type="radio" name="jawaban" value="<?php echo $key->id_jawaban;?>"
						<?php echo (count($jawabandipilih)?($key->id_jawaban == $jawabandipilih->id_jawaban?'checked="checked"':''):'')?>> <?php echo $key->isi_jawaban ?></li>
				<?php endforeach ?>
				</ul>

			</td>
		</tr>
		<tr>
			<td></td>
			<td style="text-align: center;padding-top: 30px">
				<input type="submit" value="Submit">
				</form>
				<form method="post" action="" id="selesai" style="float: left;">
					<input type="submit" value="Selesai">
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: right; margin-bottom: 30px">
			<?php if ($nomor != 1): ?>
					<a href="<?php echo base_url('user/exam/'.($nomor-1));?>"><button><< Previous</button></a>
				<?php endif ?>

				<?php foreach ($this->session->userdata('urutansoal') as $key => $value): ?>
					<a href="<?php echo base_url('user/exam/'.($key+1)); ?>">
					<button class="<?php echo ($nomor == ($key+1)?'current':'')?>"><?php echo $key+1 ?></button></a>
				<?php endforeach ?>
				<?php if ($nomor != count($this->session->userdata('urutansoal'))): ?>
					<a href="<?php echo base_url('user/exam/'.($nomor+1));?>"><button>Next >></button></a>
				<?php endif ?>

			</td>
		</tr>
	</table>
	<br />
	<div style="float: right;">
		<span style="font-size: 1.5em;font-weight: bold;" id="jam">
			00:00
		</span><br>

	</div>
	<div style="clear: both;"></div>
	<br><br><br>
   	<br><br><br>
   	<div class="clear"></div>
   	<!-- <div id="jam"></div> -->
</div>
</div>
</div>
</div></div>
<script type="text/javascript">
	$(document).ready(function(){
		var durasi = <?php echo $durasi;?>,
        display = $('#time');
    	startTimer(durasi);

		$("form#selesai").submit(function(){
			if(confirm('Apakah Anda Yakin ?')){
				window.location.href="<?php echo base_url('user/selesai');?>";
				return false;
			} else{
				return false;
			}
		})
	});
	function startTimer(duration) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);
        if(minutes === 0 && seconds === 0){
    		waktuselesai();
    	}
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        $('#jam').text(minutes + ":" + seconds);
		$("#durasi").val((minutes*60)+seconds);
		durasi_sisa = (minutes*60)+seconds;
		$.post("<?php echo base_url('user/update_durasi');?>",{durasi:durasi_sisa},function(){});
        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}
	function waktuselesai(){
		alert('Waktu Pengerjaan Selesai.');
	}
</script>
<?php $this->load->view('user_login/v_footer');?>
