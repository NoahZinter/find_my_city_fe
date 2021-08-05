require 'rails_helper'

RSpec.describe FavoritesService do
  it 'returns the users favorite city that was created', :vcr do
    user_id = 1
    city_id = 1
    data = FavoritesService.user_adds_favorites(user_id, city_id)

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

  it 'returns a users list of favorited cities', :vcr do
    user_id = 1
    data = FavoritesService.user_favorites_list(user_id)[:data]

    expect(data).to be_an(Array)

    expect(data.first).to have_key(:id)
    expect(data.first[:id]).is_a? String
    expect(data.first[:attributes]).to have_key(:city_name)
    expect(data.first[:attributes][:city_name]).to eq("Chicago")

    expect(data.last).to have_key(:id)
    expect(data.last[:id]).is_a? String
    expect(data.last[:attributes]).to have_key(:city_name)
    expect(data.last[:attributes][:city_name]).to eq("Chicago")
  end

  it 'can delete a city from users favorites' do
    user_id = 1
    data1 = FavoritesService.user_favorites_list(user_id)[:data]

    first_favorite = data1.first

    favorite_id = data1.first[:id]
    response = FavoritesService.delete_favorite(favorite_id)

    data2 = FavoritesService.user_favorites_list(user_id)[:data]
    new_first_favorite = data2.first

    expect(new_first_favorite).to_not eq(first_favorite)
    expect(response.status).to eq(204)
  end
end
