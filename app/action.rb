# auto_register: false
require 'hanami/action'
require 'swagger/blocks'

class Base::Action < Hanami::Action
  include Swagger::Blocks
end
