class RemoveEmbedCodeFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :embed_code, :string
  end
end
