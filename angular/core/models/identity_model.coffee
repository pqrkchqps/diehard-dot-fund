angular.module('diehard_fundApp').factory 'IdentityModel', (BaseModel) ->
  class IdentityModel extends BaseModel
    @singular: 'identity'
    @plural: 'identities'
