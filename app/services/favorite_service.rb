class FavoriteService
  def self.add_favorite(user_id, city_id)
    url = 'https://helpmefindmycity-api.herokuapp.com/api/v1/favorites'
    response = Faraday.get(url, { city_id: city_id, user_id: user_id})
    JSON.parse(response.body, symbolize_names: true)
  end
end