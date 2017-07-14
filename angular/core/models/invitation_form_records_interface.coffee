angular.module('diehard_fundApp').factory 'InvitationFormRecordsInterface', (BaseRecordsInterface, InvitationFormModel) ->
  class InvitationFormRecordsInterface extends BaseRecordsInterface
    model: InvitationFormModel
