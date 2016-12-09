class RemoveUrlFromTracks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tracks, :url, :string
  end
end
