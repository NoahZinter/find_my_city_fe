require 'rails_helper'

RSpec.describe City, type: :model do
  describe 'relationships' do
    it { should have_many(:favorites) }
    it { should have_many(:users).through(:favorites) }
  end

  describe 'validations' do
    it { should validate_presence_of(:categories_hash_array) }
  end
  #
  # before :each do
  #
  # end
  #
  # describe 'class methods' do
  #   describe '.' do
  #   end
  # end
  #
  # describe 'instance methods' do
  #   describe '#' do
  #   end
  # end
end
