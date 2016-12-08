class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
