require 'rails_helper'

RSpec.describe WeatherFacade do
  describe 'when city is found' do
    it 'returns city weather' do
      data = WeatherFacade.weather("Denver", "Co")

      expect(data.lat).to be_a(Float)
      expect(data.lon).to be_a(Float)
      expect(data.temp).to be_a(Float)
      expect(data.temp_max).to be_a(Float)
      expect(data.temp_min).to be_a(Float)
      expect(data.humidity).to be_a(Integer)
      expect(data.description).to be_a(String)
      expect(data.visibility).to be_a(Integer)
      expect(data.wind_speed).to be_an(Float).or(be_nil)
      expect(data.sunrise).to be_a(Integer)
      expect(data.sunset).to be_a(Integer)
    end
  end
end