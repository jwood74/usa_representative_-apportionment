require 'rubygems'
require 'bundler/setup'
require_relative 'lib/injest'
require_relative 'lib/commands'

CSV_file = 'population.csv'

states = injest(CSV_file)

seats_to_allocate = 435 - 50

until seats_to_allocate == 0
    s = states_with_highest_priority(states)
    states = allocate_rep_to_states(states,s)
    printf "%-14s %s\n", s.name, seats_to_allocate
    seats_to_allocate -= 1
end

print_results(states)