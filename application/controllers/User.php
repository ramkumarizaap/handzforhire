<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once(APPPATH."libraries/Admin_controller.php");

class User extends Admin_controller
{
	protected $_employer_validation_rules = array (
			           array('field' => 'username', 'label' => 'Username', 'rules' => 'trim|required'),
			           array('field' => 'firstname', 'label' => 'First Name', 'rules' => 'trim|required'),
			           array('field' => 'lastname', 'label' => 'Last Name', 'rules' => 'trim|required'),
			           array('field' => 'email', 'label' => 'Email Address', 'rules' => 'trim|required|valid_email'),
			           array('field' => 'address_1', 'label' => 'Address 1', 'rules' => 'trim|required'),
			           array('field' => 'city', 'label' => 'City', 'rules' => 'trim|required'),
			           array('field' => 'state', 'label' => 'State', 'rules' => 'trim|required'),
			           array('field' => 'zipcode', 'label' => 'Zipcode', 'rules' => 'trim|required|integer'),
			           array('field' => 'username', 'label' => 'Username', 'rules' => 'trim|required'),
			           array('field' => 'password', 'label' => 'Password', 'rules' => 'trim|required'));
	function __construct()
  {
    parent::__construct();
    $this->load->model('user_model');
  }

  public function index()
  {
  	redirect('user/employers');
  }

  public function employers()
  {
  	$this->layout->add_javascripts(array('listing'));
    $this->load->library('listing');
    $this->simple_search_fields = array('firstname' => 'Firstname','lsatname'=>"Lastname",'email'=>'Email');
    // $this->_narrow_search_conditions = array("start_date");
    $str = '<a href="'.site_url('user/add_employer/{id}').'" class="btn btn-padding btn yellow table-action"><i class="fa fa-edit edit"></i></a><a href="javascript:void(0);" data-original-title="Remove" data-toggle="tooltip" data-placement="top" class="table-action btn-padding btn red" onclick="delete_record(\'user/delete/{id}\',this);"><i class="fa fa-trash-o trash"></i></a>';
    $this->listing->initialize(array('listing_action' => $str));
    $listing = $this->listing->get_listings('user_model', 'listing');
    if($this->input->is_ajax_request())
      $this->_ajax_output(array('listing' => $listing), TRUE);
    $this->data['btn'] = "<a href=".site_url('user/add_employer')." class='btn green'>Add New Employer <i class='fa fa-plus'></i></a>";
    $this->data['bulk_actions'] = array('' => 'select', 'delete' => 'Delete');
    $this->data['simple_search_fields'] = $this->simple_search_fields;
    $this->data['search_conditions'] = $this->session->userdata($this->namespace.'_search_conditions');
    $this->data['per_page'] = $this->listing->_get_per_page();
    $this->data['per_page_options'] = array_combine($this->listing->_get_per_page_options(), $this->listing->_get_per_page_options());
    $this->data['search_bar'] = $this->load->view('listing/search_bar', $this->data, TRUE);
    $this->data['listing'] = $listing;
    $this->data['grid'] = $this->load->view('listing/view', $this->data, TRUE);
  	$this->layout->view('frontend/user/employers');
  }

  public function employees()
  {
  	$this->layout->add_javascripts(array('listing'));
    $this->load->library('listing');
    $this->simple_search_fields = array('firstname' => 'Firstname','lsatname'=>"Lastname",'email'=>'Email');
    // $this->_narrow_search_conditions = array("start_date");
    $str = '<a href="'.site_url('user/add_employer/{id}').'" class="btn yellow btn-padding table-action"><i class="fa fa-edit edit"></i></a><a href="javascript:void(0);" data-original-title="Remove" data-toggle="tooltip" data-placement="top" class="table-action btn red btn-padding" onclick="delete_record(\'user/delete/{id}\',this);"><i class="fa fa-trash-o trash"></i></a>';
    $this->listing->initialize(array('listing_action' => $str));
    $listing = $this->listing->get_listings('user_model', 'listing');
    if($this->input->is_ajax_request())
      $this->_ajax_output(array('listing' => $listing), TRUE);
    $this->data['btn'] = "<a href=".site_url('user/add_employee')." class='btn green'>Add New Employee <i class='fa fa-plus'></i></a>";
    $this->data['bulk_actions'] = array('' => 'select', 'delete' => 'Delete');
    $this->data['simple_search_fields'] = $this->simple_search_fields;
    $this->data['search_conditions'] = $this->session->userdata($this->namespace.'_search_conditions');
    $this->data['per_page'] = $this->listing->_get_per_page();
    $this->data['per_page_options'] = array_combine($this->listing->_get_per_page_options(), $this->listing->_get_per_page_options());
    $this->data['search_bar'] = $this->load->view('listing/search_bar', $this->data, TRUE);
    $this->data['listing'] = $listing;
    $this->data['grid'] = $this->load->view('listing/view', $this->data, TRUE);
  	$this->layout->view('frontend/user/employees');
  }

