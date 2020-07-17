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

  it 'ensures the email is unique' do
      user.save
      second_user.email = user.email
      expect(second_user).not_to be_valid
  end


  end
end
