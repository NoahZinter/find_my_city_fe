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

  it 'searches for multi-word cities' do
    visit root_path
    fill_in('city', with: 'Los Angeles')
    select 'California', :from => 'state'
    click_button 'Search'

    expect(page).to have_content 'Los Angeles'
    expect(page).to have_content 'Los Angeles is one of the top ten city matches for 11.5% of Teleport users.'
    expect(page).to have_content 'Overall Rating'
    expect(page).to have_button 'Add to Favorites'
  end

  it 'can add a favorite' do
    visit root_path

    click_on "Login"
    fill_in('Email', with: 'testytester@gmail.com')
    fill_in('Password', with: 'abcdefg')
    click_on "Log in"

    fill_in('city', with: 'Los Angeles')
    select 'California', :from => 'state'
    click_button 'Search'

    expect(current_path).to eq(search_path)
    expect(page).to have_content('City Information')
    expect(page).to have_content('Los Angeles, California')
    expect(page).to have_content('Todays Forecast')
    expect(page).to have_button('Add to Favorites')

    click_button 'Add to Favorites'

    expect(current_path).to eq(dashboard_index_path)
    expect(page).to have_content('Los Angeles')
  end

  it 'has city weather' do
    visit root_path
    fill_in('city', with: 'Denver')
    select 'Colorado', :from => 'state'
    click_button 'Search'
    city = WeatherFacade.weather('Denver', 'CO')


    expect(page).to have_content(city.description)
  end
end
