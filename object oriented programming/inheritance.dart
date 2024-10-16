/* --- Inheritance in dart --- */

/*
  - Inheritance allows you to define a class that extends the functionality of another class.
  - Dart supports single inheritance. It means that a class can inherit from a single class. 
  - Dart doesn’t support multiple inheritances. In other words, a class cannot inherit from two or more classes.
  - To define a class that inherits from another class, you use the 'extends' keyword [Ex: class ChildClass extends ParentClass {}].
  - a class that inherits from another class is called a child class, a subclass, or a derived class. 
  - A class from which the child class inherits is called a parent class, a super class, or a derived class.
  - The child class will have all properties and methods of the parent class. 
  - Also, it can extend the parent class by either overriding the methods from the parent class or having more methods in the child class.
*/

// This is a parent class.
class BankAccount {
  double _balance = 0; // this is a private variable

  double get balance => _balance; // getter for getting the balance

  // deposite() methos has a parameter 'amount' of type double
  // which will added to the private variable '_balance'. 
  double deposite(double amount) {
    return _balance += amount;
  }

  // withdraw() method will accepts a double type parameter 'amount'
  // first, checks amount is lesser than equals to _balance, if true, then amount added to _balance and return true, else return false,
  bool withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      return true;
    }
    return false;
  }
}

// This is a child class which is extended from the 'BankAccount' as parent class.
class SavingsAccount extends BankAccount {
  double _interestRate = 0; // private variable 

  double get interestRate => _interestRate; // getter variable

  set interestRate(double interestRateValue) {
    if (interestRateValue > 0) {
      _interestRate = interestRateValue;
    }
  }

  double addInterest() {
    double interest = _balance * _interestRate;
    return this._balance += interest;
  }
}

void main() {
  // creating an object from the parent class 'BankAccount'
  BankAccount mainAC = BankAccount();
  mainAC.deposite(1000);
  mainAC.withdraw(200);
  print('Main Account Balance: ${mainAC.balance}');

  // creating an instance of child class 'SavingsAccount'
  SavingsAccount savingsAC = SavingsAccount();
  savingsAC.deposite(2000);
  savingsAC.interestRate = 0.10;
  savingsAC.addInterest();
  print("Savings Account balance: ${savingsAC.balance}");
}
