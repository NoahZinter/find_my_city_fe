class CityDetails
  attr_reader :name, :score_out_of_10

  def initialize(data)
    @name = data[:name]
    @score = data[:score_out_of_10]
  end
end
