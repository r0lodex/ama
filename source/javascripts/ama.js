var ama = angular.module('ama',['ngRoute', 'ngResource', 'angularModalService', 'ngMessages'])
// MODULES :                         ^           ^                  ^
// Routing Service ------------------^           ^                  ^
// Data Resource Service ------------------------^                  ^
// Pop-up Modal Service --------------------------------------------^

// INITIALIZATION
	.run(function($rootScope) {
		console.log('Welcome! \nAMA Web Application initialized.');
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
			'update': { method: 'PUT' }
		})
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