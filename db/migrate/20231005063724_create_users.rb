class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: false do |t|
      t.integer :user_code, primary_key: true
      t.string :last_name, limit: 25
      t.string :first_name, limit: 25
      t.string :email, limit: 256
      t.string :password, limit: 64
      t.integer :access_right
      t.timestamps
    end
  end
end
