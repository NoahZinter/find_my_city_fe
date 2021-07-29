require 'rails_helper'

RSpec.describe 'CityDetailsService' do
  it 'returns categories' do
    json_response = File.read("spec/fixtures/city_scores/city_scores.json")
    stub_request(:get, "https://help-me-find-my-city-api.herokuapp.com/").to_return(status: 200, body: json_response)
    result = CityDetailsService.get_categories

    expect(result).to have_key(:_links)
    expect(result).to have_key(:categories)

    first = result[:categories][0]

    expect(first).to have_key :name
    expect(first[:name]).to be_a String
    expect(first[:name]).to eq "Housing"

    expect(first).to have_key :score_out_of_10
    expect(first[:score_out_of_10]).to be_a Float
    expect(first[:score_out_of_10]).to eq 3.8375
  end
end
