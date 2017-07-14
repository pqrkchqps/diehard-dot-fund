angular.module('diehard_fundApp').factory 'SearchResultRecordsInterface', (BaseRecordsInterface, SearchResultModel) ->
  class SearchResultRecordsInterface extends BaseRecordsInterface
    model: SearchResultModel

    fetchByFragment: (fragment) ->
      @fetch
        params:
          q: fragment
          per: 5
