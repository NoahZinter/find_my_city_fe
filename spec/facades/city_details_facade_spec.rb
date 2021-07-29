require 'rails_helper'

RSpec.describe 'CityDetailsFacade' do
  it 'returns categories' do
    json_response = File.read("spec/fixtures/city_scores/city_scores.json")
    stub_request(:get, "https://help-me-find-my-city-api.herokuapp.com/").to_return(status: 200, body: json_response)
    CityDetailsFacade.categories
  end
end
