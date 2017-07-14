angular.module('diehard_fundApp').directive 'mdAttachmentForm', (MdAttachmentFormController) ->
  scope: {model: '=', showLabel: '=?'}
  restrict: 'E'
  templateUrl: 'generated/components/md_attachment_form/md_attachment_form.html'
  replace: true
  controller: MdAttachmentFormController
