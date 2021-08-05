class FavoritesFacade
  class << self
    def favorites(user_id, city_id)
      favorites = FavoritesService.user_favorites_search(user_id, city_id)
      FavoriteCity.new(favorites)
    end
  end
end
