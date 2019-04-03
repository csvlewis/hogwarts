class Student
  attr_reader :id,
              :name,
              :house_id,
              :created_at,
              :updated_at
  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @house_id = data[:house_id]
    @created_at = data[:created_at]
    @updated_at = data[:updated_at]
  end
end
