<?php
require APPPATH.'/libraries/REST_Controller.php';

/**
 * Service
 * 
 * @package FTP
 * @author Punitha
 * @copyright 2017
 * @version 1
 * @access public
 */
class Service extends REST_Controller
{
       protected $profile_url = '';
 
        function __construct()
        {
            // Construct our parent class
            parent::__construct();

            $this->load->model(array("user_model","login_model","address_model"));
            $key  = $this->get('X-APP-KEY');
        }
        
         //register
         function user_register_post() {
            
            if(!$this->post('email')){
    			return $this->response(array('status' => 'error','msg' => 'Required fields missing in your request','error_code' => 1), 404);
    		}
             
            $username       = $this->post('username');
            $password       = $this->post('password');
            $email          = $this->post('email');
            $firstname      = $this->post('firstname');
            $lastname       = $this->post('lastname');
            $address        = $this->post('address');
            $city           = $this->post('city');
            $state          = $this->post('state');
            $zipcode        = $this->post('zipcode');
            $usertype       = $this->post('usertype');
            $devicetoken    = $this->post('devicetoken');
            
             if(!empty($email)) {
                  //Email check if already exists or not
                  $email_res = $this->user_model->check_unique(array("email" => $email));
                  if(count($email_res)>0) {
                    return $this->response(array('status' => "error",'msg' => 'Email already exist.','error_code' => 2), 404);
                  }
             } 
            
            $ins_data = array();
            $ins_data['username']       = $username;
            $ins_data['password']       = md5($password);
            $ins_data['email']          = $email;
            $ins_data['firstname']      = $firstname;
            $ins_data['lastname']       = $lastname;
            $ins_data['address']        = $address;
            $ins_data['city']           = $city;
            $ins_data['state']          = $state;
            $ins_data['zipcode']        = $zipcode;
            $ins_data['usertype']       = $usertype;
            $ins_data['devicetoken']    = $devicetoken;
                
            $user_id = $this->user_model->insert($ins_data,"user");   
            if(!empty($user_id)){
                $res = $email_res = $this->user_model->check_unique(array('id' => $user_id));
                return $this->response(array('status' =>'success','request_type' => 'create_account','user_data' => $res), 200);
            }    
            else
            {
                return $this->response(array('status' =>'error','request_type' => 'create_account', 'msg' => "User doesn't create!" ,'error_code' => 5), 404);
            }
        }
        
        //user email update
        function user_email_update_post() {
            
            if(!$this->post('user_id') && !$this->post('user_id')){
    			return $this->response(array('status' => 'error','msg' => 'Required fields missing in your request','error_code' => 1), 404);
    		}
             
            $email          = $this->post('email');
            $user_id        = $this->post('user_id');
           
             if(!empty($email)) {
                  //Email check if already exists or not
                  $email_res = $this->user_model->check_unique(array("email" => $email, 'id!=' => $user_id));
                  if(count($email_res)>0) {
                    return $this->response(array('status' => "error",'msg' => 'Email already exist.','error_code' => 2), 404);
                  }
             } 
            
            $ins_data           = array();
            $ins_data['email']  = $email;  
            $affected           = $this->user_model->update(array("id" => $user_id),$ins_data,"user");
            if(!empty($affected)){   
                $res = $this->user_model->check_unique(array('id' => $user_id));
                return $this->response(array('status' =>'success','request_type' => 'update_email','user_data' => $res), 200);
            }
            else
            {
                return $this->response(array('status' =>'error','request_type' => 'update_email', 'msg' => 'Email not updated', 'error_code' => 3), 404);
            } 
        }
        
