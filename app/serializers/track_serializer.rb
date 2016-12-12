class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :likes, :comments, :soundcloud_id
  has_one :user
  has_many :comments

  def likes
    object.likes.length
  end


end
