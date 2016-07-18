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
							<li class="active"><a href='<c:url value="dashboard" />'
								title="Dashboard"><img
									src="<c:url value="/resources/WebImages/dashboard.png"/>"
									alt="dashboard"> &nbsp;Dashboard</a></li>
							<li><a href='<c:url value="badges" />' title="Badges"><img
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
												<td><strong>&nbsp;${Role}</strong></td>
											</tr>
										</table>

									</div>
									<div class="user-footer" style="background-color: #f4f4f4;">

										<a href="logout"
											style="text-decoration: none;"> <b>Logout</b></a>
									</div>
								</div>
							</div>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</nav>

	<div class="row" style="padding-top: 95px; padding-left: 20px;">
		<div class="col-md-9">

			<div class="panel">
				<div class="panel-heading" style="background-color: #ea8744;">
					<img
						src="<c:url value="/resources/WebImages/ico-badge-hover.png"/>">
					&nbsp;&nbsp;<span style="color: white; font-weight: bold;">RECOGNIZE
						KARMA</span>
				</div>
				<form action="recognize" method="POST">

					<div class="panel-body">
						<div class="col-md-6">
							<div class="input-group">
								<span class="input-group-addon"><img
									src="<c:url value="/resources/WebImages/select-newer.png"/>"></span>
								<input type="text" class="form-control"
									placeholder="Enter Newer Email" name="receiver">
							</div>
						</div>

						<div class="col-md-3">
							<select class="form-control" required="required" name="badge"
								id="karma">
								<option value="">Select a Badge</option>
								<option value="Gold">Gold</option>
								<option value="Silver">Silver</option>
								<option value="Bronze">Bronze</option>
							</select>
						</div>


						<div class="col-md-3">
							<select class="form-control" required="required" name="karma"
								id="karma">
								<option value="">Select a Karma</option>
								<option value="Extra Miler">Extra Miler</option>
								<option value="Knowledge Sharing">Knowledge Sharing</option>
								<option value="Mentorship">Mentorship</option>
								<option value="Pat on the back">Pat on the back</option>
								<option value="Customer Delight">Customer Delight</option>
							</select>
						</div>
						<br /> <br />

						<div class="col-md-12">
							<label>Reason</label>:
							<div>
								<textarea rows="7" cols="131" name="reason" required
									style="resize: none; width: 100%;"
									placeholder="Please select a karma first....."></textarea>

							</div>
						</div>
						<div class="col-md-12" style="padding-top: 20px;">

							<h5 style="color: red">
								<strong>${invalidreceiver}${Nobadge} </strong>
							</h5>
							<input type="submit" class="btn btn-default" value="Recognize"
								style="background-color: #505b72; float: right; color: white;">

						</div>


					</div>
				</form>

			</div>


			<div class="row">
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-heading"
							style="background-color: #8d9fc4; padding: 4px;">
							<div class="row">
								<div class="col-md-1">
									<img src="<c:url value="/resources/WebImages/wall_fame.png"/>"
										alt="wall_pic" class="img-responsive"
										style="margin-left: 0.5cm;">
								</div>
								<div class="col-md-2">
									<span style="color: white; font-weight: bold; font-size: 15px;">WALL
										OF FAME</span>
								</div>

								<div class="col-md-2">

									<input type="text" class="search" placeholder="Search"
										name="find" id="find">
								</div>


								<div class="col-lg-2">
									<span class="dd"> <select name="serviceLine"
										class="submitForm" id="serviceLine"
										style="padding: 5px; border-radius: 4px;">
											<option>Service Lines</option> -
											<option>Analytics</option>
											<option>Analytics-SEA</option>
											<option>Digital</option>
											<option>Technology</option>
											<option>TTN Overheads</option>
											<option>TTND-Intern</option>
											<option>TTND-SEA</option>
											<option>TTNV</option>
											<option>Video Solutions</option>
									</select>
									</span>
								</div>


								<div class="col-md-3">
									<span class="dd"> <select name="pracrtices"
										class="submitForm" id="practices"
										style="padding: 5px; border-radius: 4px">
											<option value="">Practices</option>
											<option value="1">Admin</option>
											<option value="2">AMC</option>
											<option value="3">Analytics</option>
											<option value="4">Analytics-SEA</option>
											<option value="5">BigData</option>
											<option value="6">BlogMint</option>
											<option value="7">Business Development</option>
											<option value="8">Creative</option>
											<option value="9">Design</option>
											<option value="10">DevOps</option>
											<option value="11">DM India CORPORATE</option>
											<option value="12">Drupal</option>
											<option value="13">Feen</option>
											<option value="14">Finance</option>
											<option value="15">HR</option>
											<option value="16">Intern</option>
											<option value="17">IT</option>
											<option value="18">JVM</option>
											<option value="19">Management</option>
											<option value="20">MARTECH</option>
											<option value="21">Mean</option>
											<option value="22">Media Planning &amp; Buying</option>
											<option value="23">Mobility</option>
											<option value="24">Sales &amp; Marketing</option>
											<option value="25">Shared Services-SEA</option>
											<option value="26">Social media</option>
											<option value="27">Social Media Marketing</option>
											<option value="28">Social Media-SEA</option>
											<option value="29">Strategy</option>
											<option value="30">Technology Corporate</option>
											<option value="31">Testing</option>
											<option value="32">ThoughtBuzz India</option>
											<option value="33">TTNVManagement</option>
											<option value="34">Video Corporate</option>
											<option value="35">Video Managed Services</option>
											<option value="36">Video Ready</option>
									</select>
									</span>
								</div>

								<div class="col-md-2">
									<i class="fa fa-calendar fa-2x" id="dateRange"
										data-onchange="filterUserVote"></i> <input type="hidden"
										name="startDate" value="" id="startDate" /> <input
										type="hidden" name="endDate" value="" id="endDate" />&nbsp;&nbsp;&nbsp;
									<a href="#"><i class="fa fa-download fa-2x"
										style="color: Blue;"></i></a>
								</div>

								<script type="text/javascript">
									$(document)
											.ready(
													function() {
														$('#dateRange')
																.daterangepicker(
																		{
																			ranges : {
																				'Today' : [
																						moment(),
																						moment() ],
																				'Yesterday' : [
																						moment()
																								.subtract(
																										1,
																										'days'),
																						moment()
																								.subtract(
																										1,
																										'days') ],
																				'Last 7 Days' : [
																						moment()
																								.subtract(
																										6,
																										'days'),
																						moment() ],
																				'Last 30 Days' : [
																						moment()
																								.subtract(
																										29,
																										'days'),
																						moment() ],
																				'This Month' : [
																						moment()
																								.startOf(
																										'month'),
																						moment()
																								.endOf(
																										'month') ],
																				'Last Month' : [
																						moment()
																								.subtract(
																										1,
																										'month')
																								.startOf(
																										'month'),
																						moment()
																								.subtract(
																										1,
																										'month')
																								.endOf(
																										'month') ]
																			}
																		},
																		function(
																				start,
																				end,
																				label) {
																			$(
																					"#startDate")
																					.val(
																							start
																									.format('YYYY-MM-DD'));
																			$(
																					"#endDate")
																					.val(
																							end
																									.format('YYYY-MM-DD'));
																		});

													});
								</script>

							</div>
						</div>


						<div class="panel-body" 
							style="max-height: 10; overflow-y: scroll; overflow:scroll;height:400px;">

							<table class="table table-striped">
								<c:if test="${not empty karma}">


									<c:forEach var="listValue" items="${karma}">

										<tr>
											<td><img
												src="<c:url value="/resources/WebImages/user.png"/>"
												alt="user" class="img-rounded" height="40px" width="45px" /></td>

											<td><b>${listValue.receiver}</b> has received <b>${listValue.badge}</b>
												badge from <b> ${listValue.giver}</b> for <b>karma</b> :
												${listValue.karma} <br /> <b>Reason</b> :
												${listValue.reason} <br /> <b>At</b> : ${listValue.date}</td>
										</tr>
									</c:forEach>


								</c:if>
							</table>
						</div>

					</div>



				</div>
			</div>

		</div>


		<div class="col-md-3" style="padding-right: 35px;">
			<div class="panel">
				<div class="panel-heading" style="background-color: #8d9fc4">
					<img
						src="<c:url value="/resources/WebImages/ico-badge-hover.png"/>">
					&nbsp;&nbsp;<span style="color: white; font-weight: bold;">MY
						BADGES</span>
				</div>
				<div class="panel-body">
					<div class="col-md-3">
						<img src="<c:url value="/resources/WebImages/user.png"/>"
							alt="user" class="img-rounded" height="40px" width="45px" />
					</div>
					<div class="col-md-9">
						<strong>${Name}</strong>
						<table style="width: 100%;">
							<tr>
								<th><img
									src="<c:url value="/resources/WebImages/Diamond.png"/>"></th>
								<th><img
									src="<c:url value="/resources/WebImages/Silver.png"/>"></th>
								<th><img
									src="<c:url value="/resources/WebImages/Bronze.png"/>"></th>
							</tr>
							<tr>
								<td>${Gold}</td>
								<td>${Silver}</td>
								<td>${Bronze}</td>
							</tr>
						</table>
						<div style="padding-bottom: 50px"></div>
					</div>
				</div>
			</div>


			<div class="panel">

				<ul class="nav nav-tabs nav-justified"
					style="background-color: #d9d9d9">
					<li class="active"><a href="#Newer" data-toggle="tab">Newer
							Board</a></li>
					<li><a href="#idea" data-toggle="tab">Idea</a></li>
				</ul>
				<div class="panel-body">
					<div class="tab-content">
						<div id="Newer" class="tab-pane fade in active">
							<%-- <img src= "<c:url value="/resources/WebImages/Newer_Board.png"/>" class="img-responsive"> --%>

							<table style="width: 100%;">
								<tr>
									<th rowspan="3"><img
										src="<c:url value="/resources/WebImages/user.png"/>"
										alt="user" class="img-rounded" height="50px" width="50px" /></th>
									<th colspan="3"></th>
									<th>&nbsp;</th>
								</tr>
								<tr>

									<th><img
										src="<c:url value="/resources/WebImages/Diamond.png"/>"></th>
									<th><img
										src="<c:url value="/resources/WebImages/Silver.png"/>"></th>
									<th><img
										src="<c:url value="/resources/WebImages/Bronze.png"/>"></th>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td colspan="3">&nbsp;</td>
								</tr>
								<tr>
									<th rowspan="3"><img
										src="<c:url value="/resources/WebImages/user.png"/>"
										alt="user" class="img-rounded" height="50px" width="50px" /></th>
									<th colspan="3"></th>
									<th>&nbsp;</th>
								</tr>
								<tr>

									<th><img
										src="<c:url value="/resources/WebImages/Diamond.png"/>"></th>
									<th><img
										src="<c:url value="/resources/WebImages/Silver.png"/>"></th>
									<th><img
										src="<c:url value="/resources/WebImages/Bronze.png"/>"></th>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>

								<tr>
									<td colspan="3">&nbsp;</td>
								</tr>
								<tr>
									<th rowspan="3"><img
										src="<c:url value="/resources/WebImages/user.png"/>"
										alt="user" class="img-rounded" height="50px" width="50px" /></th>
									<th colspan="3"></th>
									<th>&nbsp;</th>
								</tr>
								<tr>

									<th><img
										src="<c:url value="/resources/WebImages/Diamond.png"/>"></th>
									<th><img
										src="<c:url value="/resources/WebImages/Silver.png"/>"></th>
									<th><img
										src="<c:url value="/resources/WebImages/Bronze.png"/>"></th>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</div>
						<div id="idea" class="tab-pane fade">
							<img src="<c:url value="/resources/WebImages/All_Idea.png"/>"
								class="img-responsive">
						</div>

					</div>
				</div>
				<div class="col-md-9"></div>
			</div>
		</div>
	</div>
</body>
</html>