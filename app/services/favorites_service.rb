class FavoritesService
  class << self
    def user_adds_favorites(user_id, city_id)
      url = 'https://helpmefindmycity-api.herokuapp.com/api/v1/favorites'
      response = Faraday.post(url, { user_id: user_id, city_id: city_id } )
      JSON.parse(response.body, symbolize_names: true)
    end

    def user_favorites_list(user_id)
      response = Faraday.get("https://helpmefindmycity-api.herokuapp.com/api/v1/users/#{user_id}/favorites")
      JSON.parse(response.body, symbolize_names: true)
    end

    def delete_favorite(favorite_id)
      Faraday.delete("https://helpmefindmycity-api.herokuapp.com/api/v1/favorites/#{favorite_id}")
    end
  end
end
