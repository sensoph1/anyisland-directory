class Business < ApplicationRecord
  validates :last_name, presence:true
  validates :first_name, presence:true
  validates :business_name, presence:true
  mount_uploader :image, ImageUploader
end
