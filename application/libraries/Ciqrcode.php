<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ciqrcode {
    function __construct() {
        include_once APPPATH . '/third_party/phpqrcode/qrlib.php';
    }

    public function generate($params = array()) {
        $tempDir = isset($params['savename']) ? dirname($params['savename']) : APPPATH . 'cache/';
        if (!file_exists($tempDir)) {
            mkdir($tempDir, 0777, true);
        }

        QRcode::png(
            $params['data'],
            isset($params['savename']) ? $params['savename'] : false,
            isset($params['level']) ? $params['level'] : 'H',
            isset($params['size']) ? $params['size'] : 6,
            2
        );
    }
}
