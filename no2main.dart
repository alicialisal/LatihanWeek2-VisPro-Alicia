import 'no2class.dart';
void main() {
  SavingsAccount bankAlicia = new SavingsAccount(100000, 0.5);

  bankAlicia.withdraw(100000);
  bankAlicia.checkBalance();

  bankAlicia.deposit(5000000);
  bankAlicia.checkBalance();

  bankAlicia.hitungbunga();
}
