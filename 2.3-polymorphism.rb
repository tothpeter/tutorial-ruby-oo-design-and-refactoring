require "pp"

class Person
  attr_reader :first_name, :last_name, :gender

  def initialize first_name, last_name, gender
    @first_name = first_name
    @last_name = last_name
    @gender = gender
  end

  def full_name
    first_name + " " + last_name
  end

  # Abstrack method
  def present
    raise NotImplementedError, "Must be implemented by subtypes."
    # %Q(Hello, my name is #{full_name}, My gender is #{gender}.)
  end
end

class Screencaster < Person
  def initialize first_name, last_name, gender, tools
    super first_name, last_name, gender
    @tools = tools
  end

  def present
    %Q(Welcome...)
  end
end

class Student < Person
  def initialize first_name, last_name, gender, preferred_language
    super first_name, last_name, gender
    @preferred_language = preferred_language
  end

  def present
    %Q('sup bro?)
  end
end

person = Student.new "Jose", "Mota", "M", "C"

pp person.present