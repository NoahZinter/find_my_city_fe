class CityDetail
  attr_reader :id,
              :categories,
              :name,
              :picture,
              :state,
              :summary,
              :total_score,
              :population

  def initialize(response)
    if !response[:data][:attributes][:population].nil?
      @id = response[:data][:id].to_i
      @population = response[:data][:attributes][:population]
      @name = response[:data][:attributes][:city]
      @state = response[:data][:attributes][:state]
      @total_score = nil
      @categories = nil
      @summary = nil
    else
      @id = response[:data][:id].to_i
      @population = nil
      @categories = response[:data][:attributes][:categories_hash_array]
      @name = response[:data][:attributes][:city]
      @state = response[:data][:attributes][:state]
      @summary = response[:data][:attributes][:summary]
      @total_score = response[:data][:attributes][:total_score]
    end
  end
end
