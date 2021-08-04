class CityService
  def self.get_city(city, state)
    response = conn.get("/api/v1/city?city=#{city}&state_initials=#{state}")
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: 'https://helpmefindmycity-api.herokuapp.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
