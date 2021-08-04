require 'rails_helper'

RSpec.describe 'user service' do
  it 'can get a user' do
    result = UserService.get_user("sdfsdf@gmail.com", "fff")

    expect(result[:data][:attributes][:id]).to be_a(Integer)
    expect(result[:data][:attributes][:email]).to eq("sdfsdf@gmail.com")
  end
end