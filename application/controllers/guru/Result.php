<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Super.php');

class Result extends Super
{
    
    function __construct()
    {
        parent::__construct();
        $this->language       = 'english'; /** Indonesian / english **/
        $this->tema           = "datatables"; /** datatables / flexigrid **/
        $this->tabel          = "murid";
        $this->active_id_menu = "user";
        $this->nama_view      = "User";
        $this->status         = true; 
        $this->field_tambah   = array(); 
        $this->field_edit     = array(); 
        $this->field_tampil   = array("nama_murid"); 
        $this->folder_upload  = 'assets/uploads/files';
        $this->add            = false;
        $this->edit           = false;
        $this->delete         = false;
        $this->crud;
    }

    function index(){
            if($this->crud->getState() == 'read'){
                $id = $this->uri->segment(5);
                redirect(base_url('guru/result/detail/'.$id));
            }


            $data = [];
            /** Bagian GROCERY CRUD USER**/


            /** Relasi Antar Tabel 
            * @parameter (nama_field_ditabel_ini, tabel_relasi, field_dari_tabel_relasinya)
            **/
            // $this->crud->set_relation('user_id','users','username');

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

    public function detail($id){
        $data[] = array();
        $data = array_merge($data,$this->generateBreadcumbs());
        $data = array_merge($data,$this->generateData());
        $data['output'] = "";
        $data['murid'] = $this->db->get_where('murid',array('id_murid'=>$id))->row();
        $this->db->join('ujian','ujian.id_ujian = murid_ujian.id_ujian');
        $this->db->where('murid_ujian.id_murid = '.$id);
        $data['nilai'] = $this->db->get('murid_ujian');
        $data['page'] = 'detailnilai';
        $this->load->view('admin/'.$this->session->userdata('theme').'/v_index',$data);
    }
}