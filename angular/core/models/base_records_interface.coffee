angular.module('diehard_fundApp').factory 'BaseRecordsInterface', (RestfulClient, $q) ->
  AngularRecordStore.BaseRecordsInterfaceFn(RestfulClient, $q)
