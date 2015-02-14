class Employee

  def base_salary
    500.0
  end

  def salary
    base_salary + bonus
  end

  def self.build type: :employee
    const_get(type.capitalize).new
  end

  private
  
  def bonus
    0
  end

end

class Boss < Employee

  private
  def bonus
    1500.0
  end
end

class Manager < Employee

  private
  def bonus
    800.0
  end
end