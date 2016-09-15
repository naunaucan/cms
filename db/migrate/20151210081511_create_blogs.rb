class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :isi
      t.boolean :is_active
      t.integer :views
      t.string :slug
      t.integer :user_id
      t.string :tags

      t.timestamps null: false
    end
  end
end
