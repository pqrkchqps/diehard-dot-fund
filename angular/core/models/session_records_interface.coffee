angular.module('diehardFundApp').factory 'SessionRecordsInterface', (BaseRecordsInterface, SessionModel) ->
  class SessionRecordsInterface extends BaseRecordsInterface
    model: SessionModel
