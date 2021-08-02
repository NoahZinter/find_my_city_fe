require 'rails_helper'

RSpec.describe 'City Search' do
  it 'search fields exist' do
    visit root_path

    expect(page).to have_field 'city'
    expect(page).to have_select 'state'
  end

  it 'travels to search' do
    visit root_path
    fill_in('city', with: 'Denver')
    select 'Colorado', :from => 'state'
    click_button 'Search'

    expect(current_path).to eq '/search'
  end

  it 'displays searched city info' do
    visit root_path
    fill_in('city', with: 'Miami')
    select 'Florida', :from => 'state'
    click_button 'Search'
    city = CityFacade.show_city('Miami', 'FL')
    categories = city.categories

    expect(page).to have_content 'Miami'
    expect(page).to have_content 'Miami, Florida, is among the top cities with a free business environment. According to our city rankings, this is a good place to live with high ratings in startups, healthcare and leisure & culture.'
    expect(page).to have_content 'Miami is one of the top ten city matches for 0.3% of Teleport users.'
    expect(page).to have_content 'Overall Rating'
    categories.each do |hash|
      expect(page).to have_content(hash[:name])
    end
  end

  it 'should search for multi-word cities'

  it 'should not accept numbers in city field'

  it 'should show a 404 for city not found'

end