class AddSoundcloudIdToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :soundcloud_id, :string
  end
end
