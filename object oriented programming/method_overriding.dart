/* --- method override --- */

/*
  - Method overriding allows a method in a child class to override the same method in the parent class.
  - Ex: In Dart, all the classes inherit from the Object class. The Object class has some useful methods for example toString().
  - If you pass an object to the print() function, the print() function will call the toString() method of the object to get the string representation for display.


  Calling super in an overridden method
  -------------------------------------
  - Sometimes, you want to add functionality to the method of the parent method rather than replace it. 
  - To do that, you can use the super keyword to call the method of the parent class: super.parentMethod(parameters);
*/

class BankAccount {
  double _balance = 0;

  BankAccount({double balance = 0}) : _balance = balance;

  double get balance => _balance;

  deposit(double amount) {
    _balance += amount;
  }

  bool withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      return true;
    }
    return false;
  }

  // The @override is an annotation that indicates the toString() method overrides the toString() method of the Object class.
  // The toString() method overrides the toString() method of the Object class.
  @override
  String toString() {
    return 'The balance is $balance USD.';
  }
}

class SavingAccount extends BankAccount {
  double _interestRate = 0;

  SavingAccount({double balance = 0, double interestRate = 0})
      : _interestRate = interestRate,
        super(balance: balance);

  double get interestRate => _interestRate;

  set interestRate(double value) {
    if (value > 0) {
      _interestRate = value;
    }
  }

  addInterest() {
    double interest = _balance * _interestRate;
    this._balance += interest;
  }

  // The toString() method is override from the parent class BankAccount which is also override from the Object class.
  // Instead of replacing the toString() method from the BankAccount completely, we reuse it by concatenating its result with another string.
  @override
  String toString() {
    return super.toString() + ' The interest rate is ${interestRate}.';
  }
}

void main() {
  var account = BankAccount(balance: 100);
  print(account.toString());

  SavingAccount savingAccount = SavingAccount();
  print(savingAccount.toString());
} 