class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :harga, :precision => 18, :scale => 0
      t.text :keterangan
      t.boolean :is_active
      t.integer :views
      t.integer :user_id
      t.integer :picture_id
      t.string :slug

      t.timestamps null: false
    end
  end
end
