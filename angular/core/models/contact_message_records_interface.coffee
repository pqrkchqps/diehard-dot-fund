angular.module('diehardFundApp').factory 'ContactMessageRecordsInterface', (BaseRecordsInterface, ContactMessageModel) ->
  class ContactMessageRecordsInterface extends BaseRecordsInterface
    model: ContactMessageModel
