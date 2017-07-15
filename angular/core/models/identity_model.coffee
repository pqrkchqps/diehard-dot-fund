angular.module('diehardFundApp').factory 'IdentityModel', (BaseModel) ->
  class IdentityModel extends BaseModel
    @singular: 'identity'
    @plural: 'identities'
