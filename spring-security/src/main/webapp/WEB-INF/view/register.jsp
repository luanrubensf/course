<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Register Page</title>
<meta charset="UTF-8">

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/latest/css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<spring:url value="/css/styles.css"/>" />

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="//netdna.bootstrapcdn.com/twitter-bootstrap/latest/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<spring:url value="/js/internal/ajaxHandler.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/js/internal/common.js"/>"></script>

<%@include file="includes/common.jsp"%>
</head>
<body>
  
  <div class="navbar">
    <div class="navbar-inner">
      <div class="container">
        <div class="nav-collapse">
          <ul class="nav pull-left">
            <li><a href="<spring:url value="/"/>"><strong><spring:message code="home.goto" /></strong></a></li>
          </ul>
          <ul class="nav pull-right">
            <li class="active"><a href="<spring:url value="/login.html"/>"><strong><spring:message code="ui.login" /></strong></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <form id="registerForm" name="registerForm" action="" method="post" class="form-horizontal">
      <fieldset>
        <legend>Register</legend>

        <div class="control-group">
          <label class="control-label" for="registration_email"><spring:message code="account.email" /></label>
          <div class="controls">
            <input id="registration_email" type="email" name="email" class="required email" />
          </div>
        </div>

        <div class="control-group">
          <label class="control-label" for="registration_name"><spring:message code="account.name" /></label>
          <div class="controls">
            <input id="registration_name" type="name" name="name" class="required" />
          </div>
        </div>

        <div class="control-group">
          <label class="control-label" for="registration_password"><spring:message code="account.password" /></label>
          <div class="controls">
            <input id="registration_password" type="password" name="password" class="required" />
          </div>
        </div>

        <div class="control-group">
          <label class="control-label" for="registration_password2"><spring:message code="account.password.confirm" /></label>
          <div class="controls">
            <input id="registration_password2" type="password" name="registration_password2" class="required" />
          </div>
        </div>

        <div class="form-actions">
          <input id="registration_register" type="submit" class="btn btn-primary" value="<spring:message code="account.register"/>" />
        </div>
      </fieldset>
    </form>

  </div>
</body>
</html>