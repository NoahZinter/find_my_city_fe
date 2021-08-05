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
    # if !poro_info[attributes][:population]
    # else
    # end
    binding.pry
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

    # if !response[:data][:attributes][:population].nil?
    #   @id = response[:data][:id].to_i
    #   @population = response[:data][:attributes][:population]
    #   @name = response[:data][:attributes][:city]
    #   @state = response[:data][:attributes][:state]
    #   @total_score = nil
    #   @categories = nil
    #   @summary = nil
    # else
    #   @id = response[:data][:id].to_i
    #   @population = nil
    #   @categories = response[:data][:attributes][:categories_hash_array]
    #   @name = response[:data][:attributes][:city]
    #   @state = response[:data][:attributes][:state]
    #   @summary = response[:data][:attributes][:summary]
    #   @total_score = response[:data][:attributes][:total_score]
    # end