class AddingEmbedCodeToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :embed_code, :string
  end
end
