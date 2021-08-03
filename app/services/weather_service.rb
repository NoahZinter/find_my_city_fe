class WeatherService
  def self.get_weather(city, state)
    city = ERB::Util.url_encode(city)
    url = 'https://helpmefindmycity-api.herokuapp.com/api/v1/weather'
    response = Faraday.get(url, { city: city.downcase, state: state})
    JSON.parse(response.body, symbolize_names: true)
  end
end