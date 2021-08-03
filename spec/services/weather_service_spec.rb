require 'rails_helper'
RSpec.describe 'WeatherService' do
  it 'returns weather service' do
    result = WeatherService.get_weather('Denver', 'CO')


    expect(result).to be_a(Hash)
    expect(result[:data][:attributes]).to have_key(:id)
    expect(result[:data][:attributes]).to have_key(:lat)
    expect(result[:data][:attributes]).to have_key(:lon)
    expect(result[:data][:attributes]).to have_key(:temp)
    expect(result[:data][:attributes]).to have_key(:temp_max)
    expect(result[:data][:attributes]).to have_key(:temp_min)
    expect(result[:data][:attributes]).to have_key(:humidity)
    expect(result[:data][:attributes]).to have_key(:description)
    expect(result[:data][:attributes]).to have_key(:visibility)
    expect(result[:data][:attributes]).to have_key(:wind_speed)
    expect(result[:data][:attributes]).to have_key(:sunrise)
    expect(result[:data][:attributes]).to have_key(:sunset)
  end
end