class CityDetailsService
  def self.get_categories
    url = 'https://help-me-find-my-city-api.herokuapp.com'
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
