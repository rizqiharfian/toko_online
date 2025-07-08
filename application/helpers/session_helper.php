<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if ( ! function_exists('init'))
{
    function init()
    {
        $CI =& get_instance();
        return $CI;
    }
}

if ( ! function_exists('user_data')) {
    function user_data() {
        $CI = init();
        $user_id = get_current_user_id();

        $user_data = $CI->db->where('id', $user_id)->get('users')->row();
        return $user_data;
    }
}

function session_data()
{
    $ci = &get_instance();

    // Tambahkan ini jika belum
    if (!isset($ci->encryption)) {
        $ci->load->library('encryption');
    }

    $session_encrypted = $ci->session->userdata('__ACTIVE_SESSION_DATA');
    if (!$session_encrypted) {
        $session_encrypted = $ci->input->cookie('__ACTIVE_SESSION_DATA');
    }

    if ($session_encrypted) {
        $session_data = $ci->encryption->decrypt($session_encrypted);
        return json_decode($session_data);
    }

    return (object) ['user_id' => 0];
}

if ( ! function_exists('is_login'))
{
    function is_login()
    {
        $CI =& get_instance();
        $session_data = $CI->session->userdata('__ACTIVE_SESSION_DATA');

        if ($session_data) {
            $decrypted = $CI->encryption->decrypt($session_data);
            $login_data = json_decode($decrypted);

            return isset($login_data->is_login) && $login_data->is_login === TRUE;
        }

        return FALSE;
    }
}

if ( ! function_exists('get_current_user_id'))
{
    function get_current_user_id()
    {
        $CI =& get_instance();
        $session_data = $CI->session->userdata('__ACTIVE_SESSION_DATA');

        if ($session_data) {
            $decrypted = $CI->encryption->decrypt($session_data);
            $login_data = json_decode($decrypted);

            return isset($login_data->user_id) ? $login_data->user_id : 0;
        }

        return 0;
    }
}

if ( ! function_exists('verify_session'))
{
    function verify_session($what_to_verify)
    {
        $current_url = current_url();
        $current_url = base64_encode($current_url);

        if ( ! is_login())
        {
            redirect('auth/login?redir_to='. $current_url);
        }
        else if ($what_to_verify == 'admin') {
            if ( ! is_admin()) {
                redirect('auth/login?redir_to='. $current_url);
            }
        }
        else if ($what_to_verify == 'customer') {
            if ( ! is_customer()) {
                redirect('auth/login?redir_to='. $current_url);
            }
        }
    }
}

if ( ! function_exists('is_admin')) {
    function is_admin() {
        $user_data = user_data();
        $role = $user_data->role_id;

        return ($role == 1);
    }
}

if ( ! function_exists('is_customer')) {
    function is_customer() {
        $user_data = user_data();
        $role = $user_data->role_id;

        return ($role == 2);
    }
}