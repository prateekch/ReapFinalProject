<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


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
<link rel="icon" href="<c:url value="/resources/WebImages/favicon_ttnd.ico"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />">
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
<div class="container">
    <div class="row">
        <div class="col-sm-12">
        <div class="col-sm-4"><a href='<c:url value="dashboard" />' title="Dashboard">
        <img src="<c:url value="/resources/WebImages/reap_icon.png" />" alt="REAP Icon" height="34px"></a></div>
        <div class="col-sm-8 hidden-xs"><img src="<c:url value="/resources/WebImages/Header_Img.png"/>" alt="Header Image"></div>
      </div>       		
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
            <div class="account-wall">
                  <form class="form-signin" action="register" method="POST">
                  <marquee><h3 style="color:#0000FF;text-align:center;font-family:Times,serif;">Registration for Reap Access</h3></marquee><br/>
                  <span><h5 style="color:red">All fields are mandatory.</h5></span>
                  	
                  	<span><b>Name:</b></span>
                  	<input type="text" class="form-control" name="Name" placeholder="Enter Your Name" required autofocus>
                    
                    <span><b>Email:</b></span>
                    <input type="email" autocomplete="off" name="userName" class="form-control" placeholder="Enter Email" required>
                    <p style="color:red">${msg}</p>
                    
                    <span><b>Password:</b></span>
                    <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
                    
                    <span><b>Role:</b></span>
                    <select class="form-control submit-form" name="role" required>
                    	<option value="">Select a Role</option>
       					 <option value="User">User</option>
       					 <option value="SuperVisor">SuperVisor</option>
      				     <option value="practice Head">Practice Head</option>
      				</select>
      				 
       <!--             	<span><b>Select Photo for profile:</b></span>
                    <input type="file" name="image" class="form-control" accept="image/*" required/>
        -->         
      				<br/>
                  	
                    
                    <button class="btn btn-lg btn-primary btn-block" type="Submit">
                        Register</button>
                   
                </form>
            </div>
        </div>
         <div class="col-sm-3"></div>
    </div>
</div>
</body>
</html>