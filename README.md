## Bank Tech Test

This is a command line application written in Ruby using Test Driven Development with Rspec. 

The user should interact with the application using the REPL IRB. 

The requirements of [the brief](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md) are to be able to deposit and withdraw money from a bank account and display a bank statement with the correct amount and dates of the transactions.

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
cd bank-tech-test
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

This program has 100% test coverage as shown using the [Simplecov Gem](https://rubygems.org/gems/simplecov/)

![Alt text](https://github.com/ellie-keen/bank-tech-test/blob/master/public/coverage.png "coverage")

I used [Rubocop](https://rubygems.org/gems/rubocop/) to check that my code follows Ruby conventions and readability.

When it came to mocking time in my tests, I decided to use the [Timecop](https://rubygems.org/gems/timecop/) gem.

Testing was written using  [Rspec](https://rubygems.org/gems/rspec/)

![Alt text](https://github.com/ellie-keen/bank-tech-test/blob/master/public/rspec.png "rspec")

##### Run Rspec tests

```
rspec
```

### My Approach

* To complete this task, I first split up [the brief](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md) into User Stories. This gave me a clear idea about each feature I needed to implement so that I didn't leave anything uncovered. 
* I then used Domain Modelling to clearly seperate those features out into Objects and Messages.
*  I started diagramming to see how the structure of my program would look to help me get started and had 3 clearly defined objects - BankAccount, Transaction and BankStatement with clear methods. 
* I used Test Driven Development so that my application was built robustly and used the Red, Green, Refactor approach.  