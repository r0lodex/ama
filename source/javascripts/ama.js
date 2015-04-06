var ama = angular.module('ama',['ngRoute', 'ngResource', 'angularModalService', 'ngMessages', 'angular-loading-bar', 'ngAnimate'])
// MODULES :                         ^           ^                  ^                  ^                  ^                 ^
// Routing Service ------------------^           ^                  ^                  ^                  ^                 ^
// Data Resource Service ------------------------^                  ^                  ^                  ^                 ^
// Pop-up Modal Service --------------------------------------------^                  ^                  ^                 ^
// Broadcast Message Service ----------------------------------------------------------^                  ^                 ^
// Loading Bar Service -----------------------------------------------------------------------------------^                 ^
// Angular Animation Service -----------------------------------------------------------------------------------------------^

// INITIALIZATION
	.run(function($rootScope, ModalService, Student, Uniform, User, Absent) {

		console.log('Welcome! \nCAS Web Application initialized.');

		$rootScope.ModalForm = function(type, data) {

			var controller = '', modalData;

			switch(type) {
				case 'user':
					controller = (data) ? 'viewUserCTRL':'newUserCTRL';
					modalData = (data) ? User.get({ id:data }) : false;
				break;
				case 'student':
					controller = (data) ? 'viewStudentCTRL':'newStudentCTRL';
					modalData = (data) ? Student.get({ id:data }) : false;
				break;
				case 'uniform':
					controller = (data) ? 'viewUniformCTRL':'newUniformCTRL';
					modalData = (data) ? Uniform.get({ id:data }) : false;
				break;
				case 'absentHistory':
					controller = 'absentHistoryCTRL';
					modalData = { absentData: Absent.query({ studentId: data.student.id }), student: data }
				break;
			}

			ModalService.showModal({
				templateUrl: 'views/modals/'+type+'.modal',
				controller: controller,
				inputs: { modalData: modalData }
			}).then(function(modal) {
				modal.element.modal();
			})
		}
	})

// ROUTE CONFIGURATION
	.config(function($routeProvider) {
		$routeProvider
			.when('/uniforms', {
				controller: 'uniformCTRL',
				templateUrl: 'views/uniforms.ng'
			})

			.when('/students', {
				controller: 'studentCTRL',
				templateUrl: 'views/students.ng'
			})

			.otherwise({
				redirectTo: '/uniforms'
			});
		;
	})

// DIRECTIVES
	.value('FieldTypes', {
		text: ['Text', 'should be text.'],
		number: ['Number', 'should be a number.']
	})
	.directive('formField', function($timeout, FieldTypes) {
		return {
			restrict: 'EA',
			templateUrl: 'views/form-field.ng',
			replace: true,
			scope: {
				record: '=',
				field: '@',
				live: '@',
				required: '@'
			},
			link: function($scope, element, attr) {
				$scope.$on('record:invalid', function() {
					$scope[$scope.field].$setDirty();
				})

				$scope.types = FieldTypes;

				$scope.blurUpdate = function() {
					if($scope.live !== 'false') {
						$scope.record.$update(function(updatedRecord) {
							$scope.record = updatedRecord;
						})
					}
				};

				var saveTimeout;
				$scope.update = function() {
					$timeout.cancel(saveTimeout);
					saveTimeout = $timeout($scope.blurUpdate, 100);
				}
			}
		}
	})

// DATA FACTORIES
	.factory('Student', function($resource) {
		return $resource('../backend/router.php/student/:id', { id: '@id'}, {
			update: { method: 'PUT' }
		})
	})

	.factory('Uniform', function($resource) {
		return $resource('../backend/router.php/uniform/:id', { id: '@id'}, {
			update: { method: 'PUT' }
		})
	})

	.factory('UniformReport', function($resource) {
		return $resource('../backend/router.php/uniform/:id/report', { id: '@id'}, {
			get: { isArray: true },
			update: { method: 'PUT' }
		})
	})

	.factory('UniformRecord', function($resource) {
		return $resource('../backend/router.php/uniform/:id/record?accessKey=:accessKey', { id: '@id' }, {
			update: { method: 'PUT' }
		})
	})

	.factory('Absent', function($resource) {
		return $resource('../backend/router.php/absent/:id', { id: '@id'}, {
			get: { isArray: true },
			update: { method: 'PUT' }
		})
	})

	.factory('User', function($resource) {
		return $resource('../backend/router.php/user/:id', { id: '@id'}, {
			update: { method: 'PUT' }
		})
	})

// FILTERS
	.filter('capitalize', function() {
    	return function(input, all) {
      		return (!!input) ? input.replace(/([^\W_]+[^\s-]*) */g,
      			function(txt){
      				return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
      			})
      		: '';
    	}
  	})
;