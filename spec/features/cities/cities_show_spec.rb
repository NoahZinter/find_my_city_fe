require 'rails_helper'

RSpec.describe 'cities show' do

  it 'shows city content' do
    cities = create_list(:city, 5)
    id = cities.first.id
    city = cities.first
    visit "/cities/#{id}"
    save_and_open_page
    binding.pry
    # expect(page).to have_content(city.name)
    # expect(page).to have_content(city.image)
    # expect(page).to have_content(city.name)
    # expect(page).to have_content(city.total_score)
    # expect(page).to have_content(city.population)
    # expect(page).to have_content(city.categories)
    # expect(page).to have_content(city.summary)
  end
end
