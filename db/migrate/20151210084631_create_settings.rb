class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :nama_aplikasi
      t.string :email_default
      t.text :alamat
      t.string :default_password
      t.boolean :zopim
      t.boolean :site_status

      t.timestamps null: false
    end
  end
end
