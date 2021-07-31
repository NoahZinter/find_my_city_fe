require 'rails_helper'

RSpec.describe 'login' do
  it 'can login in a user by their google account' do
    visit root_path

    expect(page).to have_content("Find My City")
    expect(page).to have_content("Your next chapter awaits")
    expect(page).to have_button("Login")
    expect(page).to have_button("Search")
    expect(page).to have_field("Search by city name")

    click_on 'Login'

    expect(page).to have_content("Find My City", :count => 2)
    expect(page).to have_content("Not a member yet?")
    expect(page).to have_content("Login using Google")
  end

  xit 'test that you can login' do

  end
end