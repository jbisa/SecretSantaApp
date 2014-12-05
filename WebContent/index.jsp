<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="javascript/lib/angularjs/angular.min.js"></script>
	<script type="text/javascript" src="javascript/secretSantaApp.js"></script>

	<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.css">
	<link rel="stylesheet" href="css/secretSantaApp.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<title>Secret Monica App</title>
</head>
<body ng-app="secretSantaApp">
	<div ng-controller="SecretSantaCtrl">
		<div class="container">
		<h1>Secret Monica App</h1>
		<p>Please enter your first and last name, as well as your email. Once all Monicas have registered, 
		you will receive an email with the person you need to buy a gift for!</p>
		
		<form class="form-horizontal form-padding">
			<input class="input-secret-santa" type="text" ng-model="user.firstName" ng-minlength="3" ng-maxlength="10" placeholder="{{firstNamePlaceholder}}">
			<input class="input-secret-santa" type="text" ng-model="user.lastName" ng-minlength="3" ng-maxlength="10" placeholder="{{lastNamePlaceholder}}">
			<input class="input-secret-santa" type="text" ng-model="user.email" placeholder="{{emailPlaceholder}}">
			<button class="btn btn-default" ng-click="registerUser()">
				<span class="glyphicon glyphicon-user"></span>
				Register Monica
			</button>
		</form>
		
		<div class="div-secret-santa">Monicas that are registered so far...</div>
		<div class="div-secret-santa" ng-repeat="user in users">
			{{[$index + 1]}} {{user.firstName}} {{user.lastName}}: {{user.email}}
		</div>
		<pre>{{users|json}}</pre>
		
		<form action="MyServlet">
			<input type="submit" value="send"/>
		</form>
		
		<div id="footer"></div>
		</div>
	</div>
</body>
</html>