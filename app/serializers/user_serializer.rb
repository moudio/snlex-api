class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :telephone
end
