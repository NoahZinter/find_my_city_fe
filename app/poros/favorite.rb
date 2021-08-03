class Favorite
  attr_reader :city_id, :user_id

  def initialize(response)
    @city_id = response#not sure about exact path yet
    @user_id = response#not sure about exact path yet
  end

end