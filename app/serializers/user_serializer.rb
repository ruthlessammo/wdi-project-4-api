class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :likes
  has_many :comments
  has_many :tracks
end
