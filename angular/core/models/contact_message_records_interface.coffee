angular.module('diehard_fundApp').factory 'ContactMessageRecordsInterface', (BaseRecordsInterface, ContactMessageModel) ->
  class ContactMessageRecordsInterface extends BaseRecordsInterface
    model: ContactMessageModel
