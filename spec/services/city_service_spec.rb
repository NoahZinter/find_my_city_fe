require 'rails_helper'

RSpec.describe 'CityService' do
  it 'returns categories' do
    result = CityService.get_city('Denver', 'CO')

    expect(result).is_a? Hash
    expect(result[:data][:attributes][:summary]).is_a? String
    expect(result[:data][:attributes][:total_score]).is_a? Float
    expect(result[:data][:attributes][:city]).to eq 'Denver'
    expect(result[:data][:attributes][:state]).to eq 'Colorado'
    expect(result[:data][:attributes][:picture]).is_a? String
    expect(result[:data][:attributes][:categories_hash_array]).is_a? Array

    categories = result[:data][:attributes][:categories_hash_array]
    categories.each do |hash|
      expect(hash[:name]).is_a? String
      expect(hash[:score_out_of_10]).is_a? Float
    end
  end
end
