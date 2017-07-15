angular.module('diehardFundApp').factory 'CommunityRecordsInterface', (BaseRecordsInterface, CommunityModel) ->
  class CommunityRecordsInterface extends BaseRecordsInterface
    model: CommunityModel
