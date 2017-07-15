angular.module('diehardFundApp').factory 'PollOptionRecordsInterface', (BaseRecordsInterface, PollOptionModel) ->
  class PollOptionRecordsInterface extends BaseRecordsInterface
    model: PollOptionModel
