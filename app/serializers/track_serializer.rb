class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :likes, :comments, :soundcloud_id, :embed_code
  has_one :user
  has_many :comments

  def likes
    object.likes.length
  end


end
