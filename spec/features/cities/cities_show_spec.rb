require 'rails_helper'

RSpec.describe 'cities show' do

  it 'shows city content' do
    cities = create_list(:city, 5)
    id = cities.first.id
    city = cities.first
    visit "/cities/#{id}"
    # expect(page).to have_content(city.name)
    # expect(page).to have_content(city.image)
    # expect(page).to have_content(city.name)
    # expect(page).to have_content(city.total_score)
    # expect(page).to have_content(city.population)
    # expect(page).to have_content(city.categories)
    # expect(page).to have_content(city.summary)
  end

  it 'shows citys categories' do
    id = create(:city).id
    visit "/cities/#{id}"
    expect(page).to have_content("Education")
    expect(page).to have_content("Safety")
    expect(page).to have_content("Economy")
    expect(page).to have_content("Cost of Living")
    expect(page).to have_content("Healthcare")
  end
end
