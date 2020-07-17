require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) {build(:user)}
  context 'validation of user model' do
    it 'ensures the user has a username' do
      user.username = ''
      expect(user).not_to be_valid
    end

    it 'ensures the presence of first name' do
        user.first_name = ''
        expect(user).not_to be_valid
    end

    it 'ensures the presence of last name ' do
      user.last_name = ''
      expect(user).not_to be_valid
    end

    it 'ensures the user has email' do
      user.email = ''
      expect(user).not_to be_valid
  end

end
end
