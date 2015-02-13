class Client
  attr_reader :department

  def initialize department
    @department = department
  end
end

class Manager
  attr_accessor :department
end

class Department
  attr_reader :manager

  def initialize manager
    @manager = manager

    manager.department = self
  end
end