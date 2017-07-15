angular.module('diehardFundApp').factory 'InvitationFormRecordsInterface', (BaseRecordsInterface, InvitationFormModel) ->
  class InvitationFormRecordsInterface extends BaseRecordsInterface
    model: InvitationFormModel
