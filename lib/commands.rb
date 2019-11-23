def states_with_highest_priority(states)
    highest_num = 0
    highest_state = String.new

    states.values.each do |s|
        if s.priority_number > highest_num
            highest_num = s.priority_number
            highest_state = s.name
        end
    end
    return states[highest_state]
end

def allocate_rep_to_states(states,state)
    states[state.name].reps += 1
    return states
end

def print_results(states)
    puts "Allocation complete"

    display_order = states.values.sort_by { |x| x.reps * 100000000 + x.population }.reverse

    CSV.open("population_append.csv","w+") do |csv|
        csv << ['state','population','representatives','electoral_college_votes']
        display_order.each do |s|
            # puts "#{s.name} - #{s.reps}"
            csv << [s.name,s.population,s.reps,s.reps+2]
        end
    end
end