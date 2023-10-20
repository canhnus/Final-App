class AddAlbumsPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :album_photos, primary_key: [:album_id, :photo_id] do |t|
      t.integer :album_id
      t.integer :photo_id
      t.datetime :created_date, default: Time.now
      t.timestamps
    end
  end
end

