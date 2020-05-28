require 'pry'
require_relative "cat.rb"
require_relative "dog.rb"
class Owner
  # code goes here
  attr_accessor 
  attr_reader :name, :species
  attr_writer 

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end
  
  def say_species
   "I am a #{species}."
  end 

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    # change the pet's mood?
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def pets
    pets = self.dogs + self.cats
  end 

  def sell_pets
    pets.each {|pets| pets.mood = "nervous" 
    pets.owner = nil}
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
