module Assertions
  def assert &block
    # raise ArgumentError unless yield
    # OR
    raise ArgumentError unless block.call
  end
end

class SquareRootCalculator
  extend Assertions
  # if you wanna use it in instance variables
  # include Assertions

  # def self.calculate
  # OR
  # class << self
  #   def calculate number

  class << self
    def calculate number
      assert { number > 0 && number.is_a?(Numeric) }

      Math.sqrt number
    end
  end
end