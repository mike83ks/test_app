class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :action_category


  #mount_uploader :image, ImageUploader
  scope :sell, -> { where("action_category_id = 2") }
  scope :buy, -> { where("action_category_id = 1") }
  scope :change, -> { where("action_category_id = 3") }



end
