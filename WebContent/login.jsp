<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Login</title>

<link rel='stylesheet' type='text/css'
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>

<link rel="stylesheet" type="text/css"
	href="assets/skin/default_skin/css/theme.css">

<link rel="stylesheet" type="text/css"
	href="assets/admin-tools/admin-forms/css/admin-forms.css">
</head>
<body class="external-page sb-l-c sb-r-c">

	<div id="main" class="animated fadeIn">

		<section id="content_wrapper">

			<div id="canvas-wrapper">
				<canvas id="demo-canvas"></canvas>
			</div>

			<section id="content">
				<div class="admin-form theme-info" id="login1">
					<div class="row mb15 table-layout">
						<div class="col-xs-6 va-m pln">
							<!-- <a href="#" title="Return to Dashboard"> <img
								src="assets/img/logos/logo_white.png" title="AdminDesigns Logo"
								class="img-responsive w250">
							</a> -->
						</div>
						<div class="col-xs-6 text-right va-b pr5">
							<div class="login-links">
								<a href="login.jsp" class="active" title="Sign In">Sign In</a> <span
									class="text-white"> <!-- | -->
								</span> <a href="#" class="" title="Register"> <!-- Register -->
								</a>
							</div>
						</div>
					</div>
					<div class="panel panel-info mt10 br-n">
						<div class="panel-heading heading-border bg-white"></div>

						<form method="post" action="login" id="contact" autocomplete="off">
							<div class="panel-body bg-light p30">
								<%
									if (session.getAttribute("smsg") != null) {
								%>
								<div id="fadeOutFun"
									class="alert alert-micro alert-border-left alert-danger alert-dismissable">
									<button type="button" class="close" data-dismiss="alert"
										aria-hidden="true">×</button>
									<i class="fa fa-check pr10"></i> <strong><%=session.getAttribute("smsg")%>
									</strong>
								</div>
								<%
									session.removeAttribute("smsg");
									}
								%>
								<div class="row">
									<div class="col-sm-7 pr30">
										<div class="section">
											<label for="username"
												class="field-label text-muted fs18 mb10">Username</label> <label
												for="username" class="field prepend-icon"> <input
												required="required" type="text" name="username" autofocus
												id="username" class="gui-input" placeholder="Enter username">
												<label for="username" class="field-icon"> <i
													class="fa fa-user"></i>
											</label>
											</label>
										</div>

										<div class="section">
											<label for="username"
												class="field-label text-muted fs18 mb10">Password</label> <label
												for="password" class="field prepend-icon"> <input
												type="password" name="password" id="password"
												required="required" class="gui-input"
												placeholder="Enter password"> <label for="password"
												class="field-icon"> <i class="fa fa-lock"></i>
											</label>
											</label>
										</div>

									</div>
									<div class="col-sm-5 br-l br-grey pl30">
										<h3 class="mb25">You'll Have Access To Your:</h3>
										<p class="mb15">
											<span class="fa fa-check text-success pr5"></span> Unlimited
											sales order creation
										</p>
										<p class="mb15">
											<span class="fa fa-check text-success pr5"></span> Unlimited
											purchase order creation
										</p>
										<p class="mb15">
											<span class="fa fa-check text-success pr5"></span> Track all
											your data
										</p>
										<p class="mb15">
											<span class="fa fa-check text-success pr5"></span> Sales
											Purchase &amp; GST Data Analysis
										</p>
									</div>
								</div>
							</div>

							<div class="panel-footer clearfix p10 ph15">
								<button type="submit" class="button btn-primary mr10 pull-left">Sign
									In</button>
							</div>

						</form>
					</div>
				</div>
			</section>

		</section>

	</div>



	<script src="vendor/jquery/jquery-3.1.1.min.js"></script>
	<script src="vendor/jquery/jquery_migrate/jquery-migrate-3.0.0.min.js"></script>
	<script src="vendor/jquery/jquery_ui/jquery-ui.min.js"></script>

	<script src="vendor/plugins/canvasbg/canvasbg.js"></script>

	<script src="assets/js/utility/utility.js"></script>
	<script src="assets/js/demo/demo.js"></script>
	<script src="assets/js/main.js"></script>

	<script type="text/javascript">
		jQuery(document).ready(function() {

			"use strict";

			// Init Theme Core      
			Core.init();

			// Init Demo JS
			Demo.init();

			// Init CanvasBG and pass target starting location
			CanvasBG.init({
				Loc : {
					x : window.innerWidth / 2,
					y : window.innerHeight / 3.3
				},
			});

		});
	</script>

	<script>
		$(document).ready(function() {

			$('#fadeOutFun').fadeOut(3500, 'swing', function() {
				//callback function after animation finished
				$("#fadeOutFun").attr('value', 'fadeOut() is now Complete');
			});
		});
	</script>

</body>
</html>
