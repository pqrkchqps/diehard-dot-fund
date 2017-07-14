angular.module('diehard_fundApp').factory 'VisitorRecordsInterface', (BaseRecordsInterface, VisitorModel) ->
  class VisitorRecordsInterface extends BaseRecordsInterface
    model: VisitorModel
