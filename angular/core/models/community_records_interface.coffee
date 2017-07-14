angular.module('diehard_fundApp').factory 'CommunityRecordsInterface', (BaseRecordsInterface, CommunityModel) ->
  class CommunityRecordsInterface extends BaseRecordsInterface
    model: CommunityModel
