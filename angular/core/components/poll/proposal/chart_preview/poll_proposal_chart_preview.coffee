angular.module('diehardFundApp').directive 'pollProposalChartPreview', ->
  scope: {myStance: '=', stanceCounts: '='}
  templateUrl: 'generated/components/poll/proposal/chart_preview/poll_proposal_chart_preview.html'
