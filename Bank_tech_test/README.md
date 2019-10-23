# Bank Tech Test

## Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command-line interface that takes input from STDIN.)
Deposits, withdrawal.

Account statement (date, amount, balance) printing.

Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012. <br>
And a deposit of 2000 on 13-01-2012. <br>
And the withdrawal of 500 on 14-01-2012. <br>
When she prints her bank statement. <br>
Then she would see

date || credit || debit || balance <br>
14/01/2012 || || 500.00 || 2500.00 <br>
13/01/2012 || 2000.00 || || 3000.00 <br>
10/01/2012 || 1000.00 || || 1000.00 <br>

## User Stories

These are user stories I will use meet the specification.

As a client <br>
So I can credit my account <br>
I make a deposit to my account <br>

As a client <br>
So I can debit my account <br>
I make a withdraw from  my account <br>

As a client <br>
So I can see a history of credits, debits and balance by date <br>
I can print my bank statement <br>

##  Tests

These are the tests I initially used to TDD my solution.

Make a deposit of 1000 on 10/01/2012 balance = 1000

Make a deposit of 2000 on 13/01/2012 balance = 3000

Make a withdrawal of 500 on 14/01/2012 balance = 2500

Print bank statement and see.

date || credit || debit || balance <br>
14/01/2012 || || 500.00 || 2500.00 <br>
13/01/2012 || 2000.00 || || 3000.00 <br>
10/01/2012 || 1000.00 || || 1000.00 <br>

### How to run tests

From within the root folder of the program:

$ rspec

## User Guide

Assuming you have the file saved locally, to run the program from your command prompt once located in the Bank_tech_test directory do the following:

$ irb

$ require './account'

$ account = Account.new

This will get you into the program and set you up with a new account.  You should also see that your account balance is 0 and there are no deposits or withdrawals.

To credit your account with 100.00:

$ account.credit(100.00)

This will return 3 pieces of information in this order.

The date of the credit (this should be today’s date)
The amount you credited (100.00)
The balance in your account (at this stage that will be 100.00)

To debit 25.00 from your account:

$ account.debit(25.00)

This will return 3 pieces of information in this order.

The date of the debit (this should be today’s date)
The amount you debited (25.00)
The balance in your account (at this stage that will be 75.00)

To print out a statement for your account:

$ account.print_statement

This will print out your transaction history with your most recent transaction at the top.  In this case, it will look like this:

date || credit || debit || balance<br>
23/10/2019 || || 25.00 || 75.00<br>
23/10/2019 || 100.00 || || 100.00<br>

## Reflection

At this stage, the program does meet the above acceptance criteria but there are a few other things I would add to improve the end product.

date variable <br>
It's repeated in debit and credit. I would take this out of both methods and have it as it's own method, which credit and debit can call.

update_balance<br>
Could be made private along with a method producing the date variable.

Rubocop and Travis CI<br>
Both of these could be implemented to improve code quality and ensure I stayed on track with the TDD process.

Formatting<br>
As Ruby returns the last thing in the method I could enter a message as a string at the bottom of method to avoid users being presented with unhelpful arrays of data underneath things like their printed statement.

I would also tidy up how the statement spacing is done so it's easier to read.

credit amount<br>
Whilst the program works with the acceptance criteria required edge cases such as a user entering anything other than exactly the right format will cause problems.  For example, 25.25 as an amount will lead to 25.250 being returned due to how credit_amount has been generated on lines 14 and 27.  This can be resolved most likely by correctly setting / rounding floats.  

Tests<br>
I would also correct print_statement tests for the new formatting which was required to print out the statement in the correct order.
