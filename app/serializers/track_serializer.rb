class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :likes, :comments, :soundcloud_id, :like_ids
  has_one :user
  has_many :comments

  def likes
    object.likes.length
  end


end
