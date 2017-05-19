<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
require_once('App_model.php');
class User_model extends App_model
{
  function __construct()
  {
    parent::__construct();
    $this->_table = 'employers';
  }
  
  function listing()
  {  
    $this->_fields = "*";
    if($this->router->fetch_method()=="employers")
      $this->db->where('role','2');
    else if($this->router->fetch_method()=="employees")
      $this->db->where('role','3');
    foreach ($this->criteria as $key => $value)
    {
      if( !is_array($value) && strcmp($value, '') === 0 )
        continue;
      switch ($key)
      {
        case 'firstname':
          $this->db->like($key, $value);
        break;
         case 'lastname':
          $this->db->like($key, $value);
        break;
         case 'email':
          $this->db->like($key, $value);
        break;
      }
    }
    return parent::listing();
  }
  public function callback_check($where)
  {
    $this->db->where($where);
    $q = $this->db->get('employers');
    return $q->row_array();
  }
	public function insert($data,$table=NULL)
	{
		$q =  $this->db->insert($table,$data);
		return $this->db->insert_id();
	}
  public function select_multiple($where,$table)
  {
    if($where)
      $this->db->where($where);
    $q = $this->db->get($table);
    return $q->result_array();
  }

  public function select($where,$table)
  {
    if($where)
      $this->db->where($where);
    $q = $this->db->get($table);
    return $q->row_array();
  }

  public function update($where,$data,$table)
  {
    $this->db->where($where);
    $this->db->update($table,$data);
  }

  public function delete($where,$table)
  {
    $this->db->where($where);
    $this->db->delete($table);
  }
}
?>