        //login
        function login_post()
        {
            if(!$this->post('username') & !$this->post('password') & !$this->post('devicetoken')){
    			return $this->response(array('status' => 'error','msg' => 'Required fields missing in your request','error_code' => 1), 404);
    		}
            
            $username       = $this->post('username');
            $password       = $this->post('password');
            $devicetoken    = $this->post('devicetoken');
            
            $result = $this->login_model->app_login($username,$password);
            
            if(count($result)>0){
                //update user device token
                $device_token_update = $this->user_model->update(array("id" => $result['id']),array("devicetoken" => $devicetoken),"user");
                return $this->response(array('status' =>'success','request_type' => 'user_login','user_data' => $result), 200);
            }
            else
            {
                return $this->response(array('status' =>'error','request_type' => 'user_login', 'msg' => 'Invalid credentials', 'error_code' => 4), 404);
            }
        }
        
        //user authentication update (username/password)
        function user_authentication_update_post()
        {
            if(!$this->post('user_id')){
    			return $this->response(array('status' => 'error','msg' => 'Required fields missing in your request','error_code' => 1), 404);
    		}
            
            $username  = $this->post('username');
            $password  = $this->post('password');
            $user_id   = $this->post('user_id');
            
            $res       = $this->user_model->check_unique(array('id' => $user_id));
            $username  = (!empty($username))?$username:$res['username'];
            $password  = (!empty($password))?md5($password):$res['password'];
            
            if(count($res)>0){
                $up = array();
                $up['username'] = $username;
                $up['password'] = $password;
                $update = $this->user_model->update(array("id" => $res['id']),$up,"user");
                return $this->response(array('status' =>'success','request_type' => 'user_authenticate_update','user_data' => get_current_user_dt($user_id)), 200);
            }
            else
            {
                return $this->response(array('status' =>'error','request_type' => 'user_authenticate_update', 'msg' => 'Invalid User!', 'error_code' => 6), 404);
            }
        }
        
        //add user address
        function user_address_post()
        {
            if(!$this->post('user_id')){
    			return $this->response(array('status' => 'error','msg' => 'Required fields missing in your request','error_code' => 1), 404);
    		} 
            
            $address1       = $this->post('address1');
            $address2       = $this->post('address2');
            $city           = $this->post('city');
            $state          = $this->post('state');
            $zipcode        = $this->post('zipcode');
            $user_id        = $this->post('user_id');
            
            $ins_data = array();
            $ins_data['user_id']  = $user_id;
            $ins_data['address1'] = $address1;
            $ins_data['address2'] = $address2;
            $ins_data['city']     = $city;
            $ins_data['state']    = $state;
            $ins_data['zipcode']  = $zipcode;
            $address_id           = $this->address_model->insert($ins_data);
            if(!empty($address_id)){
                return $this->response(array('status' =>'success','request_type' => 'user_address_create','address_id' => $address_id), 200);
            }    
            else
            {
                return $this->response(array('status' =>'error','request_type' => 'user_address_create', 'msg' => "Address doesn't create!" ,'error_code' => 5), 404);
            }
        } 
        
        //get user update email
        function get_user_email_post()
        {
            if(!$this->post('user_id')){
    			return $this->response(array('status' => 'error','msg' => 'Required fields missing in your request','error_code' => 1), 404);
    		}
            
            $user_id   = $this->post('user_id');
            $res       = $this->user_model->check_unique(array('id' => $user_id));
            //print_r($res); exit;
            if(count($res)>0){
                return $this->response(array('status' =>'success','request_type' => 'get_user_email','email' => $res['email']), 200);
            }
            else
            {
                return $this->response(array('status' =>'error','request_type' => 'get_user_email', 'msg' => "User doesn't exists!" ,'error_code' => 6), 404);
            }
        }
        
        //get user update username
        function get_username_post()
        {
            if(!$this->post('user_id')){
    			return $this->response(array('status' => 'error','msg' => 'Required fields missing in your request','error_code' => 1), 404);
    		}
            
            $user_id   = $this->post('user_id');
            $res       = $this->user_model->check_unique(array('id' => $user_id));
            
            if(count($res)>0){
                return $this->response(array('status' =>'success','request_type' => 'get_username','username' => $res['username']), 200);
            }
            else
            {
                return $this->response(array('status' =>'error','request_type' => 'get_username', 'msg' => "User doesn't exists!" ,'error_code' => 6), 404);
            }
        }
}
?>
