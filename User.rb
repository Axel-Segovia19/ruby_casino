class User 
  attr_accessor :first_name, :last_name, :age, :bank_roll

  def initialize(first_name, last_name, age, bank_roll)
    @first_name = first_name
    @last_name = last_name
    @age = age 
    @bank_roll = bank_roll
  end

  def full_name 
    "#{first_name} #{last_name}"
  end

  def user_money(num)
    @bank_roll = num
  end
end