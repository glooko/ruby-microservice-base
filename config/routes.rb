class Base::Routes < Hanami::Routes
  get 'health', to: 'health.index'
  get 'apidocs', to: 'apidocs.index' if ENV['INCLUDE_API_DOCS'] == 'true'
end
