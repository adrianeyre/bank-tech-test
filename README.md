# Bank Tech Test
#### Technologies: 
### [Makers Academy](http://www.makersacademy.com) - Week 10 Solo Tech Test

## Index
* [Installation](#Install)
* [Rspec Tests](#Rspec)
* [Usage](#Usage)

## Challenege

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

## <a name="Install">Installation</a>
* To clone the repo
```shell
$ git clone https://github.com/adrianeyre/bank-tech-test
$ cd bank-tech-test
$ bundle
```

## <a name="Rspec">Rspec Tests</a>
```shell
$ cd bank-tech-test
$ rspec
```

## <a name="Usage">Usage</a>
irb
```ruby
$ require "./lib/account"
$ account = Account.new
$ account.deposit(100.99)
$ account.withdrawal(100.99)
$ puts account.statement
```
