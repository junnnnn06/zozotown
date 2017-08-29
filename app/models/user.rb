class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :invitable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :invite_for => 24.hours

  has_many :items
  has_many :orders
  has_many :likes
  has_many :reviews

  validates :encrypted_password, presence: true, uniqueness: true,
             length: {minimum: 8}
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :admin_flg, null: false, default: false
end
