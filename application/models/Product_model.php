<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model {
    public function __construct()
    {
        parent::__construct();
    }

    public function get_all_products()
    {
        return $this->db->get('products')->result();
    }

    public function best_deal_product()
    {
        $data = $this->db->where('is_available', 1)
            ->order_by('current_discount', 'DESC')
            ->limit(1)
            ->get('products')
            ->row();

        return $data;
    }

    public function is_product_exist($id, $sku)
    {
        return ($this->db->where(array('id' => $id, 'sku' => $sku))->get('products')->num_rows() > 0) ? TRUE : FALSE;
    }

    public function product_data($id)
    {
        $data = $this->db->query("
            SELECT p.*, pc.name as category_name
            FROM products p
            JOIN product_category pc
                ON pc.id = p.category_id
            WHERE p.id = '$id'
        ")->row();

        return $data;
    }

    public function get_products_grouped_by_category()
{
    // Ambil semua kategori dari tabel product_category
    $categories = $this->db->order_by('name', 'ASC')->get('product_category')->result();

    // Jika tidak ada kategori, return array kosong
    if (!$categories) {
        return [];
    }

    // Untuk setiap kategori, ambil produk berdasarkan category_id
    foreach ($categories as &$cat) {
        $cat->products = $this->db
            ->where('category_id', $cat->id)
            ->get('products')
            ->result();
    }

    return $categories;
}


    public function related_products($current, $category)
    {
        return $this->db->where(array('id !=' => $current, 'category_id' => $category))->limit(4)->get('products')->result();
    }

    public function create_order(Array $data)
{
    $this->db->insert('orders', $data);

    if (!$this->db->affected_rows()) {
        log_message('error', 'QUERY ERROR: ' . $this->db->last_query());
        log_message('error', 'DB ERROR: ' . print_r($this->db->error(), true));
    }

    return $this->db->insert_id();
}

    public function create_order_items($data)
    {
        return $this->db->insert_batch('order_item', $data);
    }
}