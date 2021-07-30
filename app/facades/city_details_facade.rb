class CityDetailsFacade
  def self.categories
    json = CityDetailsService.get_categories
    json[:categories].map do |details|
      CityDetails.new(details)
    end
  end
end
