<%--
  Created by IntelliJ IDEA.
  User: anand38
  Date: 7/5/17
  Time: 5:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>

  <!-- CSS -->
    <link href="assets/css/sweetalert2.min.css" rel="stylesheet">

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/css/form-elements.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <script src="assets/js/sweetalert2.min.js"></script>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Favicon and touch icons -->
  <link rel="shortcut icon" href="assets/ico/favicon.png">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
<style>

    .sa-button-container {
        -webkit-order: 2;
        order: 2;

    }
    .sa-button-container{
        -webkit-order: 1;
        order: 1;

    }
</style>
</head>

<body>

<!-- Top content -->
<div class="top-content">

  <div class="inner-bg">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-sm-offset-3 form-box">
          <div class="form-top">
            <div class="form-top-left">
              <h3>Login to portal</h3>
              <p>Enter your credentials to log on:</p>
            </div>
            <div class="form-top-right">
              <i class="fa fa-key"></i>
            </div>
          </div>
          <div class="form-bottom">
            <form role="form" action="<%= request.getContextPath()%>/AccountController" method="post" class="login-form">
                <input type="hidden" name="action" value="fromlogin">
                <div class="form-group">
                <label class="sr-only" for="username">Username</label>
                <input type="email" name="email" placeholder="Email..." class="form-username form-control" id="username" required>
              </div>
              <div class="form-group">
                <label class="sr-only" for="password">Password</label>
                <input type="password" name="password" placeholder="Password..." class="form-password form-control" id="password" required>
              </div>
                <div class="checkbox">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="remember">Remember Me
                </div>
              <div class="form-group">
                  <input type="radio" name="loginas" value="HR" required>&nbsp;&nbsp;HR &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="loginas" value="Candidate" required>&nbsp;&nbsp;Candidate
              </div>
              <button type="submit" class="btn">Sign in!</button>
            </form><br>
            <a href="#">Forgot Password?</a><br>
            <a href="#" id="chooseforRegister">Don't have an account? Register here</a>
          </div>
        </div>
      </div>

    </div>
  </div>

</div>


<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="assets/js/placeholder.js"></script>
<![endif]-->
<script>
 $('#chooseforRegister').click(function () {
     swal({
         title: '',
         text: "Select the one you are",
         type: 'question',
         showCancelButton: true,
         confirmButtonColor: '#3085d6',
         cancelButtonColor: '#73D776',
         confirmButtonText: 'HR Register',
         cancelButtonText: 'Candidate Register',
         confirmButtonClass: 'btn btn-success',
         cancelButtonClass: 'btn btn-danger',
         buttonsStyling: true
     }).then(function () {
      window.location.href="Controller?action=gotohrregister";
     }, function (dismiss) {
         // dismiss can be 'cancel', 'overlay',
         // 'close', and 'timer'
         if (dismiss === 'cancel') {
             window.location.href="Controller?action=gotocandidateregister";
         }
     })
 });
</script>
</body>

</html>