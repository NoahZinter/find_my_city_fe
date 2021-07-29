class CityDetails
  attr_reader :name, :score

  def initialize(data)
    @name = data[:name]
    @score = data[:score_out_of_10]
  end
end
