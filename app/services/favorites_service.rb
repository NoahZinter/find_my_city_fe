class FavoritesService
  class << self
    def user_favorites_search(user_id, city_id)
      response = conn.get('/api/v1/favorites',
        params: {
          user_id: user_id,
          city_id: city_id
        }
      )
      parse_json(response)
    end

    private

    def conn
      Faraday.new(url: 'https://helpmefindmycity-api.herokuapp.com')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
