class BankAccount {
  String accountID;
  double balance;

  BankAccount({
    required this.accountID,
    required this.balance,
  });

  BankAccount.initial({required this.accountID}) : balance = 0.0;

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid amount, Please enter a Positive amount');
    } else if (amount <= balance) {
      balance -= amount;
      print("Withdrawn Amount: ${amount.toStringAsFixed(2)}");
      print("Current Balance: ${balance.toStringAsFixed(2)}");
    } else {
      print('Insufficient balance for withdrawal');
    }
  }

  void deposit(double amount) {
    if (amount <= 0) {
      print('Invalid amount, Please enter a Positive amount');
    } else {
      balance += amount;
      print("Deposited Amount: ${amount.toStringAsFixed(2)}");
      print("Current Balance: ${balance.toStringAsFixed(2)}");
    }
  }

  void displayAccountInfo() {
    print("Account ID: $accountID");
    print("Current Balance: ${balance.toStringAsFixed(2)}");
  }
}

void main() {
  BankAccount account1 = BankAccount(
    accountID: "Account 1",
    balance: 500,
  );
  BankAccount account2 = BankAccount.initial(accountID: "Account 2");

  print("\n");

  print("Account 1 Operations:");
  account1.displayAccountInfo();
  account1.deposit(200);
  account1.withdraw(100);
  account1.withdraw(700);
  account1.displayAccountInfo();

  print("\n");

  print("Account 2 Operations:");
  account2.displayAccountInfo();
  account2.deposit(300);
  account2.withdraw(50);
  account2.withdraw(-20);
  account2.displayAccountInfo();
}
