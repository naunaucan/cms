class CreateProvinsis < ActiveRecord::Migration
  def change
    create_table :provinsis do |t|
      t.string :name
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
