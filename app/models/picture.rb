class Picture < ActiveRecord::Base

  belongs_to :user
  validates_presence_of :user_id, :image

  mount_uploader :image, ImageUploader
  
end
