class Base::Actions::Apidocs::Index < Base::Action
  include Base::Swagger::Actions::Apidocs::Index

  SWAGGERED_CLASSES = [
    Base::Actions::Health::Index,
    self
  ].freeze

  def handle(*, res)
    res.body = Swagger::Blocks.build_root_json(SWAGGERED_CLASSES).to_json
  end
end
