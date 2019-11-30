class Owner

attr_reader :name, :species

@@all = []

def initialize(name)
  @name = name 
@species = "human"
@@all << self
end

def say_species
  "I am a #{@species}."
end

def self.all 
@@all
end

def self.count
  @@all.count
end

def self.reset_all 
  @@all = []
end

def cats
  Cat.all.select{|c| c.owner == self}
end

def dogs
  Dog.all.select{|d| d.owner == self}
end

 def buy_cat
   Cat.new(name, self)
 end

end