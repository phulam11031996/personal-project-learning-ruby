class Room
# PART 1
    # Initialize method
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    # Getter methods
    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    # Instance methods
    def full?
        if @capacity > @occupants.length
            return false
        end
        true
    end

    def available_space
        capacity - @occupants.length
    end 

    def add_occupant(name)
        if self.full?
            return false
        end

        @occupants << name 
        true
    end
end

# FINISHED PART 1
