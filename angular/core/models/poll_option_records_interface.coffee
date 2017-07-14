angular.module('diehard_fundApp').factory 'PollOptionRecordsInterface', (BaseRecordsInterface, PollOptionModel) ->
  class PollOptionRecordsInterface extends BaseRecordsInterface
    model: PollOptionModel
