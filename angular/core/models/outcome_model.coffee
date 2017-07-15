angular.module('diehardFundApp').factory 'OutcomeModel', (DraftableModel, AppConfig, MentionLinkService) ->
  class OutcomeModel extends DraftableModel
    @singular: 'outcome'
    @plural: 'outcomes'
    @indices: ['pollId', 'authorId']
    @serializableAttributes: AppConfig.permittedParams.outcome
    @draftParent: 'poll'
    @draftPayloadAttributes: ['statement']

    defaultValues: ->
      statement: ''
      customFields: {}

    relationships: ->
      @belongsTo 'author', from: 'users'
      @belongsTo 'poll'

    group: ->
      @poll().group() if @poll()

    communitySize: ->
      @poll().communitySize()

    announcementSize: ->
      @communitySize()

    notifyAction: ->
      'publish'
