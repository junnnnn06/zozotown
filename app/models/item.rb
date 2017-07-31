class Item < ApplicationRecord
  attr_reader :image
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
end
