require 'rails_helper'

RSpec.describe 'FavoritesFacade' do
  it 'returns the the city a user added to their favorites list', :vcr do
    facade = FavoritesFacade.add_favorites(1, 1)


    expect(facade).to be_an_instance_of(FavoriteCity)
    expect(facade.id).to be_an(Integer)
    expect(facade.user_id).to be_an(Integer)
    expect(facade.city_id).to be_an(Integer)
    expect(facade.city_name).to be_a(String)
    expect(facade.state).to be_a(String)
    expect(facade.summary).to be_a(String)
    expect(facade.total_score).to be_a(Float)
    expect(facade.categories).to be_an(Array)

    expect(facade.user_id).to eq(1)
    expect(facade.city_id).to eq(1)
    expect(facade.city_name).to eq('Chicago')
    expect(facade.state).to eq('Illinois')
    expect(facade.summary).to eq("Chicago, Illinois, is among the est cities with a viant statu scene.            Accoding to ou city ankings, this is a good lace to live with high atings in ventue caital, usiness feedom and healthcae.            Chicago is one of the to ten city matches fo 5.5% of Teleot uses.")
    expect(facade.total_score).to eq(62.91)
    expect(facade.categories).to eq([{:name=>"Housing", :score_out_of_10=>3.7020000000000004},
                                    {:name=>"Cost of Living", :score_out_of_10=>4.766000000000001},
                                    {:name=>"Startups", :score_out_of_10=>9.513},
                                    {:name=>"Venture Capital", :score_out_of_10=>8.368},
                                    {:name=>"Travel Connectivity", :score_out_of_10=>5.5075},
                                    {:name=>"Commute", :score_out_of_10=>4.57975},
                                    {:name=>"Business Freedom", :score_out_of_10=>8.671},
                                    {:name=>"Safety", :score_out_of_10=>3.8320000000000003},
                                    {:name=>"Healthcare", :score_out_of_10=>8.555},
                                    {:name=>"Education", :score_out_of_10=>7.999},
                                    {:name=>"Environmental Quality", :score_out_of_10=>6.8045},
                                    {:name=>"Economy", :score_out_of_10=>6.5145},
                                    {:name=>"Taxation", :score_out_of_10=>4.062},
                                    {:name=>"Internet Access", :score_out_of_10=>6.599499999999999},
                                    {:name=>"Leisure & Culture", :score_out_of_10=>8.193},
                                    {:name=>"Tolerance", :score_out_of_10=>6.1339999999999995},
                                    {:name=>"Outdoors", :score_out_of_10=>5.4155}])
  end

  it 'returns a list of cities a user has favorited', :vcr do
    user_id = 1
    facade = FavoritesFacade.favorites_list(user_id)

    expect(facade.count).to eq(64)
    expect(facade[18].id).to eq(30)

    expect(facade.first.id).to be_an(Integer)
    expect(facade.first.user_id).to be_an(Integer)
    expect(facade.first.city_id).to be_an(Integer)
    expect(facade.first.city_name).to be_a(String)
    expect(facade.first.state).to be_a(String)
    expect(facade.first.summary).to be_a(String)
    expect(facade.first.total_score).to be_a(Float)
    expect(facade.first.categories).to be_an(Array)
  end

  it 'deletes a users favorite city' do
    user_id = 1
    fav_list = FavoritesFacade.favorites_list(user_id)

    favorite_id = fav_list.first.id
    response = FavoritesFacade.delete_favorite_city(favorite_id)

    expect(response.status).to eq(204)
    expect(response.status).to_not eq(200)
    expect(response.status).to_not eq(404)
  end
end
