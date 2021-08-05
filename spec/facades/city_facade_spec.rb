require 'rails_helper'

RSpec.describe CityFacade do
  it 'creates a searched-for city' do
    city = CityFacade.show_city('Chicago', 'IL')

    expect(city.categories).is_a? Array
    expect(city.name).to eq 'Chicago'
    expect(city.picture).is_a? String
    expect(city.state).to eq 'Illinois'
    expect(city.summary).is_a? String
    expect(city.total_score).is_a? Float

    categories = city.categories

    categories.each do |hash|
      expect(hash[:name]).is_a? String
      expect(hash[:score_out_of_10]).is_a? Float
    end
  end
end
