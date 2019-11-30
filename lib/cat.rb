class Cat

attr_accessor :mood
attr_reader :name, :owner

def initialize(name, @owner.name)
  @name = name
  
  

end


end


  before do
    @owner = Owner.new("Hermione")
    @cat = Cat.new("Crookshanks", @owner)
  end

  after do
    Owner.all.clear
  end

  context 'Instance methods' do
    it "initializes with a name and an Owner" do
      expect(@cat.name).to eq("Crookshanks")
      expect(@cat.owner.name).to eq("Hermione")
    end