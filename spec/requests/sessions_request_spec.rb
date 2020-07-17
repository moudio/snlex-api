require 'rails_helper'

RSpec.describe "Sessions", type: :request do

let!(:user) {create(:user)}
  context "Session validation" do
  it "creates a new session successfully" do
    post '/api/sessions', params: {user: {username: user.username, password: user.password}}
    expect(JSON(response.body)['status']).to eq('created')
  end
  it "shows error messages when user doesn't exist" do
    post '/api/sessions', params: {user: {username: 'FakeUser', password: 'fakePassword'}}
    expect(JSON(response.body)['status']).to eq(401)
    expect(JSON(response.body)['errors'].first).to match('Verify credentials and try again or signup')
  end
end
end
