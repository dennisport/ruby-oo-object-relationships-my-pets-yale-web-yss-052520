class Dog
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name

  @@dogs = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogs << self
  end

  def self.all
    @@dogs
  end

end