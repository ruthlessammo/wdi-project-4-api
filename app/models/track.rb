class Track < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :likes, class_name: 'User', join_table: 'tracks_users'
end
