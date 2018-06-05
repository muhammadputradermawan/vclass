<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {
	function __construct(){
		parent::__construct();
	}

	public function index()
	{

		if($this->session->userdata('login_murid'))
			redirect(base_url('user/index'));

		$this->db->order_by('tanggal','desc');
		$this->db->limit(3);
		$berita = $this->db->get('home');
		$this->load->view('user2/v_index',array(
			'berita'=>$berita
		));

	}

	public function logout(){
		$this->session->sess_destroy();
		redirect (base_url());
	}

	function ticket (){
		if(isset($_GET['kelas']) && !empty($_GET)){
			$this->db->select('forum.*, guru.nama as namaguru, diskusi.diskusi as diskusi, diskusi.id_diskusi');
			$this->db->join('guru','forum.id_guru=guru.id_guru');
			$this->db->join('diskusi','diskusi.id_forum=forum.id_forum','left');
			$data ['row']=$this->db->get_where('forum',array('kelas'=>$_GET['kelas']));
			$this->load->view('user/ticket_kelas',$data);
		} elseif(isset($_GET['ticket'])){
			$this->db->select('forum.*, guru.nama as namaguru, diskusi.diskusi as diskusi, diskusi.id_diskusi');
			$this->db->join('guru','forum.id_guru=guru.id_guru');
			$this->db->join('diskusi','diskusi.id_forum=forum.id_forum','left');
			$this->db->where('judul like "%'.$_GET['ticket'].'%"');
			$data ['row']=$this->db->get('forum');
			$this->load->view('user/ticket_kelas',$data);
		} else {
			$this->db->select('forum.*,count(kelas) as kls');
			$this->db->group_by('kelas');
			$data ['row']=$this->db->get('forum');
			$this->load->view('user/ticket',$data);
		}
	}

	public function about()
	{
		$data['row'] = $this->db->get_where('infoweb',array('id_infoweb'=>1))->row();
		$this->load->view('user2/v_about',$data);
	}

	public function visimisi()
	{
		$data['row'] = $this->db->get_where('infoweb',array('id_infoweb'=>2))->row();
		$this->load->view('user2/v_visimisi',$data);
	}

	public function concept()
	{
		$data['row'] = $this->db->get_where('infoweb',array('id_infoweb'=>3))->row();
		$this->load->view('user2/v_concept',$data);
	}

	public function class_program($id=1)
	{
		$this->load->view('user2/v_classporgram');
	}

	public function contact_us(){
		$data['row'] = $this->db->get_where('infoweb',array('id_infoweb'=>8))->row();
		$this->load->view('user2/v_contact_us',$data);
	}

	public function gallery()
	{
		$this->load->view('user2/v_gallery',array(
			'data'=>$this->db->get('gallery')
		));
	}

	public function program($id)
	{
		$this->load->view('user2/v_program',array(
			'data'=>$this->db->get_where('infoweb',array('id_infoweb'=>$id))->row()
		));
	}

	public function detail($id)
	{
		$this->load->view('user2/v_detailberita',array(
			'data'=>$this->db->get_where('home',array('id_home'=>$id))->row()
		));
	}

	public function login()
	{
		if($this->input->post()!= null){
			$cekuser = $this->db->get_where('murid',array ('id_murid'=>$this->input->post('id_user'),'password_murid'=>$this->input->post('password')));

			if($cekuser->num_rows() == 0)
				redirect(base_url());
			else {
				$row=$cekuser->row();
				$this->session->set_userdata('login_murid',true);
				$this->session->set_userdata('id_murid',$row->id_murid);
				$this->session->set_userdata('nama_murid',$row->nama_murid);
				redirect('user/index');
			}

		}
	}







	public function info()
	{
		$data ['row']=$this->db->get('info');
		$this->load->view('user/info',$data);
	}



	public function diskusi($id)
	{
		if(isset ($_POST['komentar'])){
			$this->db->insert('murid_diskusi',array(
				'id_diskusi'=>$id,
				'id_murid'=>$this->session->userdata('id_murid'),
				'pesan'=>$this->input->post('komentar',true)
				));
			redirect('index/diskusi/'.$id);
		}
		$this->db->join('forum', 'forum.id_forum=diskusi.id_forum');
		$this->db->join('mata_pelajaran', 'mata_pelajaran.id_mata_pelajaran=forum.id_mata_pelajaran');
		$this->db->join('guru', 'forum.id_guru=guru.id_guru');
		$diskusi = $this->db->get_where('diskusi',array('diskusi.id_forum'=>$id))->row();
		$ceksoal = $this->db->get_where('ticketsol',array('id_diskusi'=>$id))->num_rows();

		if(count($diskusi)){
			$komentar=$this->db->get_where('murid_diskusi',array ('id_diskusi'=>$id));
			$this->load->view('user/v_ticket_detail',array(
				'diskusi'=>$diskusi,
				'komentar'=>$komentar,
				'ceksoal'=>$ceksoal
			));
		}
		else{
			$this->load->view('user/v_error', array(
				'err'=>'Diskusi Belum Tersedia'
			));
		}
	}

	public function soal($id_diskusi=1,$nomor=0)
	{
		$nmr = $nomor;

		$this->load->library('pagination');
		$config['base_url'] = base_url('index/soal/'.$id_diskusi.'/');
		$config['total_rows'] = $this->db->get_where('ticketsol',array('id_diskusi'=>$id_diskusi))->num_rows();
		$config['per_page'] = 1;
		$config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="javascript:void(0)">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config["uri_segment"] = 4;
        // print_r($this->uri->segment(4));die();
		// $nomor = 1;
		if($nomor == 0)
			$nomor = 1;
		else
			$nomor -= 1;
		$this->db->join('ticketsol','ticketsol.id_soal=soal.id_soal');
		$this->db->join('diskusi','diskusi.id_diskusi=ticketsol.id_diskusi');
		$this->db->where("ticketsol.id_diskusi=$id_diskusi and ticketsol.nomerurut=$nomor");
		$soal = $this->db->get('soal')->row();
		// print_r($soal);die();
		$this->db->join('jawaban', 'jawaban.id_jawaban = soal_jawaban.id_jawaban');
		$jawaban = $this->db->get_where('soal_jawaban',array('id_soal'=>$soal->id_soal));

		if($nmr == 0)
			$nmr = 1;
		else
			$nmr = $nmr + 1;

		$this->load->view('user/v_soal', array(
			'page'=>$this->pagination->initialize($config),
			'nomor'=>$nmr,
			'soal'=>$soal,
			'jawaban'=>$jawaban
		));
	}
}
