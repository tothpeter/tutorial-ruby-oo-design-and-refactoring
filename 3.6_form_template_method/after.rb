class Ticket
  def initialize
    @price = 2.0
  end

  def price
    @price * discount
  end

  def discount
    1
  end
end

class SeniorTicket < Ticket
  def discount
    0.75
  end
end

class JuniorTicket < Ticket
  def discount
    0.5
  end
end