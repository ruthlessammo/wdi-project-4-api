class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image, :bio, :like_ids, :likes_received
  has_many :likes
  has_many :comments
  has_many :tracks

end
