class Client
  attr_reader :clerk

  def initialize clerk
    @clerk = clerk
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

class Clerk
  def initialize department
    @department = department
  end

  def manager
    @department.manager
  end
end