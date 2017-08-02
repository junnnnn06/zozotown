class Item < ApplicationRecord
  attr_reader :image
  mount_uploader :image, ImageUploader
  has_many :orders
  belongs_to :user, optional: true
end
