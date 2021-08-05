class FavoritesService
  class << self
    def user_favorites_search(user_id, city_id)
      url = 'https://helpmefindmycity-api.herokuapp.com/api/v1/favorites'
      response = Faraday.post(url, { user_id: user_id, city_id: city_id } )
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
