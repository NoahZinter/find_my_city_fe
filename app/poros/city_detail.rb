class CityDetail
  attr_reader :categories,
              :name,
              :picture,
              :state,
              :summary,
              :total_score

  def initialize(response)
    @categories = response[:data][:attributes][:categories]
    @name = response[:data][:attributes][:city]
    @picture = response[:data][:attributes][:picture]
    @state = response[:data][:attributes][:state]
    @summary = response[:data][:attributes][:summary]
    @total_score = response[:data][:attributes][:total_score]
  end
end
