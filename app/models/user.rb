class User < ApplicationRecord
  has_secure_password
  has_many :tracks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :likes, class_name: 'Track', join_table: 'tracks_users'
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create

  def likes_received
    tracks.reduce(0) do |memo, track|
      memo + track.likes.count
    end
  end
end
