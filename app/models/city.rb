class City < ApplicationRecord
  serialize :categories_hash_array, Array

  validates_presence_of :categories_hash_array

  has_many :favorites
  has_many :users, through: :favorites
end
