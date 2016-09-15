class CreateKota < ActiveRecord::Migration
  def change
    create_table :kota do |t|
      t.string :name
      t.integer :provinsi_id
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
