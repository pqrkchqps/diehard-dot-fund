angular.module('diehardFundApp').factory 'BaseRecordsInterface', (RestfulClient, $q) ->
  AngularRecordStore.BaseRecordsInterfaceFn(RestfulClient, $q)
