class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :from_name
      t.string :from_email
      t.string :subject
      t.text :message
      t.boolean :is_active
      t.string :ip
      t.integer :user_id_from

      t.timestamps null: false
    end
  end
end
