class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :action_category


  mount_uploader :image, ImageUploader
  scope :by_action_category, -> (action_category_id) { where(action_category_id: action_category_id) if action_category_id.present? }
  #scope :sell, -> (action_category_id) { where("action_category_id = 2") }
  #scope :buy, -> (action_category_id) { where("action_category_id = 1") }
  #scope :change, -> (action_category_id) { where("action_category_id = 3") }
  #
  scope :by_publisher, -> (publisher_id) { where(publisher_id: publisher_id) if publisher_id.present? }
end
