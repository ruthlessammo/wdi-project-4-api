class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :url, :likes, :comments
  has_one :user
  has_many :comments

  def likes
    object.likes.length
  end

  
end
