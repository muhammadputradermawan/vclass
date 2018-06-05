<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('login_guru')) {
            redirect('guru/login');
        }
    }

    public function index()
    {
        $data['active']     = 'dash';
        $data['judul_1']    = 'Dashboard';
        $data['judul_2']    = 'Selamat Pengajar';
        $data['page']       = 'v_dashboard';
        $data['menu']       = $this->Menus->generateMenu('Guru');
        $data['breadcumbs'] = array(
            array(
                'nama'=>'Dashboard',
                'icon'=>'fa fa-dashboard',
                'url'=>'admin/dashboard'
            ),
        );

        $this->load->view('guru/'.$this->session->userdata('theme').'/v_index', $data);
    }
}
