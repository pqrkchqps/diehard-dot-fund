angular.module('diehard_fundApp').factory 'OutcomeRecordsInterface', (BaseRecordsInterface, OutcomeModel) ->
  class OutcomeRecordsInterface extends BaseRecordsInterface
    model: OutcomeModel
