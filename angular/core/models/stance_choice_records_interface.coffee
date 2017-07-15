angular.module('diehardFundApp').factory 'StanceChoiceRecordsInterface', (BaseRecordsInterface, StanceChoiceModel) ->
  class StanceChoiceRecordsInterface extends BaseRecordsInterface
    model: StanceChoiceModel
