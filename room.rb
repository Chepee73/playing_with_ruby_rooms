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
   
    show_objects
    
		show_rooms
		
	end
	
	def add_room room
		@rooms << room
	end
	
  def add_object object
    @objects << add
  end
  
  def remove_object object_name
    unless @objects.empty?
      @objects.delete_if do |object| 
        object.name == object_name 
      end
    end
  
  end
  
	def show_rooms
		unless @rooms.empty?
      @rooms.each_with_index do |room, i|
        puts "#{i} - #{room.name}"
      end
    end
	end
  
  def show_objects
    unless @objects.empty?
      @objects.each do |object|
        object.look
      end
    end
  end
  
end
