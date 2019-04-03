class HogwartsService
  def get_students(house)
    response = conn.get("house/#{house}")
    JSON.parse(response.body, symbolize_names: true)[:data][0][:attributes][:students]
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://hogwarts-it.herokuapp.com/api/v1/') do |faraday|
      faraday.params['api_key'] = ENV['HOGWARTS_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
