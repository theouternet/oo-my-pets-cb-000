class Cat

attr_accessor :mood
attr_reader :name, :owner

def initialize(name, @owner)
  @name = name
  
  
  Owner.new(@owner)

end


end