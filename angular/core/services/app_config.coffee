angular.module('diehard_fundApp').factory 'AppConfig', ->
  configData = if window? and window.Diehard_Fund?
                 window.Diehard_Fund
               else
                 {bootData: {}, permittedParams: {}}

  configData.pluginConfig = (name) ->
    _.find configData.plugins.installed, (p) -> p.name == name
  configData.timeZone = moment.tz.guess()
  configData
