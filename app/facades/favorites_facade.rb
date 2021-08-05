class FavoritesFacade
  class << self
    def favorites(user_id, city_id)
      favorites = FavoritesService.user_adds_favorites(user_id, city_id)
      FavoriteCity.new(favorites)
    end
  end
end
