require 'rails_helper'

RSpec.describe "Users", type: :request do

describe "Validates user creation" do
    it "returns status created if user is created" do
        post '/api/users', params: {user: { username: 'John', email: 'john@gmail.com', password: 'password', password_confirmation: 'password'}}
        expect(JSON(response.body)['status']).to eq("created")
    end

    it "returns error messages if user is not valid" do
      post '/api/users', params: {user: {username: 'Mo', email: 'mo@gmail.com', password: 'password', password_confirmation: 'password'}}
      expect(JSON(response.body)['status']).to eq(500)
      expect(JSON(response.body)['errors'].first).to match('Username is too short')
    end

    it "returns erros if there is no password" do
      post '/api/users', params: {user: {username: 'Mo', email: 'mo@gmail.com', password: '', password_confirmation: ''}}
      expect(JSON(response.body)['status']).to eq(500)
      expect(JSON(response.body)['errors'].first).to match("Password can't be blank")
    end

    it "returns errors if passwords are not the same" do
      post '/api/users', params: {user: {username: 'Mo', email: 'mo@gmail.com', password: 'password', password_confirmation: 'differentPassword'}}
      expect(JSON(response.body)['status']).to eq(500)
      expect(JSON(response.body)['errors'].first).to match("Password confirmation doesn't match Password")
    end


  end

end
