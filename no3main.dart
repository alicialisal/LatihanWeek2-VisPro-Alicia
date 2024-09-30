import 'no3class.dart';
void main() {
  ATM bankAlicia = new ATM(100000);

  bankAlicia.withdraw(100000);
  bankAlicia.checkBalance();

  bankAlicia.deposit(5000000);
  bankAlicia.checkBalance();
}
