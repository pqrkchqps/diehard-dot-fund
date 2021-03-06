angular.module('diehardFundApp').factory 'InvitationRecordsInterface', (BaseRecordsInterface, InvitationModel) ->
  class InvitationRecordsInterface extends BaseRecordsInterface
    model: InvitationModel

    sendByEmail: (invitationForm) =>
      @remote.create _.merge(invitationForm.serialize(), { group_id: invitationForm.groupId })

    fetchPendingByGroup: (groupKey, options = {}) ->
      options['group_key'] = groupKey
      @remote.get('/pending', options)

    fetchShareableInvitationByGroupId: (groupId, options = {}) ->
      options['group_id'] = groupId
      @remote.get('/shareable', options)
