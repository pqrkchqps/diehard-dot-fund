angular.module('diehardFundApp').directive 'pollCommonSummaryPanel', (TranslationService) ->
  scope: {poll: '='}
  templateUrl: 'generated/components/poll/common/summary_panel/poll_common_summary_panel.html'
  controller: ($scope) ->
    TranslationService.listenForTranslations($scope)
