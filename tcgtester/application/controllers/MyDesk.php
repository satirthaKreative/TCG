<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MyDesk extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data_arr = array();
		$this->load->font_page('frontend/layout/my-desk',$data_arr);
	}

}

/* End of file MyDesk.php */
/* Location: ./application/controllers/MyDesk.php */