class Room
	attr_reader :name, :description, :rooms
	
	def initialize name, description
		@name = name
		@description = description
		@rooms = []
	end
	
	def enter
		puts "Room: #{@name}"
		puts @description
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
end
