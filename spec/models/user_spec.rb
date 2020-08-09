require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) {create(:user)}
  let!(:second_user) {create(:user)}
  let!(:username_one) {user.username}

  context 'validation of user model' do
    it 'ensures the user has a username' do
      user.username = ''
      expect(user).not_to be_valid
    end

    it 'ensures the user has email' do
      user.email = ''
      expect(user).not_to be_valid
  end

  it 'ensures the username is unique' do
      user.save
      second_user.username = user.username
      expect(second_user).not_to be_valid
  end

  it 'ensures the username is not case sensitive' do
    user.save
    second_user.username = user.username.upcase
    expect(second_user).not_to be_valid
  end

  it 'ensures the username is 4 characters length at least' do
    user.username = 'abc'
    expect(user).not_to be_valid
  end


  it 'ensures the email is unique' do
      user.save
      second_user.email = user.email
      expect(second_user).not_to be_valid
  end

it 'ensures the email is valid' do
  user.email = 'randomstring'
  expect(user).not_to be_valid
end
  it 'ensures the email is not case sensitive' do
    user.save
    second_user.email = user.email.upcase
    expect(second_user).not_to be_valid
  end

  it 'ensures the user not created with no matching passwords' do
    user.password_confirmation = 'fakePassword'
    expect(user).not_to be_valid
  end

  it 'ensures the user has many purchased products' do
    should respond_to(:purchases)
  end

  it 'ensures the user has many products on cart ' do
      should respond_to(:cart_products)
  end

  end
end
