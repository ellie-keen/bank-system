## Bank Tech Test

The program is written in Ruby using **test driven development**, following **DRY** and **SOLID** principles. 

The requirements are to be able to deposit and withdraw money from a bank account and display a bank statement with the correct amount and dates. 

#### User Stories

```
As a customer,
So I can access my money,
I should be able to withdraw money from my bank account.

As a customer,
So I can save my money,
I should be able to deposit money into my bank account.

As a customer, 
So I know how much money I have available,
I should be able to view my bank balance.

As a customer, 
So I can check when I made my transactions,
I should be able to view the date money goes in and out of my account.

As a customer, 
So I can keep track of my transaction history,
I should be able to view my full bank statement.
```



### Installation

```bash
git clone https://github.com/ellie-keen/bank-tech-test.git

bundle install
```



### Running the Program in IRB

```ruby
# Load dependencies
load './lib/bank_account.rb'
load './lib/bank_statement.rb'

# Create a BankAccount instance and make some transactions
bank_account = BankAccount.new
bank_account.deposit(100)
bank_account.withdraw(50)

# Check your statement by creating a BankStatement instance
bank_statement = BankStatement.new
bank_statement.print_statement(bank_account)

# =>
date || credit || debit || balance
18/07/2018 || || 50.00 || 50.00
17/07/2018 || 100.00 || || 100.00
```



### Code Quality and Testing

This program has 100% test coverage as shown using the (Simplecov Gem)[https://rubygems.org/gems/simplecov/]

![Alt text](https://github.com/ellie-keen/bank-tech-test/public/coverage.png "coverage")

I used (Rubocop)[https://rubygems.org/gems/rubocop/] to check that my code follows Ruby conventions and readability.

Testing was written using  (Rspec)[https://rubygems.org/gems/rspec/]

![Alt text](https://github.com/ellie-keen/bank-tech-test/public/rspec.png "rspec")

##### Run Rspec tests

* ```bash
  rspec
  ```