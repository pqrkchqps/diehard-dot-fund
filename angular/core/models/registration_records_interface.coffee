angular.module('diehard_fundApp').factory 'RegistrationRecordsInterface', (BaseRecordsInterface, RegistrationModel) ->
  class RegistrationRecordsInterface extends BaseRecordsInterface
    model: RegistrationModel
