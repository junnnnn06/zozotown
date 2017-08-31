class Item < ApplicationRecord
  attr_reader :image

  mount_uploader :image, ImageUploader
  has_many :orders
  has_many :reviews
  belongs_to :user, optional: true
  has_many :likes, dependent: :destroy

    def like_user(user_id)
      likes.find_by(user_id: user_id)
    end

end
