class RoomObject
  attr_reader :name, :description
  
  def initialize name, description
    @name = name
    @description = description
  end
  
  def look
    puts "- #{@name}"
    puts "\t#{@description}"
  end

end