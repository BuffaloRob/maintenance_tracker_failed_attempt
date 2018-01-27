class CreateMaintenanceItems < ActiveRecord::Migration
  def change
    create_table :maintenance_items do |t|
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
