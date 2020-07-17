require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) {build(:user)}
  context 'validation of user model' do
    it 'ensures the user has a username' do
      expect(user).to be_valid
    end
  end
end
