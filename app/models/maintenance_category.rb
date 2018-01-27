class MaintenanceCategory < ActiveRecord::Base
  has_many :maintenance_logs
  has_many :item_categories
end
