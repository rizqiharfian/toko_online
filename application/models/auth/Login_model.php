<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {
    protected $username;
    protected $password;

    public function __construct()
    {
        parent::__construct();
    }

    public function login($username = '', $password = '')
    {
        $this->username = $username;
        $this->password = $password;
    }

    public function is_user_exist()
    {
        $username = $this->username;

        $check = $this->db
            ->where('username', $username)
            ->get('users')
            ->num_rows();

        return ($check > 0) ? TRUE : FALSE;
    }

    protected function _get($row = '')
    {
        $username = $this->username;

        $field = $this->db
            ->select($row)
            ->where('username', $username)
            ->get('users')
            ->row()
            ->$row;

        return $field;
    }

    public function get_role()
    {
        $user_id = $this->logged_user_id();

        $result = $this->db->select('role_id')
            ->where('id', $user_id)
            ->get('users')
            ->row();

        $role = $result ? $result->role_id : null;

        log_message('error', 'ROLE DARI get_role(): ' . $role);
        return $role;
    }

    public function get_password()
    {
        return $this->_get('password');
    }

    public function logged_user_id()
    {
        return $this->_get('id');
    }
}