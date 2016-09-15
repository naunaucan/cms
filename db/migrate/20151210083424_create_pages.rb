class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :views
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
