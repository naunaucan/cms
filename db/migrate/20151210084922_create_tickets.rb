class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :subject
      t.text :message
      t.boolean :is_active
      t.boolean :is_read
      t.integer :user_id
      t.string :status
      t.string :numbering

      t.timestamps null: false
    end
  end
end
