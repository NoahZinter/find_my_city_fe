class City
  attr_reader :id,
              :image,
              :name,
              :total_score,
              :population,
              :categories,
              :summary

  def initialize(data)
    @id = data[:id]
    @image = data[:image]
    @name = data[:name]
    @total_score = data[:total_score]
    @population = data[:population]
    @categories = data[:categories]
    @summary = data[:summary]
  end  
end
