class CityWeather
  attr_reader :lat,
              :lon,
              :temp,
              :temp_min,
              :temp_max,
              :humidity,
              :description,
              :visibility,
              :wind_speed,
              :sunrise,
              :sunset,
              :id

  def initialize(data)
    @id = data[:data][:attributes][:id]
    @lat = data[:data][:attributes][:lat]
    @lon = data[:data][:attributes][:lon]
    @temp = data[:data][:attributes][:temp]
    @temp_min = data[:data][:attributes][:temp_min]
    @temp_max = data[:data][:attributes][:temp_max]
    @humidity = data[:data][:attributes][:humidity]
    @description = data[:data][:attributes][:description]
    @visibility = data[:data][:attributes][:visibility]
    @wind_speed = data[:data][:attributes][:speed]
    @sunrise = data[:data][:attributes][:sunrise]
    @sunset = data[:data][:attributes][:sunset]
  end

end