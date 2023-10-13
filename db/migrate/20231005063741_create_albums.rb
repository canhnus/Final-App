class CreateAlbums < ActiveRecord::Migration[7.0]
  def up
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :publication_date
      t.timestamps
      t.bigint :author_id
    end
  end
end
