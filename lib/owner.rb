require 'pry'
class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []
  def initialize(name)
    @name = name
    @pets = {
            dogs: [],
            cats: [],
            fishes: []
          }
    @species = "human"

    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def pets
    @pets
  end

  def say_species
    puts "I am a human."
    "I am a human."
  end

  def self.count
    @@all.size
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end
  def pets=(pets)
    @pets = pets
  end
  def sell_pets
    @pets.keys.each do |key|
      @pets[key].map do |pet|
        pet.mood = "nervous"
      end
      @pets[key] = []
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end
