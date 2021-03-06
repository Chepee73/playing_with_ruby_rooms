require './room.rb'
require './object.rb'

def main
	playing = true
	
  # objects
  kitchen_objects = [RoomObject.new("Table", "There is nothing on the table"), RoomObject.new("Stove", "Nothing here")]
  living_objects = [RoomObject.new("Sofa", "You could sit... but nope."), RoomObject.new("TV", "Only crap."), RoomObject.new("Painting", "Just a picture of you.")]
	# rooms
	kitchen = Room.new "Kitchen", "You're in the kitchen", kitchen_objects
	bathroom = Room.new "Bathroom", "You're in the bathroom"
	living = Room.new "Living room", "You're in the living room", living_objects
	
	#Añadir objetos a lista de cuartos disponibles
	kitchen.add_room bathroom
	kitchen.add_room living
	living.add_room kitchen
	bathroom.add_room kitchen
	
	#Empieza desde living
	actual_room = living
	option = 0
	
	#Mientras este jugando
	while playing
    system("cls")
		actual_room.enter
		option = gets.to_i
		if option < actual_room.rooms.size && option >= 0
			actual_room = actual_room.rooms[option]
		end
	end
  
end

main