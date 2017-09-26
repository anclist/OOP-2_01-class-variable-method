class BankAccount
@@interest_rate = 0.125
@@accounts =[]

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit=(deposit)
    @balance += deposit
  end

  def withdraw=(withdraw)
    @balance -= withdraw
  end

  def self.create(new_account)
    new_account = BankAccount.new
    @@accounts << new_account
  end



end
