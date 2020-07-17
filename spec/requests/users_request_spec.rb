require 'rails_helper'

RSpec.describe "Users", type: :request do

  it "returns status created if user is created" do
      post '/api/users', params: {user: { username: 'John', email: 'john@gmail.com', password: 'password', password_confirmation: 'password'}}
      expect(JSON(response.body)['status']).to eq("created")
  end

  it "return error messages if user is not valid" do
    post '/api/users', params: {user: {username: 'Mo', email: 'mo@gmail.com', password: 'password', password_confirmation: 'password'}}
    expect(JSON(response.body)['status']).to eq(500)
    expect(JSON(response.body)['errors'].first).to match('Username is too short')
  end

end
