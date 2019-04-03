class SearchFacade
  attr_reader :house
  def initialize(house)
    @house = house
  end

  def students
    service.get_students(@house).map do |student|
      Student.new(student)
    end
  end

  private

  def service
    @service ||= HogwartsService.new
  end
end
