var ama = angular.module('ama',['ngRoute', 'ngResource', 'angularModalService', 'ngMessages'])
// MODULES :                         ^           ^                  ^                  ^
// Routing Service ------------------^           ^                  ^                  ^
// Data Resource Service ------------------------^                  ^                  ^
// Pop-up Modal Service --------------------------------------------^                  ^
// Broadcast Message Service ----------------------------------------------------------^

// INITIALIZATION
	.run(function($rootScope, ModalService, Student, Uniform) {

		console.log('Welcome! \nCAS Web Application initialized.');

		$rootScope.ModalForm = function(type, id) {

			var controller = '', modalData;

			switch(type) {
				case 'student':
					controller = (id) ? 'viewStudentCTRL':'newStudentCTRL';
					modalData = (id) ? Student.get({ id:id }) : false;
				break;
				case 'uniform':
					controller = (id) ? 'viewUniformCTRL':'newUniformCTRL';
					modalData = (id) ? Uniform.get({ id:id }) : false;
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

			.when('/users', {
				controller: 'userCTRL',
				templateUrl: 'views/users.ng'
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
			get: { isArray: true },
			update: { method: 'PUT' }
		})
	})

	.factory('Absent', function($resource) {
		return $resource('../backend/router.php/absent')
	})

// FILTERS
	.filter('capitalize', function() {
		// Believe it or not, Angular doesn't have this filter built-in!
    	return function(input, all) {
      		return (!!input) ? input.replace(/([^\W_]+[^\s-]*) */g,
      			function(txt){
      				return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
      			})
      		: '';
    	}
  	})
;