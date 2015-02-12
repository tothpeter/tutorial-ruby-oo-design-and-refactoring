class Student
  attr_accessor :first_term_assiduity, :first_term_test, :first_term_behaviour
  attr_accessor :second_term_assiduity, :second_term_test, :second_term_behaviour
  attr_accessor :third_term_assiduity, :third_term_test, :third_term_behaviour

  def set_all_grades_to grade
    %w(first second third).each do |wich_term|
      %w(assiduity test behaviour).each do |criteria|
        send "#{wich_term}_term_#{criteria}=".to_sym, grade
      end
    end
  end

  def first_term_grade
    (first_term_assiduity + first_term_test + first_term_behaviour) / 3
  end
end