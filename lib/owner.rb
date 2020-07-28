class Owner
  attr_accessor :pets, :cats, :dogs
  attr_reader :name, :species
  @@all = []
  
  
  def initialize(name=nil)
    @name = name
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => []}
  end
  
  def species()
    @species = "human"
  end
  
  def say_species()
    "I am a #{@species}."
  end
  
  def self.all()
    @@all
  end
  
  def self.count()
    @@all.length
  end
  
  def self.reset_all()
    @@all.clear
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name, self)
  end
  
  def cats()
    @pets[:cats]
  end
  
  def dogs()
    @pets[:dogs]
  end
  
  def walk_dogs()
    dog.mood = "happy"
  end
  
end