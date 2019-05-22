require 'rails_helper'

describe HogwartsService do
  it '.get_students returns a hash of student data' do
    service = HogwartsService.new("Slytherin")
    expect(service.get_students[0]).to be_a(Hash)
    expect(service.get_students[0]).to have_key(:name)
    expect(service.get_students[0]).to have_key(:id)
  end

  it '.get_houses returns a hash of house data' do
    service = HogwartsService.new("Slytherin")
    expect(service.get_houses[0]).to be_a(Hash)
    expect(service.get_houses[0]).to have_key(:name)
    expect(service.get_houses[0]).to have_key(:id)
  end

  it '.house_to_id takes a house name and returns the id' do
    service = HogwartsService.new("Slytherin")

    expect(service.house_to_id).to eq(4)
  end
end
