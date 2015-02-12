class Student

  def initialize
    @terms = []
    %w(first second third).each do |wich_term|
      @terms << Term.new(wich_term)
    end
  end

  def set_all_grades_to grade
    %w(first second third).each do |which_term|
      find(which_term).set_all_grades grade
    end
  end

  def first_term_grade
    find("first").grade
  end

  def second_term_grade
    find("second").grade
  end

  def third_term_grade
    find("third").grade
  end

  def find which_term
    @terms.find { |term| term.name == which_term }
  end
end

class Term
  attr_reader :name, :assiudity, :test, :behaviour

  def initialize name
    @name = name
    @assiudity = 0
    @test = 0
    @behaviour = 0
  end

  def set_all_grades grade
    @assiudity = grade
    @test = grade
    @behaviour = grade
  end

  def grade
    ( @assiudity + @test + @behaviour ) / 3
  end
end