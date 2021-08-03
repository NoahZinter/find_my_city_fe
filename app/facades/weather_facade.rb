class WeatherFacade

  def self.weather(city, state)
    data = WeatherService.get_weather(city, state)
    CityWeather.new(data)
  end
end