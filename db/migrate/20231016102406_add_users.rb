class AddUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :last_name, null: false, default: ""
      t.string :first_name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :password, null: false, default: ""
      t.integer :role
      t.timestamps
    end
  end
end
