angular.module('diehard_fundApp').directive 'membershipsPanel', ->
  scope: {memberships: '=', group: '='}
  restrict: 'E'
  templateUrl: 'generated/components/memberships_page/memberships_panel/memberships_panel.html'
  replace: true
  controller: 'AdminMembershipsPanelController'
