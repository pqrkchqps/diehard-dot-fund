angular.module('diehard_fundApp').config ($translateProvider) ->
  $translateProvider.useUrlLoader("/api/v1/translations")
                    .useSanitizeValueStrategy('escapeParameters')
                    .preferredLanguage(window.DiehardFund.currentUserLocale)
