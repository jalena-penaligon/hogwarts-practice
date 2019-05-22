class HogwartsService
  def initialize(house)
    @house = house
  end

  def get_students
    get_json("/api/v1/house/#{house_to_id}")
  end

  def get_houses
    get_json("/api/v1/house")
  end

  def house_to_id
    get_houses.find do |house|
      house[:name] == @house
    end[:id]
  end

  private

  def get_json(url)
    response = conn.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://hogwarts-as-a-service.herokuapp.com/') do |f|
      f.adapter Faraday.default_adapter
      f.headers['x_api_key'] = 'lumos'
    end
  end
end
