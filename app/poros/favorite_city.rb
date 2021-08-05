class FavoriteCity
  attr_reader :id,
              :user_id,
              :city_id,
              :city_name,
              :population,
              :state,
              :summary,
              :total_score,
              :categories

  def initialize(poro_info)
    @id = poro_info[:id].to_i
    @user_id = poro_info[:attributes][:user_id]
    @city_id = poro_info[:attributes][:city_id]
    @city_name = poro_info[:attributes][:city_name]
    @population = poro_info[:attributes][:population]
    @state = poro_info[:attributes][:state]
    @summary = poro_info[:attributes][:summary].delete("<p></p><b><br/>\n")
    @total_score = poro_info[:attributes][:total_score]
    @categories = eval(poro_info[:attributes][:categories_hash_array])
  end
end
