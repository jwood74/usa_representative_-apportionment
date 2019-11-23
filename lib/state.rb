class State
    def initialize(data)
        @name = data[0]
        @population = data[1].to_i
        @reps = 1   #All seats start with 1 representative
    end

    attr_reader :name, :population
    attr_accessor :reps

    def priority_number
        self.population / Math.sqrt(self.reps*(self.reps + 1))
    end
end