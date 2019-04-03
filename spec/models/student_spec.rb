require 'rails_helper'

describe Student do
  it 'exists' do
    data = {id: 52, name: 'Gormlaith Gaunt', house_id: 4, created_at: "2019-03-30T17:47:41.195Z", updated_at: "2019-03-30T17:47:41.195Z" }
    student = Student.new(data)

    expect(student).to be_a(Student)
    expect(student.id).to eq(data[:id])
    expect(student.name).to eq(data[:name])
    expect(student.house_id).to eq(data[:house_id])
    expect(student.created_at).to eq(data[:created_at])
    expect(student.updated_at).to eq(data[:updated_at])
  end
end
