class MaintenanceItem < ActiveRecord::Base
  belongs_to :user
  has_many :maitnenance_logs
  has_many :item_categories
end
