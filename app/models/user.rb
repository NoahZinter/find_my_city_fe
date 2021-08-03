class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :cities, through: :favorites

  validates :email, uniqueness: true, presence: true
  validates_presence_of :password_digest, require: true
  validates_confirmation_of :password_digest

  has_secure_password
end
