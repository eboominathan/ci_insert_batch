<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function index()
	{
		$this->load->view('welcome_message');
	}
        
        
        public function batchInsert()
	{
            $this->load->model('Batch');
            $result = $this->Batch->batchInsert($_POST);
            if($result){
                echo 1;
            }
            else{
                echo 0;
            }
            exit;
	}
}

/* End of file welcome.php */
