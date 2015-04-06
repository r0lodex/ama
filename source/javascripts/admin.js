angular.module('ama')
	// ROUTE CONFIGURATION
	.config(function($routeProvider) {
		$routeProvider
			.when('/users', {
				controller: 'userCTRL',
				templateUrl: 'views/users.ng'
			})
		;
	})

// == USER CONTROLLER
// -------------------------------
	.controller('userCTRL', function($rootScope, $scope, User) {
		$scope.users = User.query();

		// Field berdasarkan database model
		$scope.fields = ['username', 'email', 'phone', 'type']

		// Sort table
		$scope.sort = function(field) {
			$scope.sort.field = field;
			$scope.sort.order = !$scope.sort.order;
		};

		$scope.sort.field = 'name';
		$scope.sort.order = false;

		// View/Edit User
		$scope.showUser = function(object) {
			$rootScope.ModalForm('user', object.id);
		};
	})

	.controller('newUserCTRL', function($scope, User) {
		$scope.user = new User({
			username : '',
			name : '',
			email : '',
			phone : '',
			password : ''
		})

		$scope.addUser = function() {
			if ($scope.new_user_form.$invalid) {
				$scope.$broadcast('record:invalid');
			} else {
				$scope.user.$save();
				alert('User successfully created.');
				// Resorts to refreshing due to out of scope.
				window.location.reload();
			}
		}
	})

	.controller('viewUserCTRL', function($scope, User, modalData) {
		$scope.editing = true;
		$scope.user = modalData;

		$scope.addUser = function() {
			if ($scope.new_user_form.$invalid) {
				$scope.$broadcast('record:invalid');
			} else {
				$scope.user.$update();
				alert('User data successfully updated.');
				window.location.reload();
				// Resorts to refreshing due to out of scope.
			}
		}

		$scope.deleteUser = function() {
			var a = confirm('Are you sure you want to delete this student?');
			if (a) {
				$scope.user.$delete();
				window.location.reload();
			}
		}
	})

// <-- end user