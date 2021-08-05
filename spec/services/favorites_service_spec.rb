require 'rails_helper'

RSpec.describe FavoritesService do
  it 'returns the current users favorite city/cities', :vcr do
    user_id = 1
    city_id = 1
    data = FavoritesService.user_favorites_search(user_id, city_id)

    expect(data).to be_a(Hash)
    expect(data[:data]).to be_a(Hash)
    expect(data[:data][:id]).to be_a(String)
    expect(data[:data][:attributes][:user_id]).to be_an(Integer)
    expect(data[:data][:attributes][:city_id]).to be_an(Integer)
    expect(data[:data][:attributes][:city_name]).to be_a(String)
    expect(data[:data][:attributes][:state]).to be_a(String)
    expect(data[:data][:attributes][:summary]).to be_a(String)
    expect(data[:data][:attributes][:total_score]).to be_a(Float)
    expect(data[:data][:attributes][:categories_hash_array]).to be_a(String)

    expect(data).to have_key(:data)
    expect(data[:data]).to have_key(:id)
    expect(data[:data]).to have_key(:type)
    expect(data[:data]).to have_key(:attributes)
    expect(data[:data][:attributes]).to have_key(:user_id)
    expect(data[:data][:attributes]).to have_key(:city_id)
    expect(data[:data][:attributes]).to have_key(:city_name)
    expect(data[:data][:attributes]).to have_key(:state)
    expect(data[:data][:attributes]).to have_key(:summary)
    expect(data[:data][:attributes]).to have_key(:total_score)
    expect(data[:data][:attributes]).to have_key(:categories_hash_array)
  end
end
