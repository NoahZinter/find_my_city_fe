class FavoritesFacade
  class << self
    def add_favorites(user_id, city_id)
      favorite = FavoritesService.user_adds_favorites(user_id, city_id)[:data]
      FavoriteCity.new(favorite)
    end

    def favorites_list(user_id)
      list = FavoritesService.user_favorites_list(user_id)[:data]

      favorites = list.map do |favorite|
        FavoriteCity.new(favorite)
      end
    end

    def delete_favorite_city(favorite_id)
      FavoritesService.delete_favorite(favorite_id)
    end
  end
end
