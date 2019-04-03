class NewHogwartsService
  def get_students(house)
    response = conn.get('house/')
    houses = JSON.parse(response.body, symbolize_names: true)
    house_id = houses.select { |each_house| each_house.value?(house) }[0][:id]
    response = conn.get("house/#{house_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://hogwarts-as-a-service.herokuapp.com/api/v1/') do |faraday|
      faraday.headers['x_api_key'] = ENV['NEW_HOGWARTS_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
