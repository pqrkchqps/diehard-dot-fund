angular.module('diehardFundApp').factory 'PollDidNotVoteRecordsInterface', (BaseRecordsInterface, PollDidNotVoteModel) ->
  class PollDidNotVoteRecordsInterface extends BaseRecordsInterface
    model: PollDidNotVoteModel
