require_relative '../lib/commands'
require_relative '../lib/state'

RSpec.describe 'commands' do

    it 'allocation returns a hash' do
        a = State.new(['alpha',200])
        b = State.new(['beta',100])
        states = Hash.new
        states[a.name] = a
        states[b.name] = b
        expect(allocate_rep_to_states(states,a)).to be_kind_of(Hash)
    end

    it 'can allocate a rep to a state' do
        a = State.new(['alpha',200])
        b = State.new(['beta',100])
        states = Hash.new
        states[a.name] = a
        states[b.name] = b
        expect(allocate_rep_to_states(states,a)[a.name].reps).to eq 2
    end

end