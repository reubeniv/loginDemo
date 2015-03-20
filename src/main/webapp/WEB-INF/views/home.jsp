<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
</head>

<body id="loginApp">
<h1>
	${message}  
</h1>

<div>
	<form ng-submit="onLogin()" ng-controller="loginCtrl">
		<input type="text" ng-model="vm.username" name="username" placeholder="Username">
		<input type="password" ng-model="vm.password" name="password" placeholder="Password">
		<button type="submit">Log In</button>
		<a class = "new-user" href="#">New User?</a>
	</form>
</div>

<!-- Controller -->
<script>
	angular.module('loginApp', [])
		.controller('loginCtrl', function($scope, loginService){
		
			$scope.onLogin = function(){
				console.log( "LOGIN ATTEMPT: " + $scope.vm.username);
			
				if($scope.form.$invalid){
					return;
				}
			
				loginService.login($scope.vm.username, $scope.vm.password);
			};
		});
</script>

<!-- Service -->
<script>
	angular.module('frontendService', [])
		.service('userService', ['$http','$q', function($http, $q){
			return{
				getUserInfo: function(){
					var deffered = $q.defer();
					$http.get('/user')
                    .then(function (response) {
                        if (response.status == 200) {
                            deferred.resolve(response.data);
                        }
                        else {
                            deferred.reject('Error retrieving user info');
                        }
                });
 
                return deferred.promise;
			}
		}
		
	}]);
</script>

</body>

</html>
