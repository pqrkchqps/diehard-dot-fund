angular.module('diehard_fundApp').directive 'pollMeetingVotesPanelStance', (TranslationService) ->
  scope: {stance: '='}
  templateUrl: 'generated/components/poll/meeting/votes_panel_stance/poll_meeting_votes_panel_stance.html'
  controller: ($scope) ->
    TranslationService.listenForTranslations $scope
