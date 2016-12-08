class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :url
  has_one :user
end
