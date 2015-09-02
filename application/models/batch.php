<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Batch extends CI_Model {
    
    function batchInsert($data){
        //get bill entries 
        $count = count($data['count']);
        
        for($i = 0; $i<$count; $i++){
            
            $entries[] = array(
                'date'=>$data['jdate'][$i],
                'type'=>$data['jtype'][$i],
                'passenger'=>$data['jpassanger'][$i],
                'from_'=>$data['jfrom'][$i],
                'to_'=>$data['jto'][$i],
                'ticket'=>$data['jticket_no'][$i],
                'amount'=>$data['jamount'][$i],
                );
        }


        $this->db->insert_batch('journey', $entries); 

        
        if($this->db->affected_rows() > 0)
            return 1;
        else
            return 0;
        }
}
