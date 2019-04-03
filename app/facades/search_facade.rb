class SearchFacade
  attr_reader :house
  def initialize(house)
    @house = house
  end

  def students
    response = Faraday.get "http://hogwarts-it.herokuapp.com/api/v1/house/gryffindor?api_key=#{ENV['HOGWARTS_API_KEY']}"
    JSON.parse(response.body)
  end
end
