<?php
/*
 * view - the path to the listing view that you want to display the data in
 * 
 * base_url - the url on which that pagination occurs. This may have to be modified in the 
 * 			controller if the url is like /product/edit/12
 * 
 * per_page - results per page
 * 
 * order_fields - These are the fields by which you want to allow sorting on. They must match
 * 				the field names in the table exactly. Can prefix with table name if needed
 * 				(EX: products.id)
 * 
 * OPTIONAL
 * 
 * default_order - One of the order fields above
 * 
 * uri_segment - this will have to be increased if you are paginating on a page like 
 * 				/product/edit/12
 * 				otherwise the pagingation will start on page 12 in this case 
 * 
 * 
 */
 

$config['user_employers'] = array(
	"view"		=> 	'listing/listing',
	"init_scripts" => 'listing/init_scripts',
	"advance_search_view" => 'frontend/user/filter',
	"base_url"	=> 	'/user/employers/',
	"per_page"	=>	"20",
	"fields"	=> array(   
						'firstname'=>array('name'=>'Name', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),					
						'lastname'=>array('name'=>'Last Name', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),
						'email'=>array('name'=>'Email', 'data_type' => 'string', 'sortable' => FALSE, 'default_view'=>1),
						'username'=>array('name'=>'Username', 'data_type' => 'string', 'sortable' => FALSE, 'default_view'=>1)),
	"default_order"	=> "id",
	"default_direction" => "DESC"
);


$config['user_employees'] = array(
	"view"		=> 	'listing/listing',
	"init_scripts" => 'listing/init_scripts',
	"advance_search_view" => 'frontend/user/filter',
	"base_url"	=> 	'/user/employees/',
	"per_page"	=>	"20",
	"fields"	=> array(   
						'firstname'=>array('name'=>'Name', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),					
						'lastname'=>array('name'=>'Last Name', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),
						'email'=>array('name'=>'Email', 'data_type' => 'string', 'sortable' => FALSE, 'default_view'=>1),
						'username'=>array('name'=>'Username', 'data_type' => 'string', 'sortable' => FALSE, 'default_view'=>1)),
	"default_order"	=> "id",
	"default_direction" => "DESC"
);


$config['jobs_category'] = array(
	"view"		=> 	'listing/listing',
	"init_scripts" => 'listing/init_scripts',
	"advance_search_view" => 'frontend/jobs/category',
	"base_url"	=> 	'/jobs/category/',
	"per_page"	=>	"20",
	"fields"	=> array(   
						'name'=>array('name'=>'Name', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),					
						'status'=>array('name'=>'Active', 'data_type' => 'status', 'sortable' => FALSE, 'default_view'=>1)),
	"default_order"	=> "id",
	"default_direction" => "DESC"
);

$config['jobs_job_list'] = array(
	"view"		=> 	'listing/listing',
	"init_scripts" => 'listing/init_scripts',
	"advance_search_view" => 'frontend/jobs/job_list',
	"base_url"	=> 	'/jobs/job_list/',
	"per_page"	=>	"20",
	"fields"	=> array(   
						'job_name'=>array('name'=>'Name', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),					
						'job_category'=>array('name'=>'Category', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),
						'job_date'=>array('name'=>'Job Date', 'data_type' => 'date', 'sortable' => FALSE, 'default_view'=>1),
						'amount'=>array('name'=>'Amount', 'data_type' => 'money', 'sortable' => FALSE, 'default_view'=>1),
						'address'=>array('name'=>'Address', 'data_type' => 'string', 'sortable' => FALSE, 'default_view'=>1)),
	"default_order"	=> "id",
	"default_direction" => "DESC"
);



$config['jobs_posted_jobs'] = array(
	"view"		=> 	'listing/listing',
	"init_scripts" => 'listing/init_scripts',
	"advance_search_view" => 'frontend/jobs/job_list',
	"base_url"	=> 	'/jobs/job_list/',
	"per_page"	=>	"20",
	"fields"	=> array(   
						'job_name'=>array('name'=>'Name', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),					
						'job_category'=>array('name'=>'Category', 'data_type' => 'String', 'sortable' => FALSE, 'default_view'=>1),
						'job_date'=>array('name'=>'Job Date', 'data_type' => 'date', 'sortable' => FALSE, 'default_view'=>1),
						'amount'=>array('name'=>'Amount', 'data_type' => 'money', 'sortable' => FALSE, 'default_view'=>1),
						'address'=>array('name'=>'Address', 'data_type' => 'string', 'sortable' => FALSE, 'default_view'=>1)),
	"default_order"	=> "id",
	"default_direction" => "DESC"
);