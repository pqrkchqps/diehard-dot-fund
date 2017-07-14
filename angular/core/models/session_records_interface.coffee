angular.module('diehard_fundApp').factory 'SessionRecordsInterface', (BaseRecordsInterface, SessionModel) ->
  class SessionRecordsInterface extends BaseRecordsInterface
    model: SessionModel
