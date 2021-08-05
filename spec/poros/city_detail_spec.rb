require 'rails_helper'

RSpec.describe CityDetail do
  it 'exists' do
    response = CityService.get_city('Denver', 'CO')
    poro = CityDetail.new(response)

    expect(poro).is_a? CityDetail
    expect(poro.categories).is_a? Array
    expect(poro.name).to eq 'Denver'
    expect(poro.picture).is_a? String
    expect(poro.state).to eq 'Colorado'
    expect(poro.summary).is_a? String
    expect(poro.total_score).is_a? Float
  end

  it 'has categories' do
    response = CityService.get_city('Denver', 'CO')
    poro = CityDetail.new(response)
    categories = poro.categories

    categories.each do |hash|
      expect(hash[:name]).is_a? String
      expect(hash[:score_out_of_10]).is_a? Float
    end
  end

  it 'has attributes for small towns with no scores' do
    response = CityService.get_city('Pueblo', 'CO')
    poro = CityDetail.new(response)

    expect(poro.id).to be_a(Integer)
    expect(poro.name).to eq("Pueblo, Colorado, United States")
    expect(poro.population).to be_a(Integer)
    expect(poro.categories).to be_nil
    expect(poro.state).to eq("Colorado")
    expect(poro.total_score).to be_nil
  end
end