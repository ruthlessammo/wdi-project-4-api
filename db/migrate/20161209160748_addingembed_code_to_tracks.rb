class AddingembedCodeToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :embed_code, :string
  end
end
