# require 'pry'

class BankAccount

  @@interest_rate = 0.01
  @@accounts =[]

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def change_balance(value)
    @balance = value
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def withdraw(withdraw_amount)
    @balance -= withdraw_amount
  end

  def self.create
    new_account = BankAccount.new
    @@accounts << new_account
    return new_account
  end

  def self.total_funds
    total = 0
    @@accounts.each do |account|
      total += account.balance
    end
    total
  end

  def self.interest_time
    @@accounts.each do |account|
      account.deposit(account.balance * @@interest_rate)
    end

  end
end

my_account = BankAccount.create
your_account = BankAccount.create
puts "My Account balance is #{my_account.balance}" # 0
puts "The bank total funds are #{BankAccount.total_funds}" # 0
my_account.deposit(200)
your_account.deposit(1000)
puts "My Account balance is #{my_account.balance}" # 200
puts "Your Account balance is #{your_account.balance}" # 1000
puts "The bank total funds are #{BankAccount.total_funds}" # 1200
BankAccount.interest_time
puts "My Account balance is #{my_account.balance}" # 202.0
puts "Your Account balance is #{your_account.balance}" # 1010.0
puts "The bank total funds are #{BankAccount.total_funds}" # 1212.0
my_account.withdraw(50)
puts "My Account balance is #{my_account.balance}" # 152.0
puts "The bank total funds are #{BankAccount.total_funds}" # 1162.0
