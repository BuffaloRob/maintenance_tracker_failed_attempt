class CreateMaintenanceLogs < ActiveRecord::Migration
  def change
    create_table :maintenance_logs do |t|
      t.string :notes
      t.string :tools
      t.integer :cost
      t.datetime :date_performed
      t.datetime :date_due
      t.references :maintenance_category, index: true
      t.references :maintenance_item, index: true

      t.timestamps null: false
    end
    add_foreign_key :maintenance_logs, :maintenance_categories
    add_foreign_key :maintenance_logs, :maintenance_items
  end
end
