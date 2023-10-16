class AddAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :publication_date
      t.timestamps
      t.integer :user_id
    end
  end
end
