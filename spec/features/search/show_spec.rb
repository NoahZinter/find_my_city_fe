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
    fill_in('city', with: 'Denver')
    select 'Colorado', :from => 'state'
    click_button 'Search'

    expect(page).to have_content 'Denver'
    
  end

end