class FavoriteCity
  attr_reader :id,
              :user_id,
              :city_id,
              :city,
              :state,
              :summary,
              :total_score,
              :categories_hash_array,
              # :picture

  def initialize(poro_info)
    @id = poro_info[:id]
    @user_id = poro_info[:user_id]
    @city_id = poro_info[:city_id]
    @city = poro_info[:city]
    @state = poro_info[:state]
    @summary = poro_info[:summary]
    @total_score = poro_info[:teleport_city_score].round(2)
    @categories_hash_array = poro_info[:categories_hash_array]
    # @picture = "jpeg for generic city photo"
  end
end
