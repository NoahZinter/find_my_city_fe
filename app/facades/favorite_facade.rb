class FavoriteFacade
  def self.create_favorite(user_id, city_id)
    res = FavoriteService.add_favorite(user_id, city_id)
    Favorite.new(res)
  end
end