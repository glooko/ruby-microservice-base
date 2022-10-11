require 'swagger/blocks'

module Base::Swagger::Actions::Health::Index
  include Swagger::Blocks

  def self.included(action)
    action.class_eval do
      swagger_path '/health' do
        operation :get do
          key :summary, 'Service Health Status'
          key :operationId, 'healthCheck'
          key :produces, ['application/json']
          key :tags, ['health']
          response 200 do
            key :description, 'health check response'
          end
        end
      end
    end
  end
end
