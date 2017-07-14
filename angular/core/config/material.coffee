angular.module('diehard_fundApp').config ($mdThemingProvider) ->
  $mdThemingProvider.theme('default')
    .primaryPalette('orange', {'default': '400'})
    .accentPalette('cyan', {default: '500'});
