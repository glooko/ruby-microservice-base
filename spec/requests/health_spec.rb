RSpec.describe 'Health', type: :request do
  it 'is successful' do
    get '/health'

    expect(last_response).to be_successful
  end

  it 'return OK!' do
    get '/health'

    expect(last_response.body).to eq({message: 'OK'}.to_json)
  end

  it 'return status 200' do
    get '/health'

    expect(last_response.status).to be(200)
  end
end
