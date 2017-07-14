angular.module('diehard_fundApp').factory 'RestfulClient', ($http, $upload) ->
  AngularRecordStore.RestfulClientFn($http, $upload)
