angular.module('diehardFundApp').factory 'OutcomeRecordsInterface', (BaseRecordsInterface, OutcomeModel) ->
  class OutcomeRecordsInterface extends BaseRecordsInterface
    model: OutcomeModel
