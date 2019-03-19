class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :name
end
