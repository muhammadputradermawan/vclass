<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	function __construct(){
		parent::__construct();

		if(!$this->session->userdata('login_murid'))
			redirect(base_url());
	}

	public function index()
	{
		$this->db->order_by('tanggal','desc');

		$this->db->limit(4);
		$berita = $this->db->get('home');
		$this->load->view('user_login/v_index',array(
			'berita'=>$berita
		));


	}

	public function logout(){
		$this->session->sess_destroy();
		redirect (base_url());
	}

	public function about()
	{
		$this->load->view('user_login/v_about',array(
			'data'=>$this->db->get_where('infoweb',array('id_infoweb'=>8))->row()
		));
	}

	public function visimisi()
	{
		$this->load->view('user_login/v_about',array(
			'data'=>$this->db->get_where('infoweb',array('id_infoweb'=>2))->row()
		));
	}

	public function concept()
	{
		$this->load->view('user_login/v_about',array(
			'data'=>$this->db->get_where('infoweb',array('id_infoweb'=>3))->row()
		));
	}

	public function class_program($id=1)
	{
		$this->load->view('user_login/v_classporgram');
	}

	public function contact_us(){
		$this->load->view('user_login/v_contact_us',array(
			'data'=>$this->db->get_where('infoweb',array('id_infoweb'=>8))->row()
		));
	}

	public function gallery()
	{
		$this->load->view('user_login/v_gallery',array(
			'data'=>$this->db->get('gallery')
		));
	}

	public function information()
	{
		$this->load->view('user_login/v_information',array(
			'data'=>$this->db->get('info')
		));
	}

	public function	materi($tingkat){
		switch ($tingkat) {
			case 'elementary':
				$tmp = "Elementary School";
				break;
			case 'junior':
				$tmp = "Junior High School";
				break;
			case 'senior':
				$tmp = "Senior High School";
				break;
			default:
				# code...
				break;
		}

		$this->db->order_by('materi.bab');
		$this->db->join('mata_pelajaran','mata_pelajaran.id_mata_pelajaran = materi.id_mata_pelajaran');
		$this->db->group_by('mata_pelajaran.id_mata_pelajaran');
		$materi = $this->db->get_where('materi');
		// print_r($materi->result());
		$this->load->view('user_login/v_materi',array(
			'data'=>$materi,
			'tingkat'=>$tmp
		));
	}

	function materipelajaran($tingkat,$mp){
		switch ($tingkat) {
			case 'elementary':
				$tmp = "Elementary School";
				break;
			case 'junior':
				$tmp = "Junior High School";
				break;
			case 'senior':
				$tmp = "Senior High School";
				break;
			default:
				# code...
				break;
		}

		$this->db->order_by('materi.bab');
		$this->db->join('mata_pelajaran','mata_pelajaran.id_mata_pelajaran = materi.id_mata_pelajaran');
		// $this->db->group_by('mata_pelajaran.id_mata_pelajaran');
		$materi = $this->db->get_where('materi',array('tingkat'=>$tmp,'materi.id_mata_pelajaran'=>$mp));
		$this->load->view('user_login/v_materipelajaran',array(
			'data'=>$materi,
			'materi'=>$this->db->get_where('mata_pelajaran',array('id_mata_pelajaran'=>$mp))->row(),
			'tingkat'=>$tmp
		));
	}

	public function detailmateri($id){
		$this->db->join('mata_pelajaran','mata_pelajaran.id_mata_pelajaran=materi.id_mata_pelajaran');
		$materi = $this->db->get_where('materi',array('id_materi'=>$id))->row();
		$this->load->view('user_login/v_detailmateri',array(
			'data'=>$materi
		));
	}

	public function program($id)
	{
		$data = $this->db->get_where('infoweb',array('id_infoweb'=>$id))->row();
		$this->load->view('user_login/v_program',array(
			'data'=>$data
		));
	}

	public	function video($tingkat){
		switch ($tingkat) {
			case 'elementary':
				$tmp = "Elementary School";
				break;
			case 'junior':
				$tmp = "Junior High School";
				break;
			case 'senior':
				$tmp = "Senior High School";
				break;
			default:
				# code...
				break;
		}

		$this->db->order_by('mata_pelajaran.nama_mata_pelajaran');
		$this->db->join('mata_pelajaran','mata_pelajaran.id_mata_pelajaran = video.id_mata_pelajaran');
		$this->db->group_by('mata_pelajaran.id_mata_pelajaran');
		$materi = $this->db->get_where('video',array('tingkat'=>$tmp));
		$this->load->view('user_login/v_video',array(
			'data'=>$materi,
			'tingkat'=>$tmp
		));
	}

	public function videopelajaran($tingkat,$mp)
	{
		switch ($tingkat) {
			case 'elementary':
				$tmp = "Elementary School";
				break;
			case 'junior':
				$tmp = "Junior High School";
				break;
			case 'senior':
				$tmp = "Senior High School";
				break;
			default:
				# code...
				break;
		}

		// $this->db->order_by('materi.bab');
		$this->db->join('mata_pelajaran','mata_pelajaran.id_mata_pelajaran = video.id_mata_pelajaran');
		// $this->db->group_by('mata_pelajaran.id_mata_pelajaran');
		$materi = $this->db->get_where('video',array('tingkat'=>$tmp,'video.id_mata_pelajaran'=>$mp));
		$this->load->view('user_login/v_videopelajaran',array(
			'data'=>$materi,
			'materi'=>$this->db->get_where('mata_pelajaran',array('id_mata_pelajaran'=>$mp))->row(),
			'tingkat'=>$tmp
		));
	}

	public function detailvideo($id){
		$this->db->join('mata_pelajaran','mata_pelajaran.id_mata_pelajaran = video.id_mata_pelajaran');
		$materi = $this->db->get_where('video',array('id_video'=>$id))->row();
		$this->load->view('user_login/v_detailvideo',array(
			'data'=>$materi
		));
	}

	public function profil(){
		if(!$_POST){
			$data['user'] = $this->db->get_where('murid',array('id_murid'=>$this->session->userdata('id_murid')))->row();
			$this->load->view('user_login/v_profil',$data);
		} else {
			//updata data peserta
			$dt = $this->input->post();
			if($this->input->post('password') == "")
				unset($dt['password']);

			unset($dt['userfile']);
			unset($dt['foto']);
			$this->db->where('id_murid',$this->session->userdata('id_murid'));
			$this->db->update('murid',$dt);
			redirect('user/profil');
		}
	}

	public function upload()
	{
		$new_name = time();
		$config = array(
			'upload_path' => "./assets/foto/",
			'allowed_types' => "gif|jpg|png|jpeg|pdf",
			'file_name'=>$new_name,
			'overwrite' => TRUE,
			'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
			'max_height' => "768",
			'max_width' => "1024"
		);
		$this->load->library('upload', $config);
		if($this->upload->do_upload())
		{
			$data = array('status'=>true,'msg'=>$this->upload->data('file_name'));
			$this->db->where('id_murid',$this->session->userdata('id_murid'));
			$this->db->update('murid',array('foto'=>$this->upload->data('file_name')));
		}
		else
		{
			$data = array('status'=>false,'msg'=>$this->upload->display_errors());
		}

		echo json_encode($data);
	}

	public function exam($nomor=1)
	{
		if(!$this->session->userdata('exam'))
			redirect(base_url());

		if($nomor < 1){
			redirect('user/exam');
		}
		if($_POST){
			//masukkan ke jawaban peserta kalau kosong
			$this->db->join('ujian','ujian.id_ujian=murid_jawaban.id_ujian');
			$this->db->join('murid_ujian','ujian.id_ujian = murid_ujian.id_ujian');
			$this->db->where('murid_ujian.id_murid',$this->session->userdata('id_murid'));
			$tmp = $this->db->get_where('murid_jawaban',array('id_soal'=>$this->input->post('soal')))->row();
			if(count($tmp)){

				//jika sudah ada, maka di update saja
				$this->db->where('id_soal',$this->input->post('soal'));
				$this->db->where('id_ujian',$this->session->userdata('id_ujian'));
				$this->db->update('murid_jawaban',array(
					'id_jawaban'=>$this->input->post('jawaban')
				));
				// die();
			} else {
				$this->db->insert('murid_jawaban',array(
					'id_soal'=>$this->input->post('soal'),
					'id_jawaban'=>$this->input->post('jawaban'),
					'id_ujian'=>$this->session->userdata('id_ujian')
				));
			}
			//simpan sisa waktu
			$this->db->where('murid_ujian.id_murid',$this->session->userdata('id_murid'));
			$this->db->where('murid_ujian.id_ujian',$this->session->userdata('id_ujian'));
			$this->db->update('murid_ujian',array('sisa_waktu'=>$this->input->post('durasi')));
			redirect('user/exam/'.$this->input->post('nomor'));
		} else {
			$this->db->join('mata_pelajaran','mata_pelajaran.id_mata_pelajaran=ujian.id_mata_pelajaran');
			$data['exam'] = $this->db->get_where('ujian',array('ujian.id_ujian'=>$this->session->userdata('id_ujian')))->row();
			$data['nomor'] = $nomor;

			$nomor -= 1;
			$urutansoal = $this->session->userdata('urutansoal');
			$data['soal'] = $this->db->get_where('soal',array('id_soal'=>$urutansoal[$nomor]))->row();
			$this->db->join('ujian','ujian.id_ujian=murid_jawaban.id_ujian');
			$this->db->join('murid_ujian','murid_ujian.id_ujian = ujian.id_ujian');
			$this->db->where('murid_ujian.id_murid',$this->session->userdata('id_murid'));
			$data['jawabandipilih'] = $this->db->get_where('murid_jawaban',array('id_soal'=>$data['soal']->id_soal))->row();
			$this->db->order_by('rand()');
			$this->db->join('jawaban','jawaban.id_jawaban=soal_jawaban.id_jawaban');
			$data['jawaban'] = $this->db->get_where('soal_jawaban',array('id_soal'=>$data['soal']->id_soal));

			$muridsoal = $this->db->get_where('murid_ujian',array('id_murid'=>$this->session->userdata('id_murid'),'id_ujian'=>$this->session->userdata('id_ujian')))->row();
			$datesekarang = date_create(date('Y-m-d H:i:s'));
			$datemulai = date_create(date('Y-m-d H:i:s',strtotime($muridsoal->tgl_mulai)));
			$interval = date_diff($datemulai,$datesekarang);

			//dalam detik
			$data['durasi'] = $muridsoal->sisa_waktu;
			// $data['durasi'] = $interval->format("%i");


			$this->load->view('user_login/v_exam',$data);
		}
	}


	public function selesai(){
		//hitung benar salah
		$this->db->select('murid_jawaban.id_jawaban,soal.id_jawabanbenar');
		$this->db->join('soal','soal.id_soal = murid_jawaban.id_soal');
		$this->db->join('ujian','ujian.id_ujian=murid_jawaban.id_ujian');
		$this->db->where('ujian.id_ujian',$this->session->userdata('id_ujian'));
		$jawabanmurid = $this->db->get('murid_jawaban');

		$benar = 0;
		$salah = 0;
		$this->db->join('ujian','ujian.id_ujian=ujiansoal.id_ujian');
		$this->db->where('ujian.id_ujian',$this->session->userdata('id_ujian'));
		$totalsoal = $this->db->get('ujiansoal','ujiansoal.id_ujian=ujian.id_ujian')->num_rows();

		foreach ($jawabanmurid->result() as $key) {
			if($key->id_jawaban == $key->id_jawabanbenar){
				$benar++;
			} else {
				$salah++;
			}
		}

		$totalnilai = ($benar/$totalsoal)*100;

		$this->db->where('id_murid',$this->session->userdata('id_murid'));
		$this->db->where('id_ujian',$this->session->userdata('id_ujian'));
		$this->db->update('murid_ujian',array(
			'nilai_benar'=>$benar,
			'nilai_salah'=>$salah,
			'score'=>$totalnilai,
			'tgl_selesai'=>date('Y-m-d H:i:s'),
			'status'=>'Selesai'
		));

		//clear session
		$this->session->set_userdata('exam',false);
		$this->session->set_userdata('id_ujian',null);
		$this->session->set_userdata('urutansoal',null);
		redirect('user/nilai');
	}

	private function generateUrutanSoal($id_ujian){
		$this->db->order_by('rand()');
		$tmp = $this->db->get_where('ujiansoal',array('id_ujian'=>$id_ujian));
		// print_r($tmp->result());
		$arr = array();
		if($tmp->num_rows() == 0){
			print_r($tmp->result());die();
			echo "Soal Tidak ada";die();
		}
		foreach ($tmp->result() as $key) {
			array_push($arr, $key->id_soal);
			// echo "a";
		}
		// die();
		$this->session->set_userdata('urutansoal',$arr);
	}

	public function training($jenis=1,$tingkat=null)
	{
		$data['jenis'] = $this->db->get_where('jenis_ujian',array('id_jenis_ujian'=>$jenis))->row();
		if($tingkat == null){
			$this->load->view('user_login/v_ujian',$data);
		} else {
			switch ($tingkat) {
			case 'elementary':
				$tmp = "Elementary School";
				break;
			case 'junior':
				$tmp = "Junior High School";
				break;
			case 'senior':
				$tmp = "Senior High School";
				break;
			default:
				# code...
				break;
			}

			$data['tingkat'] = $tmp;
			$this->db->select('ujian.id_ujian,guru.nama,ujian.judul,
				murid_ujian.tgl_mulai,ujian.tanggal_buat,mata_pelajaran.nama_mata_pelajaran,
				ujian.tgl_awal,ujian.tgl_akhir');
			$this->db->order_by('ujian.tanggal_buat','desc');
			$this->db->join('murid_ujian','murid_ujian.id_ujian=ujian.id_ujian','left');
			$this->db->join('mata_pelajaran','mata_pelajaran.id_mata_pelajaran=ujian.id_mata_pelajaran');
			$this->db->join('guru','guru.id_guru=ujian.id_guru');
			$data['data'] = $this->db->get_where('ujian',array('tingkat'=>$tmp));
			$this->load->view('user_login/v_ujian_list',$data);
		}
	}

	public function startexam($id){
		$now = date('Y-m-d H:i');
		$this->db->where('ujian.id_ujian',$id);
		$check = $this->db->get('ujian')->row();
		//check tanggal kadaluarsa
		if($now >= $check->tgl_awal && $now <= $check->tgl_akhir){
			//cek ke tabel murid_ujian, kalau statusnya belum selesai, maka dilanjutkan dulu
			$cekujian = $this->db->get_where('murid_ujian',array(
				'id_murid'=>$this->session->userdata('id_murid'),
				'id_ujian'=>$id
			))->row();
			if(!count($cekujian)){
				//kalau belum pernah ujian, masukan dulu ke tabel murid ujian
				$this->db->insert('murid_ujian',array(
					'id_murid'=>$this->session->userdata('id_murid'),
					'id_ujian'=>$id,
					'tgl_mulai'=>date('Y-m-d H:i:s'),
					'sisa_waktu'=>($check->durasi * 60),
					'status'=>'Ujian'
				));
			} else {

			}
			//masukkan ke session untuk menyimpan ujian yang sedang dilakukan
			$this->session->set_userdata('exam',true);
			$this->session->set_userdata('id_ujian',$id);
			$this->generateUrutanSoal($id);
			redirect('user/exam');
		} else {
			$this->load->view('user_login/error',array('err'=>'Maaf, ujian ini belum dimulai atau sudah kadaluarsa.'));
		}

	}

	public function nilai(){
		$this->db->order_by('murid_ujian.tgl_mulai','desc');
		$this->db->join('ujian','ujian.id_ujian=murid_ujian.id_ujian');
		$this->db->join('jenis_ujian','jenis_ujian.id_jenis_ujian=ujian.id_jenis_ujian');
		$data['data'] = $this->db->get_where('murid_ujian',array('id_murid'=>$this->session->userdata('id_murid')));
		$this->load->view('user_login/v_nilai',$data);
	}

	public function update_durasi(){
		$this->db->where('murid_ujian.id_murid',$this->session->userdata('id_murid'));
		$this->db->where('murid_ujian.id_ujian',$this->session->userdata('id_ujian'));
		$this->db->update('murid_ujian',array('sisa_waktu'=>$this->input->post('durasi')));
	}
}
