require 'swagger/blocks'

module Base::Swagger::Actions::Apidocs::Index
  include Swagger::Blocks

  def self.included(action)
    action.class_eval do
      swagger_root do
        key :openapi, '3.0.0'
        info do
          key :version, '1.0.0'
          key :title, 'Swagger Base authorization'
          license do
            key :name, 'MIT'
          end
        end
        tag do
          key :name, 'Service health'
          externalDocs do
            key :description, 'Find more info here'
            key :url, 'https://swagger.io'
          end
        end
        key :host, 'localhost:2300'
        key :basePath, '/'
        key :consumes, ['application/json']
        key :produces, ['application/json']
      end
    end
  end
end
