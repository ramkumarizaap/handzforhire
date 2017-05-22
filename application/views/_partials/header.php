<div class="page-container">
  <div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
  <div class="page-header-inner">
    <!-- BEGIN LOGO -->
    <div class="page-logo">
      <a href="<?=site_url('dashboard');?>">
        <h3 style="color: white;">HandzforHire</h3>
      </a>
      <div class="menu-toggler sidebar-toggler hide">
        <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
      </div>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
    </a>
    <!-- END RESPONSIVE MENU TOGGLER -->
    <!-- BEGIN TOP NAVIGATION MENU -->
    <div class="top-menu">
      <ul class="nav navbar-nav pull-right">
       
        
        <li class="dropdown dropdown-user">
          <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
          <img alt="" class="img-circle" src="<?=site_url('assets/img/');?>avatar3_small.jpg"/>
          <span class="username username-hide-on-mobile">
          <?=$this->session->userdata('user_data')['firstname'];?> </span>
          <i class="fa fa-angle-down"></i>
          </a>
          <ul class="dropdown-menu dropdown-menu-default">
            <li>
              <a href="<?=site_url('profile');?>">
              <i class="icon-user"></i> My Profile </a>
            </li>
            <!-- <li>
              <a href="extra_lock.html">
              <i class="icon-lock"></i> Lock Screen </a>
            </li> -->
            <li>
              <a href="<?=site_url('login/logout');?>">
              <i class="icon-key"></i> Log Out </a>
            </li>
          </ul>
        </li>
        <!-- END USER LOGIN DROPDOWN -->
        <!-- BEGIN QUICK SIDEBAR TOGGLER -->
        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
        <li class="dropdown dropdown-quick-sidebar-toggler">
          <a href="<?=site_url('login/logout');?>" class="dropdown-toggle">
          <i class="fa fa-power-off"></i>
          </a>
        </li>
        <!-- END QUICK SIDEBAR TOGGLER -->
      </ul>
    </div>
    <!-- END TOP NAVIGATION MENU -->
  </div>
  </div>
  <div class="page-sidebar-wrapper">
    <?php 
      $uri = $this->uri->segment(1);
      $uri1 = $this->uri->segment(2);
    ?>
    <div class="page-sidebar navbar-collapse collapse">
      <ul class="page-sidebar-menu page-sidebar-menu-light " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="sidebar-toggler-wrapper">
          <div class="sidebar-toggler">
          </div>
        </li>
        <li class="start <?=($uri=='dashboard')?'active':'';?>">
          <a href="<?=site_url('dashboard');?>">
          <i class="fa fa-home"></i>
          <span class="title">Dashboard</span>
          <?=($uri=='dashboard')?"<span class='selected'>":"";?>
          </a>
        </li>
        <li class="start <?=($uri1=='employers' || $uri1=='add_employer')?'active':'';?>">
          <a href="<?=site_url('user/employers');?>">
          <i class="fa fa-user"></i>
          <span class="title">Employers</span>
            <?=($uri=='user/employers')?"<span class='selected'>":"";?>
          </a>
        </li>
        <li class="start <?=($uri1=='employees' || $uri1=='add_employee')?'active':'';?>">
          <a href="<?=site_url('user/employees');?>">
          <i class="fa fa-user-plus"></i>
          <span class="title">Employees</span>
            <?=($uri=='user/employees')?"<span class='selected'>":"";?>
          </a>
        </li>
        <li class="start <?=($uri=='jobs')?'active':'';?>">
          <a href="<?=site_url('jobs');?>">
          <i class="fa fa-anchor"></i>
          <span class="title">Jobs</span>
            <?=($uri=='jobs')?"<span class='selected'>":"";?>
            <span class="arrow "></span>
          </a>
          <ul class="sub-menu">
            <li class="<?=($uri1=='job_list' || $uri1=='add_job')?'active':'';?>">
              <a href="<?=site_url('jobs/job_list');?>">
              <i class="fa fa-calendar"></i>
              Jobs List</a>
            </li>
            <li class="<?=($uri1=='posted_jobs' || $uri1=='add_employee')?'active':'';?>">
              <a href="<?=site_url('jobs/posted_jobs');?>">
              <i class="fa fa-line-chart"></i>
              Posted Jobs</a>
            </li>
             <li class="<?=($uri1=='category' || $uri1=='add_category')?'active':'';?>">
              <a href="<?=site_url('jobs/category');?>">
              <i class="fa fa-sitemap"></i>
              Category</a>
            </li>
          </ul>
        </li>
        <li class="start <?=($uri=='roles')?'active':'';?>">
          <a href="<?=site_url('roles');?>">
          <i class="fa fa-sitemap"></i>
          <span class="title">Roles</span>
            <?=($uri=='roles')?"<span class='selected'>":"";?>
          </a>
        </li>
        <!-- <li class="start <?=($uri=='reports')?'active':'';?>">
          <a href="<?=site_url('reports');?>">
          <i class="fa fa-table"></i>
          <span class="title">Reports</span>
            <?=($uri=='reports')?"<span class='selected'>":"";?>
          </a>
        </li> -->
      </ul>
    </div>
  </div>