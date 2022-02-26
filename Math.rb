class Math
  def initialize(money)
    @wallet = money
  end
  def current_balances
    return @wallet
  end
  def validate_money(money)
    if money > 0 && (@wallet - money) >= 0
      true
    else
      false
    end
  end
# adds money to wallet they win
  def add_money(money)
    @wallet += money
  end
# subtracts money from wallet after they lose
  def subtract_money(money)
    @wallet -= money
  end