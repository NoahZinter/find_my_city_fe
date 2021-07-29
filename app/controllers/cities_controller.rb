class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
    @city_details = CityDetailsFacade
  end
end