  public function add_employer($edit_id='')
  {
  	$this->form_validation->set_rules($this->_employer_validation_rules);
  	$this->data['edit'] = "";
  	if($edit_id)
  	{
  		
  		$this->data['edit'] = $this->user_model->select(array("id"=>$edit_id),"employers");
  	}
  	else
  	{
  		$this->form_validation->set_rules('email','Email','callback_email_check');
  		$this->form_validation->set_rules('username','Username','callback_username_check');
  	}
    if($this->form_validation->run())
    {
    	$form = $this->input->post();
    	$ins['firstname'] = $form['firstname'];
    	$ins['lastname'] = $form['lastname'];
    	$ins['email'] = $form['email'];
    	$ins['username'] = $form['username'];
    	$ins['password'] = $form['password'];
    	$ins['address_1'] = $form['address_1'];
    	$ins['address_2'] = $form['address_2'];
    	$ins['state'] = $form['state'];
    	$ins['city'] = $form['city'];
    	$ins['zipcode'] = $form['zipcode'];
    	$ins['is_active'] = 1;
    	$ins['role'] = 2;
    	$ins['updated_date'] = date("Y-m-d H:i:s");
    	if($edit_id)
    		$up = $this->user_model->update(array("id"=>$edit_id),$ins,"employers");
    	else
    	{
    		$ins_id = $this->user_model->insert($ins,"employers");
    		$this->session->set_flashdata('success_msg',"Employer created successfully.",TRUE);
    	}
    	redirect('user/employers');
    }
  	$this->layout->view('frontend/user/add_employer');
  }

  public function add_employee($edit_id='')
  {
  	$this->form_validation->set_rules($this->_employer_validation_rules);
  	$this->data['edit'] = "";
  	if($edit_id)
  	{
  		
  		$this->data['edit'] = $this->user_model->select(array("id"=>$edit_id),"employers");
  	}
  	else
  	{
  		$this->form_validation->set_rules('email','Email','callback_email_check');
  		$this->form_validation->set_rules('username','Username','callback_username_check');
  	}
    if($this->form_validation->run())
    {
    	$form = $this->input->post();
    	$ins['firstname'] = $form['firstname'];
    	$ins['lastname'] = $form['lastname'];
    	$ins['email'] = $form['email'];
    	$ins['username'] = $form['username'];
    	$ins['password'] = $form['password'];
    	$ins['address_1'] = $form['address_1'];
    	$ins['address_2'] = $form['address_2'];
    	$ins['state'] = $form['state'];
    	$ins['city'] = $form['city'];
    	$ins['zipcode'] = $form['zipcode'];
    	$ins['is_active'] = 1;
    	$ins['role'] = 3;
    	$ins['updated_date'] = date("Y-m-d H:i:s");
    	if($edit_id)
    		$up = $this->user_model->update(array("id"=>$edit_id),$ins,"employers");
    	else
    	{
    		$ins_id = $this->user_model->insert($ins,"employers");
    		$this->session->set_flashdata('success_msg',"Employee created successfully.",TRUE);
    	}
    	redirect('user/employees');
    }
  	$this->layout->view('frontend/user/add_employee');
  }


  public function email_check($str)
  {
  	$chk_email = $this->user_model->callback_check(array("email"=>$str));
  	if($chk_email)
  	{
  		$this->form_validation->set_message('email_check', 'This Email-ID already exists.');
			return FALSE;
		}
		else
			return true;
  }

  public function username_check($str)
  {
  	$chk_username = $this->user_model->callback_check(array("username"=>$str));
  	if($chk_username)
  	{
  		$this->form_validation->set_message('username_check', 'This Username already exists.');
			return FALSE;
		}
		else
			return true;
  }

  public function delete($del_id)
	{
  	$output['message'] ="Record deleted successfuly.";
  	$output['status']  = "success";
  	$this->user_model->delete(array("id"=>$del_id),"employers");
  	$this->_ajax_output($output, TRUE);
	}
}
?>