angular.module('diehardFundApp').directive 'validationErrors', ->
  scope: {subject: '=', field: '@'}
  restrict: 'E'
  templateUrl: 'generated/components/validation_errors/validation_errors.html'
  replace: true
