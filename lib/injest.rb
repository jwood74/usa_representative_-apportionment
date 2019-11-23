require 'csv'
require_relative 'state'

def injest(filename)
    file = CSV.read("#{filename}")
    states = Hash.new
    file.each_with_index do |f,i|
        next if i == 0
        states[f[0]] = State.new(f)
    end
    return states
end