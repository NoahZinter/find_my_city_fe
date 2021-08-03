require 'rails_helper'

RSpec.describe 'user favorites' do
  it 'shows the users favorited cities on their dashboard' do
    user = User.create!(google_id: "1234", email: "test_email@email.com", token: "sl324j2h83hy973yr")

    visit root_path
    fill_in('city', with: 'Denver')
    select 'Colorado', :from => 'state'
    click_button 'Search'
    save_and_open_page

    click_on "Add to Favorites"

  end
end