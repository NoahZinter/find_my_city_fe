class SearchController < ApplicationController
  def show
    @city = CityFacade.show_city(params[:city], params[:state])
  end
end