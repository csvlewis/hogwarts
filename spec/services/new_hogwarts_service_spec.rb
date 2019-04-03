require 'rails_helper'

describe NewHogwartsService do
  it 'exists' do
    service = NewHogwartsService.new
    expect(service).to be_a(NewHogwartsService)
  end

  context 'instance methods' do
    context '#get_students(house)' do
      it 'returns a list students from a given house' do
        service = NewHogwartsService.new
        result = service.get_students('Slytherin')

        expect(result).to be_a(Array)
        expect(result.count).to eq(22)
        expect(result[0]).to have_key(:id)
        expect(result[0]).to have_key(:name)
      end
    end
  end
end
