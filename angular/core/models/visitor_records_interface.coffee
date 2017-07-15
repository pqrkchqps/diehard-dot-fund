angular.module('diehardFundApp').factory 'VisitorRecordsInterface', (BaseRecordsInterface, VisitorModel) ->
  class VisitorRecordsInterface extends BaseRecordsInterface
    model: VisitorModel
