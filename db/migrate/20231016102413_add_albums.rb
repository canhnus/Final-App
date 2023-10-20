class AddAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.integer :album_type
      t.datetime :created_date, default: Time.now
      t.integer :photo_count
      t.integer :user_id
      t.timestamps
    end
  end
end
