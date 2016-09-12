class Room
	attr_reader :name, :description, :rooms, :objects
	
	def initialize name, description, objects = []
		@name = name
		@description = description
		@objects = objects
    @rooms = []
	end
	
	def enter
		puts "Room: #{@name}"
		puts @description
    
		unless @objects.empty?
      show_objects
    end
    
    unless @rooms.empty?
			show_rooms
		end
	end
	
	def add_room room
		@rooms << room
	end
	
	def show_rooms
		@rooms.each_with_index do |room, i|
			puts "#{i} - #{room.name}"
		end
	end
  
  def show_objects
    @objects.each do |object|
      object.look
    end
  end
end
