class UserSerializer < ActiveModel::Serializer
  attributes :id, :password, :bio, :avatar
end
