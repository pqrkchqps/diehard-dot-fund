angular.module('diehardFundApp').factory 'RegistrationRecordsInterface', (BaseRecordsInterface, RegistrationModel) ->
  class RegistrationRecordsInterface extends BaseRecordsInterface
    model: RegistrationModel
