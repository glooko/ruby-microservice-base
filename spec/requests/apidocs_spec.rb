RSpec.describe 'Apidocs', type: :request,
                          skip: ENV['INCLUDE_API_DOCS'] != 'true' do
  it 'is successful' do
    get '/apidocs'

    expect(last_response).to be_successful
  end

  it 'return status 200' do
    get '/apidocs'

    expect(last_response.status).to be(200)
  end
end
