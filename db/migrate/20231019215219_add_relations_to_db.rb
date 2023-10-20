class AddRelationsToDb < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :albums, :users

    add_foreign_key :photos, :users


    add_foreign_key :album_photos, :albums

    add_foreign_key :album_photos, :photos

  end
end
