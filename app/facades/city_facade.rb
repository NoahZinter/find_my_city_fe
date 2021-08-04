class CityFacade
  def self.show_city(city, state)
    res = CityDetailsService.get_city(city.downcase, state)
    CityDetail.new(res)
  end
end
