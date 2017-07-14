angular.module('diehard_fundApp').factory 'PollDidNotVoteRecordsInterface', (BaseRecordsInterface, PollDidNotVoteModel) ->
  class PollDidNotVoteRecordsInterface extends BaseRecordsInterface
    model: PollDidNotVoteModel
