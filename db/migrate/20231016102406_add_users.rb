class AddUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.integer :access_right
      t.timestamps
    end
  end
end
