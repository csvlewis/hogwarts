require 'rails_helper'

describe HogwartsService do
  it 'exists' do
    service = HogwartsService.new
    expect(service).to be_a(HogwartsService)
  end

  context 'instance methods' do
    context '#get_students(house)' do
      it 'returns a list students from a given house' do
        service = HogwartsService.new
        result = service.get_students('Slytherin')

        expect(result).to be_a(Array)
        expect(result.count).to eq(22)
        expect(result[0]).to have_key(:id)
        expect(result[0]).to have_key(:name)
        expect(result[0]).to have_key(:house_id)
        expect(result[0]).to have_key(:created_at)
        expect(result[0]).to have_key(:updated_at)
      end
    end
  end
end
