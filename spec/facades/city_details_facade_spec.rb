require 'rails_helper'

RSpec.describe 'CityDetailsFacade' do
  before :each do
    json_response = File.read("spec/fixtures/city_scores/city_scores.json")
    stub_request(:get, "https://help-me-find-my-city-api.herokuapp.com/").to_return(status: 200, body: json_response)
    @details = CityDetailsFacade.categories
  end
  it 'returns categories' do
    first = @details.first
    expect(@details).to be_a Array
    expect(first).to be_a CityDetails
    expect(first.name).to eq "Housing"
    expect(first.score).to eq 3.8375
  end
end
