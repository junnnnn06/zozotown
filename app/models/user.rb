class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :items
  has_many :orders
  has_many :likes

  validates :encrypted_password, presence: true, uniqueness: true,
             length: {minimum: 8}
  validates :email, presence: true, uniqueness: true
end
