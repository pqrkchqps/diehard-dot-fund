angular.module('diehard_fundApp').factory 'StanceChoiceRecordsInterface', (BaseRecordsInterface, StanceChoiceModel) ->
  class StanceChoiceRecordsInterface extends BaseRecordsInterface
    model: StanceChoiceModel
