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
    @id = poro_info[:data][:id].to_i
    @user_id = poro_info[:data][:attributes][:user_id]
    @city_id = poro_info[:data][:attributes][:city_id]
    @city_name = poro_info[:data][:attributes][:city_name]
    @population = poro_info[:data][:attributes][:population]
    @state = poro_info[:data][:attributes][:state]
    @summary = poro_info[:data][:attributes][:summary]
    @total_score = poro_info[:data][:attributes][:total_score]
    @categories = eval(poro_info[:data][:attributes][:categories_hash_array])
  end
end
