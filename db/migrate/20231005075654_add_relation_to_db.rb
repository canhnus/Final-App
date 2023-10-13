class AddRelationToDb < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :albums, :users, column: :author_id, primary_key: :user_code

    add_foreign_key :photos, :albums

    add_column :albums, :photo_count, :integer

  end
end
