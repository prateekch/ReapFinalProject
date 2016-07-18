<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Welcome to Official Website of REAP...</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="icon"
	href="<c:url value="/resources/WebImages/favicon_ttnd.ico"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap-daterangepicker-master/daterangepicker.css"/>">
<script type="text/javascript"
	src="<c:url value="/resources/bootstrap-daterangepicker-master/moment.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/bootstrap-daterangepicker-master/daterangepicker.js"/>"></script>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top"
		style="padding-top: 15px">
		<div class="container-fluid">
			<div class="row" style="padding-left: 30px;">
				<div class="col-md-2">
					<a href='<c:url value="dashboard" />' title="Dashboard"> <img
						src="<c:url value="/resources/WebImages/reap_icon.png" />"
						alt="REAP Icon" height="34px"></a>
				</div>
				<div class="col-md-4 hidden-xs">
					<img src="<c:url value="/resources/WebImages/Header_Img.png"/>"
						class="img-responsive">
				</div>

				<div class="col-md-6">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#example-navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="example-navbar-collapse">

						<ul class="menu" class="nav navbar-nav">
							<li><a href='<c:url value="dashboard" />' title="Dashboard"><img
									src="<c:url value="/resources/WebImages/dashboard.png"/>"
									alt="dashboard"> &nbsp;Dashboard</a></li>
							<li class="active"><a href='<c:url value="badges" />'
								title="Badges"><img
									src="<c:url value="/resources/WebImages/badges.png"/>"
									alt="badges"> Badges</a></li>
							<li><a href="#" title="Certificate"><img
									src="<c:url value="/resources/WebImages/dashboard.png"/>"
									alt="certificate">&nbsp;Certificate</a></li>
							<li><a href="#" title="Idea"><img
									src="<c:url value="/resources/WebImages/Idea.png"/>" alt="idea">&nbsp;Idea
							</a></li>
							<li><a href="#" title="Notifications"><img
									src="<c:url value="/resources/WebImages/notification.png"/>"
									alt="noti"></a></li>
							<li style="padding-right: 30px;">&nbsp;</li>
							<li><a class="collapsed" data-toggle="collapse"
								data-target="#user-model"> <img
									src="<c:url value="/resources/WebImages/user.png"/>" alt="user"
									class="img-rounded" height="40px" width="45px" /></a></li>
							<div id="user-model" class="collapse">
								<div class="user-content modal-sm">
									<div class="user-header">
										<h4 class="user-title">Your Profile</h4>
									</div>
									<div class="user-body">
										<table>
											<tr>
												<th rowspan="3"><img src="" height=100px; width="70px;"
													style="margin-right: 20px"></th>
												<th>Name:</th>
												<td><strong>&nbsp;&nbsp;${Name}</strong></td>
											</tr>
											<tr>
												<th>Email:</th>
												<td><strong>&nbsp;&nbsp;${Email}</strong></td>
											</tr>
											<tr>
												<th>Role:</th>
												<td><strong>&nbsp; ${Role}</strong></td>
											</tr>
										</table>

									</div>
									<div class="user-footer" style="background-color: #f4f4f4;">
										<a href="logout" target="_blank"
											style="text-decoration: none;"> <b>Logout</b></a>
									</div>
								</div>
							</div>
						</ul>
					</div>
				</div>
	</nav>

	<div class="row" style="padding-top: 95px; padding-left: 20px;">
		<div class="col-md-4">
			<div class="panel">
				<div class="panel-heading" style="background-color: #8d9fc4;">
					<img
						src="<c:url value="/resources/WebImages/ico-badge-hover.png"/>">
					&nbsp;&nbsp;<span style="color: white; font-weight: bold;">BADGES
						&amp; POINTS</span>
				</div>

				<div class="panel-body">
					<div class="col-md-2">
						<img src="<c:url value="/resources/WebImages/user.png"/>"
							alt="user" class="img-rounded" height="40px" width="45px" />
					</div>

					<div class="col-md-10">

						<table>
							<tr>
								<th colspan="3"><strong><a href=" style="text-decoration: none">${Name}</a></strong></th>
								<th rowspan="4"><img
									src="<c:url value="/resources/WebImages/Badges_Point_img.png"/>"
									class="img-responsive" alt="Badges_Point" class="badges"
									height="111" width="150"
									style="position: absolute; top: -15px; right: -16px;"></th>

							</tr>
							<tr>
								<th><img
									src="<c:url value="/resources/WebImages/Diamond.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;</th>
								<th><img
									src="<c:url value="/resources/WebImages/Silver.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;</th>
								<th><img
									src="<c:url value="/resources/WebImages/Bronze.png"/>">&nbsp;&nbsp;&nbsp;&nbsp;</th>
							</tr>
							<tr>
								<td>${Gold}</td>
								<td>${Silver}</td>
								<td>${Bronze}</td>
							</tr>
							<tr>
								<td style="font-size: 250%; color: blue;" colspan="2"><strong> ${point}</strong></td>
								<td style="color: blue;">pts</td>
							</tr>


						</table>
					</div>
					<div style="padding-bottom: 50px"></div>

				</div>


			</div>
			<button type="button" class="btn btn-default"
				style="background-color: #505b72; float: right; color: white;">
				&nbsp;&nbsp;Redeem Points&nbsp;&nbsp;</button>
		</div>

		<div class="col-sm-8 col-md-8">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="panel">
							<div class="panel-heading" style="margin: -15px">
								<ul class="nav nav-tabs nav-justified" role="tablist"
									style="background-color: #8d9fc4">
									<li class="active"><a href='<c:url value="All" />'>All</a></li>
									<li><a href='<c:url value="Badges_Shared" />'>Badges
											Shared</a></li>
									<li><a href='<c:url value="Badges_Received" />'>Badges
											Received</a></li>
									<li><a href='<c:url value="Badges_History" />'>Badges
											History</a></li>
									<li><a href='<c:url value="Redeemed" />'>Redeemed</a></li>
								</ul>
							</div>
							<div class="panel-body">
								<table border="1" style="border-color: #CCCCCC" width=100%>
									<tr>
										<td><strong>No data found</strong></td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
