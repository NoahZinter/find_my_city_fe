class CityService
  def self.get_city(city, state)
    url = 'https://helpmefindmycity-api.herokuapp.com/api/v1/city'
    response = Faraday.get(url, { city: city, state: state})
    JSON.parse(response.body, symbolize_names: true)
  end
end