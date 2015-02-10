require "pp"

class Person
  attr_reader :first_name, :last_name, :gender

  def initialize first_name = "Toma", last_name = "Bombadil", gender = "M"
    @first_name = first_name
    @last_name = last_name
    @gender = gender
  end

  def talk
    "Hell"
  end
end

class Animal
  def initialize name = "Dog"
    @name = name
  end

  def talk
    "Woof, meow, roar! on of there"
  end
end

class Bug
  def initialize type = "Butterfly"
    @type = type
  end

  def talk
    "Do bugs even talk?!"
  end
end


list = []

list << Person.new
list << Animal.new
list << Bug.new

# We relaying on messaging instead of an inheritance hierarchy, different classes same method/message
list.each do |item|
  pp item.talk
end