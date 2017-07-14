angular.module('diehard_fundApp').factory 'UserHelpService', ($sce, Session) ->
  new class UserHelpService

    helpLocale: ->
      switch Session.user().locale
        when 'es', 'an', 'ca', 'gl' then 'es'
        when 'zh-TW'                then 'zh'
        when 'ar'                   then 'ar'
        when 'fr'                   then 'fr'
        else 'en'

    helpLink: ->
      "https://diehard_fund.gitbooks.io/manual/content/#{@helpLocale()}/index.html"

    helpVideo: ->
      switch Session.user().locale
        when 'es', 'an', 'ca', 'gl' then "https://www.youtube.com/embed/BT9f0Nj0zB8"
        else "https://www.youtube.com/embed/KS-_g437VD4"

    helpVideoUrl: ->
      $sce.trustAsResourceUrl(@helpVideo())

    tenTipsArticleLink: ->
      switch Session.user().locale
        when 'es', 'an', 'ca', 'gl' then "http://blog.diehard.fund/2015/08/17/10-consejos-para-tomar-decisiones-con-diehard_fund/"
        when 'fr'                   then "http://blog.diehard.fund/2015/08/25/10-conseils-pour-prendre-de-grandes-decisions-grace-a-diehard_fund/"
        else "https://blog.diehard.fund/2015/09/10/10-tips-for-making-great-decisions-with-diehard_fund/"

    nineWaysArticleLink: ->
      switch Session.user().locale
        when 'es', 'an', 'ca', 'gl' then "http://blog.diehard.fund/2015/08/17/9-formas-de-utilizar-propuestas-en-diehard_fund-para-convertir-conversaciones-en-accion/"
        when 'fr'                   then "https:////blog.diehard.fund/2015/08/25/9-manieres-dutiliser-diehard_fund-pour-transformer-une-conversation-en-actes/"
        else "https://blog.diehard.fund/2015/09/18/9-ways-to-use-a-diehard_fund-proposal-to-turn-a-conversation-into-action/"
