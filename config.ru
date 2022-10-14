require 'hanami/boot'

require 'hanami/middleware/body_parser'
use Hanami::Middleware::BodyParser, :json

require 'rack/cors'
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any,
                  methods: %i[get post patch put delete options head]
  end
end

run Hanami.app
