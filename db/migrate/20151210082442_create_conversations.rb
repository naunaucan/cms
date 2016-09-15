class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :ticket_id
      t.string :avatar
      t.string :numbering
      t.integer :user_id
      t.text :message
      t.boolean :is_read

      t.timestamps null: false
    end
  end
end
