<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
require_once('App_model.php');
class Login_model extends App_model
{
  function __construct()
  {
    parent::__construct();
    $this->_table = 'admin_users';
  }
  
  function listing()
  {  
    $this->_fields = "*";
    // $this->db->get('admin_users');
    foreach ($this->criteria as $key => $value)
    {
      if( !is_array($value) && strcmp($value, '') === 0 )
        continue;
      switch ($key)
      {
        case 'firstname':
          $this->db->like($key, $value);
        break;
      }
    }
    return parent::listing();
  }
  public function login($email,$password)
  {
    $this->db->where("email",$email);
    $this->db->where("password",md5($password));
    $q = $this->db->get('admin_users');
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

  public function update($data,$where,$table)
  {
    $this->db->where($where);
    $this->db->update($data,$table);
  }

  public function delete($where,$table)
  {
    $this->db->where($where);
    $this->db->delete($table);
  }
}
?>