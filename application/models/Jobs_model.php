<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
require_once('App_model.php');
class Jobs_model extends App_model
{
  function __construct()
  {
    parent::__construct();
  }
  
  function listing()
  {  
    $this->_table = 'job_category';
    $this->_fields = "*";

    foreach ($this->criteria as $key => $value)
    {
      if( !is_array($value) && strcmp($value, '') === 0 )
        continue;
      switch ($key)
      {
        case 'name':
          $this->db->like($key, $value);
        break;
      }
    }
    return parent::listing();
  }

  function job_listing()
  {  
    $this->_fields = "a.*,b.name as job_category";
    $this->db->from('jobs a');
    $this->db->join("job_category b","b.id=a.job_category");
    $this->db->group_by('a.id');
    foreach ($this->criteria as $key => $value)
    {
      if( !is_array($value) && strcmp($value, '') === 0 )
        continue;
      switch ($key)
      {
        case 'a.job_name':
          $this->db->like($key, $value);
        break;
        case 'b.name':
          $this->db->like($key, $value);
        break;
        case 'a.job_date':
          $this->db->like($key, $value);
        break;
        case 'a.amount':
          $this->db->like($key, $value);
        break;
        case 'a.address':
          $this->db->like($key, $value);
        break;
      }
    }
    return parent::listing();
  }

  function posted_jobs()
  {  
    $this->_fields = "a.comments,a.job_posted_on,b.firstname as employer,c.job_name,d.firstname as employee";
    $this->db->from('posted_jobs a');
    $this->db->join("employers b","a.job_creator_id=b.id");
    $this->db->join("jobs c","a.job_id=c.id");
    $this->db->join("employers d","a.employee_id=d.id");
    $this->db->group_by('a.id');
    foreach ($this->criteria as $key => $value)
    {
      if( !is_array($value) && strcmp($value, '') === 0 )
        continue;
      switch ($key)
      {
        case 'a.employer_id':
          $this->db->like('b.firstname', $value);
        break;
        case 'a.job_creator_id':
          $this->db->like($key, $value);
        break;
         case 'c.job_name':
          $this->db->like($key, $value);
        break;
        case 'b.firstname':
          $this->db->like($key, $value);
        break;
      }
    }
    return parent::listing();
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