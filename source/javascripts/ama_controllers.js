angular.module('ama')

// App Controllers.

.controller('navCTRL', function($scope, $location) {
	$scope.isActive = function(route) {
        return route === $location.path();
    };
})

.controller('uniformCTRL', function($scope) {
	console.log('Uniform');
})

.controller('studentCTRL', function($scope, $location, Student, ModalService) {
	// Dapatkan senarai Student
	$scope.students = Student.query();

	// Field berdasarkan database model
	$scope.fields = ['name', 'ic', 'matrix', 'uniform', 'course']

	// Sort table
	$scope.sort = function(field) {
		$scope.sort.field = field;
		$scope.sort.order = !$scope.sort.order;
	};

	// Default value untuk field
	$scope.sort.field = 'name';
	$scope.sort.order = false;

	// View/Edit Student
	$scope.showStudent = function(id) {};

	$scope.newStudent = function() {
		ModalService.showModal({
			templateUrl: 'views/modals/student.modal',
			controller: "studentCTRL"
		}).then(function(modal) {
			modal.element.modal();
		})
	};

	$scope.deleteStudent = function(id) {}

	$scope.student = new Student({
		name 	: ['', 'text'],
		ic 		: ['', 'text'],
		matrix 	: ['', 'text'],
		uniform : ['', 'number'],
		course 	: ['', 'text']
	})

	$scope.save = function() {
		console.log('Test')
		if ($scope.newStudent.$invalid) {
			$scope.$broadcast('record:invalid');
		} else {
			$scope.student.$save();
		}
	}

})

.controller('newStudentCTRL', function($scope, $location, Student) {
	$scope.student = new Student({
		name 	: ['', 'text'],
		ic 		: ['', 'text'],
		matrix 	: ['', 'text'],
		uniform : ['', 'number'],
		course 	: ['', 'text']
	})

	$scope.save = function() {
		console.log('Test')
		if ($scope.newStudent.$invalid) {
			$scope.$broadcast('record:invalid');
		} else {
			$scope.student.$save();
		}
	}
})

.controller('userCTRL', function($scope) {
	console.log('Users');
})