class Base::Routes < Hanami::Routes
  get 'health', to: 'health.index'
  get 'apidocs', to: 'apidocs.index'
end
