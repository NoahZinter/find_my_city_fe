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
    if !poro_info[:attributes][:population].nil?
      @id = poro_info[:id].to_i
      @population = poro_info[:attributes][:population]
      @city_name = poro_info[:attributes][:city_name].split(",")[0]
      @state = poro_info[:attributes][:state]
      @total_score = nil
      @categories = nil
      @summary = nil
    else
      @id = poro_info[:id].to_i
      @user_id = poro_info[:attributes][:user_id]
      @city_id = poro_info[:attributes][:city_id]
      @city_name = poro_info[:attributes][:city_name]
      @population = poro_info[:attributes][:population]
      @state = poro_info[:attributes][:state]
      @summary = poro_info[:attributes][:summary]
      @total_score = poro_info[:attributes][:total_score]
      @categories = eval(poro_info[:attributes][:categories_hash_array])
    end
  end
end
