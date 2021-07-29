require 'rails_helper'

RSpec.describe 'CityDetails Poros' do
  before :each do
    @city_details = CityDetails.new({name: 'Housing', score_out_of_10: 3.8375})
  end

  it 'shows city details content' do
    expect(@city_details.name).to eq "Housing"
    expect(@city_details.score).to eq 3.8375
  end
end
