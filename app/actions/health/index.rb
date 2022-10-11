class Base::Actions::Health::Index < Base::Action
  include Base::Swagger::Actions::Health::Index

  def handle(*, res)
    res.body = {message: 'OK'}.to_json
    res.status = 200
  end
end
