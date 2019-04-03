require 'rails_helper'

describe SearchFacade do
  it 'exists' do
    facade = SearchFacade.new('Slytherin')

    expect(facade).to be_a(SearchFacade)
    expect(facade.house).to eq('Slytherin')
  end

  describe 'instance methods' do
    describe '#students' do
      it 'returns a list of all students in the searched house' do
        facade = SearchFacade.new('Slytherin')

        expect(facade.students).to be_a(Array)
        expect(facade.students).to eq(22)
        expect(facade.students[0]).to be_a(Student)
      end
    end
  end
end
