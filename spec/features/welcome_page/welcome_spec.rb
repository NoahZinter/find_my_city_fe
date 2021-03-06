require 'rails_helper'

RSpec.describe 'login' do
  it 'can login in a user by their google account' do
    visit root_path

    expect(page).to have_content("Your next chapter awaits")
    expect(page).to have_button("Login")
    expect(page).to have_button("Search")
    expect(page).to have_field("city")
    expect(page).not_to have_button 'Logout'

    click_on 'Login'

    expect(page).to have_content("Find My City")
    expect(page).to have_content("Not a member yet?")
    expect(page).to have_content("Login using Google")
  end

  it 'test that you can login and out' do
    visit root_path

    click_on "Login"
    fill_in('Email', with: 'testytester@gmail.com')
    fill_in('Password', with: 'abcdefg')
    click_on "Log in"

    expect(current_path).to eq(dashboard_index_path)
    expect(page).to have_content('Welcome testytester@gmail.com')
    expect(page).to_not have_content('Must fill out email & password fields')
    expect(page).to have_button 'Logout'
    expect(page).to have_button 'My Dashboard'
    click_on "Logout"

    expect(current_path).to eq(root_path)
  end

  it 'wont let users login without both email and password' do
    visit root_path
    click_on "Login"
    fill_in('Email', with: 'testytester@gmail.com')
    click_on "Log in"

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Must fill out email & password fields')
  end
end
