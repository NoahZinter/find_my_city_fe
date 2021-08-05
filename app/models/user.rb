class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :cities, through: :favorites

  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
end
