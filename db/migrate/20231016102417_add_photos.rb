class AddPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :photo_url
      t.datetime :created_date, default: Time.now
      t.text :description
      t.timestamps
      t.integer :album_id
    end
  end
end
