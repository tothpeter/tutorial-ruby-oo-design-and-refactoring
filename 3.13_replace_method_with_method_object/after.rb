class TaxSimulator
  def initialize person
    @person = person
  end

  def simulate_return income: nil, expenses: 0, type: :dependent_worker
    TextAlgorithm.new(income, expenses, type).simulate
  end
end

class TextAlgorithm
  def initialize income, expenses, type
    @income = income
    @expenses = expenses
    @type = type

    @return_value = 0
    @number_of_people_under_roof = 1
  end

  def process_type
    if @type == :dependent_worker
      @return_value += @income * 0.02
    else
      @return_value += @income * 0.04
    end
  end

  def handle_number_of_people_under_roof
    if @number_of_people_under_roof > 2
      @return_value *= 1.1
    end
  end

  def process_income_expense_difference
    if @income - @expenses > @income * 0.05
      @return_value += @expenses * 0.05
    end
  end

  def process_expenses
    @return_value -= @expenses * 0.3
  end

  def simulate
    process_type
    handle_number_of_people_under_roof
    process_income_expense_difference
    process_expenses
  end
end