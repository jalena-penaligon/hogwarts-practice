require 'rails_helper'

describe Student do
  it 'has attributes' do
    student = Student.new({name: "Draco Malfoy", id: 1})

    expect(student.name).to eq("Draco Malfoy")
    expect(student.id).to eq(1)
  end
end
