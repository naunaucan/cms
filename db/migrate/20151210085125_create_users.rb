class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :encrypt_password
      t.string :salt
      t.integer :role_id
      t.boolean :is_active
      t.string :token

      t.timestamps null: false
    end
  end
end
