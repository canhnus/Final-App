class AddRelationToDb < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :albums, :users

    add_foreign_key :photos, :albums

    add_column :albums, :photos_count, :integer
  end
end
