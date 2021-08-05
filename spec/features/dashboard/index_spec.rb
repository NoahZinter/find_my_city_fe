require 'rails_helper'

RSpec.describe 'User dashboard' do
  before :each do
    @user = User.create(id: 2, email: 'test_email2@yahoo.com', password: "password")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    visit dashboard_index_path
  end

  it 'shows favorite cities' do
    expect(current_path).to eq(dashboard_index_path)

    fill_in('city', with: 'Miami')
    select 'Florida', :from => 'state'
    click_button 'Search'

    click_on("Add to Favorites")

    expect(page).to have_content('Miami')
    expect(page).to have_content('Florida')
    expect(current_path).to eq(dashboard_index_path)
  end

  it 'can remove a city from favorites' do

    expect(page).to have_content('Miami')
    expect(page).to have_content('Florida')

    click_on("Delete City")

    expect(page).to have_no_content('Miami')
    expect(page).to have_content("Favorite city has been deleted")
    expect(current_path).to eq(dashboard_index_path)
  end
end
