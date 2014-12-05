var myApp = angular.module('secretSantaApp', []);

myApp.controller('SecretSantaCtrl', ['$scope', function($scope) {
	$scope.users = [];

	$scope.firstNamePlaceholder = 'First Name';
	$scope.lastNamePlaceholder = 'Last Name';
	$scope.emailPlaceholder = 'Email';
	
	$scope.registerUser = function() {
		$scope.users.push({firstName:$scope.user.firstName, lastName:$scope.user.lastName, email:$scope.user.email});
		
		//AddUser.save($scope.user)
		
		$scope.user.firstName = '';
		$scope.user.lastName = '';
		$scope.user.email = '';
	}
	
	/*
	UserFactory.get({}, function(userFactory) {
		//$scope.monicas.push({firstName:userFactory.firstName, lastName:userFactory.lastName, email:userFactory.email});
		$scope.restFirstName = userFactory.firstName;
	})
	*/
	
}]);