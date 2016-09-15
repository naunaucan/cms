class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :company_name
      t.string :country
      t.text :address
      t.text :description
      t.integer :category_id
      t.string :profile_img
      t.boolean :is_active
      t.integer :user_id
      t.integer :provinsi_id
      t.integer :kota_id
      t.string :owner
      t.string :slug
      t.string :telp
      t.integer :views

      t.timestamps null: false
    end
  end
end
