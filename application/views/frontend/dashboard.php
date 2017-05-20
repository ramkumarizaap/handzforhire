<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN PAGE HEADER-->
			<h3 class="page-title">
			 Dashboard
			</h3>
			<div class="page-bar">
				 <?php echo set_breadcrumb(); ?>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="dashboard-stat blue-madison">
						<div class="visual">
							<i class="fa fa-user"></i>
						</div>
						<div class="details">
							<div class="number">
								 <?=get_dashboard_counts('employers','role=2');?>
							</div>
							<div class="desc">
								 Employers
							</div>
						</div>
						<a class="more" href="<?=site_url('user/employers');?>">
						View <i class="fa  fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="dashboard-stat red-intense">
						<div class="visual">
							<i class="fa fa-user-plus"></i>
						</div>
						<div class="details">
							<div class="number">
								<?=get_dashboard_counts('employers','role=3');?>
							</div>
							<div class="desc">
								 Employees
							</div>
						</div>
						<a class="more" href="<?=site_url('user/employees');?>">
						View  <i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="dashboard-stat green-haze">
						<div class="visual">
							<i class="fa fa-bullhorn"></i>
						</div>
						<div class="details">
							<div class="number">
								<?=get_dashboard_counts('jobs');?>
							</div>
							<div class="desc">
								 Jobs
							</div>
						</div>
						<a class="more" href="<?=site_url('jobs/job_list');?>">
							View  <i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="dashboard-stat purple-plum">
						<div class="visual">
							<i class="fa fa-inbox"></i>
						</div>
						<div class="details">
							<div class="number">
								<?=get_dashboard_counts('posted_jobs');?>
							</div>
							<div class="desc">
								 Posted Jobs
							</div>
						</div>
						<a class="more" href="<?=site_url('jobs/posted_jobs');?>">
							View <i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT -->
		</div>
	</div>