class UserService
  def self.get_user(email, password)
    url = 'https://helpmefindmycity-api.herokuapp.com/api/v1/users'
    response = Faraday.post(url, { email: email, password: password })
    JSON.parse(response.body, symbolize_names: true)
  end
end