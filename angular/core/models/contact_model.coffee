angular.module('diehard_fundApp').factory 'ContactModel', (BaseModel) ->
  class ContactModal extends BaseModel
    @singular: 'contact'
    @plural: 'contacts'
