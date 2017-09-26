# require 'pry'

class BankAccount
  @@interest_rate = 0.125
  @@accounts =[]

  def self.create
    new_account = BankAccount.new
    @@accounts << new_account.balance
    return new_account
  end
  def self.total_funds
    @@accounts.sum
  end

  def initialize
    @balance = 0
  end

  def deposit(deposit)
    @balance += deposit
  end

  def withdraw(withdraw)
    @balance -= withdraw
  end
  def balance
    @balance
  end

end

my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance # 0
puts BankAccount.total_funds # 0
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance # 200
puts your_account.balance # 1000
puts BankAccount.total_funds # 1200
