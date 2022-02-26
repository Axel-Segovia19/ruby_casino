class User 
  attr_accessor :first_name, :last_name #:bank_roll

  def initialize(first_name, last_name) #bank_roll)
    @first_name = first_name
    @last_name = last_name
    # @bank_roll = bank_roll
  end

  def full_name 
    "#{first_name} #{last_name}"
  end

end