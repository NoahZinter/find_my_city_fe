require 'rails_helper'

RSpec.describe 'User dashboard' do
  before :each do
    @user = User.create(id: 1, email: 'test_email@yahoo.com', password: "password")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    visit dashboard_index_path
  end

  xit 'A user can delete a city from its favorites list' do
    expect(current_path).to eq(dashboard_index_path)
    expect(page).to_not have_content("Favorite city has been deleted")

    # within :xpath, '/html/body[2]/div/div/ol[1]' do
      click_button('Delete City')
    # end

    expect(current_path).to eq(dashboard_index_path)
    expect(page).to have_content("Favorite city has been deleted")
  end
end
