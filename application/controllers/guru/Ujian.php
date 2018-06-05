<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Super.php');

class Ujian extends Super
{
    
    function __construct()
    {
        parent::__construct();
        $this->language       = 'english'; /** Indonesian / english **/
        $this->tema           = "flexigrid"; /** datatables / flexigrid **/
        $this->tabel          = "ujian";
        $this->active_id_menu = "ujian";
        $this->nama_view      = "Ujian";
        $this->status         = true; 
        $this->field_tambah   = array('id_mata_pelajaran','id_jenis_ujian','tingkat','kelas','judul','tgl_awal','tgl_akhir','id_guru','durasi','ujiansoal'); 
        $this->field_edit     = array('id_mata_pelajaran','id_jenis_ujian','tingkat','kelas','judul','tgl_awal','tgl_akhir','durasi','ujiansoal'); 
        $this->field_tampil   = array('tingkat','kelas','id_mata_pelajaran','judul','tgl_awal','tgl_akhir'); 
        $this->folder_upload  = 'assets/uploads/files';
        $this->add            = true;
        $this->edit           = true;
        $this->delete         = true;
        $this->crud;
    }

    function index(){
            $data = [];
            /** Bagian GROCERY CRUD USER**/


            /** Relasi Antar Tabel 
            * @parameter (nama_field_ditabel_ini, tabel_relasi, field_dari_tabel_relasinya)
            **/
            $this->crud->set_relation('id_jenis_ujian','jenis_ujian','nama_jenis_ujian');
            $this->crud->set_relation('id_mata_pelajaran','mata_pelajaran','nama_mata_pelajaran');
            $this->crud->change_field_type('id_guru', 'hidden',$this->session->userdata('id_guru'));

            $this->crud->set_relation_n_n('ujiansoal','ujiansoal','soal','id_ujian','id_soal','soal','no_urut');

            /** Upload **/
            // $this->crud->set_field_upload('nama_field_upload',$this->folder_upload);  
            
            /** Ubah Nama yang akan ditampilkan**/
            // $this->crud->display_as('nama','Nama Setelah di Edit')
            //     ->display_as('email','Email Setelah di Edit'); 
            
            /** Akhir Bagian GROCERY CRUD Edit Oleh User**/
            $data = array_merge($data,$this->generateBreadcumbs());
            $data = array_merge($data,$this->generateData());
            $this->generate();
            $data['output'] = $this->crud->render();
            $this->load->view('admin/'.$this->session->userdata('theme').'/v_index',$data);
    }

    private function set_id_guru($post_array){
        $post_array['set_id_guru'] = $this->session->userdata('id_guru');
        return $post_array;
    }

    private function generateBreadcumbs(){
        $data['breadcumbs'] = array(
                array(
                    'nama'=>'Dashboard',
                    'icon'=>'fa fa-dashboard',
                    'url'=>'admin/dashboard'
                ),
                array(
                    'nama'=>'Admin',
                    'icon'=>'fa fa-users',
                    'url'=>'admin/useradmin'
                ),
            );
        return $data;
    }
}