class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :telephone, :email
end
