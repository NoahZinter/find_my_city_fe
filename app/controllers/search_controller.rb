class SearchController < ApplicationController
  def show
    @city = CityFacade.show_city(params[:city], params[:state])
    @city_weather = WeatherFacade.weather(params[:city], params[:state])
  end
end