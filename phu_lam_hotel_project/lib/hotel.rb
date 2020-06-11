require_relative "room"

class Hotel
    
    # Initialize method
    def initialize(hotel_name, hash_roomname_capacity)
        @name = hotel_name
        @rooms = {}

        hash_roomname_capacity.each do |room_name, capacity|
            @rooms[room_name] = Room.new(capacity)
        end
    end

    # Getter methods
    def name
        @name.split.map(&:capitalize).join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(room)
        rooms.has_key?(room)
    end
    
    # Instance methods
    def check_in(person, room)
        if self.room_exists?(room)
            if @rooms[room].add_occupant(person)
                p 'check in successful'
            else
                p 'sorry, room is full'
            end
        else 
            p 'sorry, room does not exist'
        end
    end

    def has_vacancy?
        @rooms.values.any? { |room| room.available_space > 0 }
    end

    def list_rooms
        @rooms.each do |room_name, room|
            puts "#{room_name} : #{room.available_space}"
        end
    end
end

# FINISHED PART 2
