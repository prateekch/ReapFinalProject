<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Official Website of REAP... </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <link rel="icon" href="<c:url value="/resources/WebImages/favicon_ttnd.ico"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css "/>">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
        <div class="col-sm-4"><a href='<c:url value="dashboard" />' title="Dashboard">
        <img src="<c:url value="/resources/WebImages/reap_icon.png" />" alt="REAP Icon" height="34px"></a></div>
        <div class="col-sm-8 hidden-xs"><img src="<c:url value="/resources/WebImages/Header_Img.png"/>" alt="Header Image"></div>
      </div>  
      <div class="row" style="padding-top:120px;">
        <div class="col-sm-3"></div>	
        <div class="col-sm-6">
         <div style="text-align="center;"> <a href='<c:url value="register" />' class="text-center new-account" style="text-decoration:none;">
           <img src="<c:url value="/resources/WebImages/Newsignup.png"/>" alt="New Registration" width="320px" height="50px"></a></div>
           <div class="account-wall">
           
                 <form class="form-signin" action="login" method="POST">
                   <input type="text" class="form-control" placeholder="Email" name="userName" required autofocus><br/>
                   <input type="password" class="form-control" placeholder="Password" name="password" required><br/>
                    <h5 style="color:red">${msg}</h5>
                   <button class="btn btn-lg btn-primary btn-block" type="submit" value="login">
                       Sign in</button>
               </form>
           </div>
       </div>
       <div class="col-sm-3">
       
       </div>
       </div>
   </div>
      <%-- <div class="col-sm-3"> </div>  		
         <div class="col-sm-6">
            <div class="account-wall">
            ${msg}
                  <form class="form-signin" action="login" method="POST">
                    <input type="text" class="form-control" placeholder="Email" name="userName" required autofocus>
                    <input type="password" class="form-control" placeholder="Password" name="password" required>
                    <button class="btn btn-lg btn-primary btn-block" type="submit" value="login">
                        Sign in</button>
                </form>
            </div>
            <a href='<c:url value="register" />' class="text-center new-account">Create an account </a>
        </div>
    </div> --%>
</div>
</body>
</html>