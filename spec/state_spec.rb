require_relative '../lib/state'

RSpec.describe State do

    it 'creates a State class' do
        state = State.new(['name',100])
        expect(state).to be_kind_of(State)
    end
  
    it 'has population integer' do
        state = State.new(['name',100])
        expect(state.population).to be_kind_of(Integer)
    end

    it 'can calculate priority number' do
        state = State.new(['name',100])
        expect(state).to respond_to(:priority_number)
    end

    it 'can calculate priority number correctly' do
        state = State.new(['name',100])
        expect(state.priority_number).to eq 70.71067811865474
    end

    it 'has a rep integer' do
        state = State.new(['name',100])
        expect(state.reps).to be_kind_of(Integer)
    end

    it 'can increase rep' do
        state = State.new(['name',100])
        expect(state.reps += 1).to eq 2
    end
  
end