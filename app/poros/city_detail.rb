class CityDetail
  attr_reader :image,
              :name,
              :total_score,
              :population,
              :categories,
              :summary

  def initialize(data)
    @image = data[:image]
    @name = data[:name]
    @total_score = data[:total_score]
    @population = data[:population]
    @categories = data[:categories]
    @summary = data[:summary]
  end
end
