class CreateItemCategories < ActiveRecord::Migration
  def change
    create_table :item_categories do |t|
      t.references :maintenance_item, index: true
      t.references :maintenance_category, index: true

      t.timestamps null: false
    end
    add_foreign_key :item_categories, :maintenance_items
    add_foreign_key :item_categories, :maintenance_categories
  end
end
