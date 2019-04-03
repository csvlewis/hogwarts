class SearchFacade
  attr_reader :house
  def initialize(house)
    @house = house
  end

  def students
    response = Faraday.get "http://hogwarts-it.herokuapp.com/api/v1/house/#{@house}?api_key=#{ENV['HOGWARTS_API_KEY']}"
    students = JSON.parse(response.body, symbolize_names: true)[:data][0][:attributes][:students]
    students.map do |student|
      Student.new(student)
    end
  end
end
