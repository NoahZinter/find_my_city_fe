require 'rails_helper'

RSpec.describe 'User dashboard' do
  before :each do
    user = User.create(email: 'email@email.com', password: "password")
    visit '/dashboard'

    save_and_open_page
  end

  it 'can directs you to user dashboard' do
    expect(page).to have_content("Welcome #{user.name}")
  end
end
