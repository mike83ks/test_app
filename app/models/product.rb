class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :action_category

  #mount_uploader :image, ImageUploader
end
