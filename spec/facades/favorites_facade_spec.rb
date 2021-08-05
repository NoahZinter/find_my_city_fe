require 'rails_helper'

RSpec.describe 'FavoritesFacade' do
  it 'returns the current users favorite city/cities correctly' do
    facade = FavoritesFacade.favorites(1, 1)


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
    expect(facade.summary).to eq("<p>Chicago, Illinois, is among the best cities with a <b>vibrant startup scene</b>.\n\n    \n        According to our city rankings, this is a good place to live with high ratings in <b>venture capital</b>, <b>business freedom</b> and <b>healthcare</b>.\n    \n\n    \n</p>\n\n\n    <p>Chicago is one of the top ten city matches for 5.5% of Teleport users.</p>\n")
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
end
