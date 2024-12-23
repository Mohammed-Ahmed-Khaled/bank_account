# Bank Account Class

# Description
This Dart program creates a BankAccount class to simulate basic banking operations, such as depositing and withdrawing money.

#Features

- Variables:
  - accountID: A unique identifier for the account.
  - balance: The current balance in the account.

- Constructors:
  - Default Constructor: Initializes accountID and balance to specified values.
  - Named Constructor (initial): Sets balance to 0 and accepts only accountID.

- Methods:
  - deposit(double amount): Adds the specified amount to the account balance. Ensures the amount is positive.
  - withdraw(double amount): Deducts the specified amount if the balance is sufficient and the amount is positive.
  - displayAccountInfo(): Displays the account ID and current balance.
