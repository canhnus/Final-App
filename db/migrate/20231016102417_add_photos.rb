class AddPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :photo_url
      t.string :title
      t.text :description
      t.integer :photo_type
      t.integer :user_id
      t.datetime :created_date, default: Time.now
      t.timestamps
    end
  end
end
