angular.module('diehardFundApp').factory 'AppConfig', ->
  configData = if window? and window.DiehardFund?
                 window.DiehardFund
               else
                 {bootData: {}, permittedParams: {}}

  configData.pluginConfig = (name) ->
    _.find configData.plugins.installed, (p) -> p.name == name
  configData.timeZone = moment.tz.guess()
  configData
