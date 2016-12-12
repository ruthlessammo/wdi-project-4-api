class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image, :bio
  has_many :likes
  has_many :comments
  has_many :tracks

  # def image
  #   object.image
  # end

end
