class Owner
  attr_accessor :pets, :cats, :dogs
  attr_reader :name, :species
  @@all = []
  
  
  def initialize(name=nil, @@pets = {:cats => [], :dogs => []})
    @name = name
    @species = species
    @@all << self
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
    @@pets[:cats] << Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    @@pets[:dogs] << Dog.new(dog_name, self)
  end
  
  def cats()
    @@pets[:cats]
  end
  
  def dogs()
    @@pets[:dogs]
  end
  
  def walk_dogs()
    @@pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats()
    @@pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def list_pets()
    dog_num = @@pets[:dogs].length
    cat_num = @@pets[:cats].length
    puts "I have #{dog_num}(s), and #{cat_num}(s)."
  end
  
end