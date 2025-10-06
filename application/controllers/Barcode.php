<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barcode extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('Ciqrcode');
    }

    public function katalog()
{
    $ngrok_url = 'https://rattiest-unstationary-ross.ngrok-free.dev'; // ubah tiap kali ngrok berubah
    $url = $ngrok_url . '/toko_online/pages/katalog';

    header("Content-Type: image/png");

    $this->load->library('ciqrcode');

    $save_path = FCPATH . 'media/katalog.png';
    if (!file_exists(dirname($save_path))) mkdir(dirname($save_path), 0777, true);

    $params['data'] = $url;
    $params['level'] = 'H';
    $params['size'] = 10;
    $params['savename'] = $save_path;

    $this->ciqrcode->generate($params);
    readfile($save_path);
}
}
