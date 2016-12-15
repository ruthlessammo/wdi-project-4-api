class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :likes, :comments, :soundcloud_id, :like_ids, :user
  has_one :user
  has_many :comments

end
