angular.module('diehardFundApp').factory 'RestfulClient', ($http, $upload) ->
  AngularRecordStore.RestfulClientFn($http, $upload)
