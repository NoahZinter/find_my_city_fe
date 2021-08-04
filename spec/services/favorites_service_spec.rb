require 'rails_helper'

RSpec.describe FavoritesService do
  it 'returns the current users favorite city/cities' do
    user_id = 1
    city_id = 1
    data = FavoritesService.user_favorites_search(user_id, city_id)[:data]

    expect(data).to be_a(Hash)
    expect(data[:attributes]).to be_a(Hash)
    expect(data[:attributes][:user_id]).to be_a(Integer)
    expect(data[:attributes][:city_id]).to be_a(Integer)
    expect(data[:attributes][:city]).to be_a(String)
    expect(data[:attributes][:state]).to be_a(String)
    expect(data[:attributes][:summary]).to be_a(String)
    expect(data[:attributes][:total_score]).to be_a(Float)
    expect(data[:attributes][:categories_hash_array]).to be_a(Text)

    expect(data[:attributes]).to have_key(:user_id)
    expect(data[:attributes]).to have_key(:city_id)
    expect(data[:attributes]).to have_key(:city)
    expect(data[:attributes]).to have_key(:state)
    expect(data[:attributes]).to have_key(:summary)
    expect(data[:attributes]).to have_key(:total_score)
    expect(data[:attributes]).to have_key(:categories_hash_array)
  end
end
