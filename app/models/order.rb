class Order < ApplicationRecord
  has_many :reviews
  belongs_to :item
  belongs_to :user
end
