angular.module('ama')

// == NAVIGATION CONTROLLER
// -------------------------------
	.controller('navCTRL', function($scope, $location) {
		$scope.isActive = function(route) {
	        return route === $location.path();
	    };
	})
// <-- end navigation

/**********************************************************/


// == UNIFORM CONTROLLER
// -------------------------------
	.controller('uniformCTRL', function($rootScope, $scope, Uniform, UniformRecord, UniformReport, Absent) {
		$scope.uniforms = Uniform.query();
		$scope.isAdmin = isAdmin;

		$scope.showUniform = function(uniform) {
			$rootScope.ModalForm('uniform', uniform.id);
		}

		$scope.recordfields = ['name', 'matrix'];
		$scope.reportfields = ['name', 'matrix', 'course', 'absent_credit', 'absent_count'];

		$scope.showAccKey = function(uniform) {
			$scope.ask = uniform.id;
		}

		$scope.createUniformRecord = function(uniform, ak) {
			delete $scope.report;

			$scope.uniformData = uniform;
			$scope.absents = Absent.query({ uniformId: uniform.id })

			$scope.date = new Date();
			$scope.record = UniformRecord.get({ id: uniform.id, accessKey: ak },
				function() {}, function(response) {
					if (response.status === 401 ) {
						alert('Invalid Access Key.');
						delete $scope.record;
					}
				})
			$scope.ask = '';
			$scope.accessKey = '';
		}

		$scope.uniformReport = function(uniform) {
			delete $scope.record;
			$scope.uniformData = uniform;
			$scope.report = UniformReport.get({ id: uniform.id});
		}

		$scope.updateAbsentlist = function(action, student, uniformid) {
			$scope.absent = new Absent({ id: student.id })
			if (action == 'add') {
				$scope.absent.$save();
			}
			if (action == 'remove') {
				$scope.absent.$delete({id: student.id});
			}
			$scope.absents = Absent.query({ uniformId: uniformid })
		}

		$scope.absentHistory = function(student) {
			console.log('test')
		}

		// $scope.$watch('absents');
	})

	.controller('newUniformCTRL', function($scope, modalData, Uniform) {

		$scope.uniform = new Uniform({
			name: '',
			credit: '',
			accessKey: ''
		})

		$scope.addUniform = function() {
			if ($scope.new_uniform_form.$invalid) {
				$scope.$broadcast('record:invalid');
			} else {
				$scope.uniform.$save();
				alert('Uniform data successfully created.');
				window.location.reload();
				// Resorts to refreshing due to out of scope.
			}
		}
	})

	.controller('viewUniformCTRL', function($scope, modalData, Uniform) {
		$scope.editing = true;
		$scope.uniform = modalData;

		$scope.addUniform = function() {
			if ($scope.new_uniform_form.$invalid) {
				$scope.$broadcast('record:invalid');
			} else {
				$scope.uniform.$update();
				alert('Uniform data successfully updated.');
				window.location.reload();
				// Resorts to refreshing due to out of scope.
			}
		}
		$scope.deleteUniform = function() {
			var a = confirm('Are you sure you want to delete this uniform?');
			if (a) {
				$scope.uniform.$delete();
				window.location.reload();
			}
		}
	})

	.controller('absentHistoryCTRL', function($scope, modalData) {
		$scope.absentData = modalData.absentData;
		$scope.student = modalData.student;
	})

// <-- end uniform

/**********************************************************/

// == STUDENT CONTROLLER
// -------------------------------
	.controller('studentCTRL', function($rootScope, $scope, $location, Student) {

		// Dapatkan senarai Student
		$scope.students = Student.query();

		// Field berdasarkan database model
		$scope.fields = ['name', 'matrix',  'course', 'uniform']

		// Sort table
		$scope.sort = function(field) {
			$scope.sort.field = field;
			$scope.sort.order = !$scope.sort.order;
		};

		$scope.sort.field = 'name';
		$scope.sort.order = false;

		// View/Edit Student
		$scope.showStudent = function(id) {
			$rootScope.ModalForm('student', id);
		};

	})

	.controller('newStudentCTRL', function($scope, Student, Uniform) {

		$scope.uniforms = Uniform.query();

		$scope.student = new Student({
			name : '',
			matrix : '',
			uniform : '1',
			course : ''
		})

		$scope.addStudent = function() {
			if ($scope.new_student_form.$invalid) {
				$scope.$broadcast('record:invalid');
			} else {
				$scope.student.$save();
				alert('Student successfully created.');
				// Resorts to refreshing due to out of scope.
				window.location.reload();
			}
		}
	})

	.controller('viewStudentCTRL', function($scope, Student, Uniform, modalData) {
		$scope.editing = true;
		$scope.uniforms = Uniform.query();
		$scope.student = modalData;

		$scope.addStudent = function() {
			if ($scope.new_student_form.$invalid) {
				$scope.$broadcast('record:invalid');
			} else {
				$scope.student.$update();
				alert('Student data successfully updated.');
				window.location.reload();
				// Resorts to refreshing due to out of scope.
			}
		}

		$scope.deleteStudent = function() {
			var a = confirm('Are you sure you want to delete this student?');
			if (a) {
				$scope.student.$delete();
				window.location.reload();
			}
		}
	})
// <-- end student


/**********************************************************/

