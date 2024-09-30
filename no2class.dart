class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  set balance(double balance) {
    this._balance = balance;
  }

  void deposit(double jumdeposit) {
    if (jumdeposit >= 50000)
      _balance = _balance + jumdeposit;
    else
      print("Jumlah deposit tidak boleh minus.");
    // return _balance;
  }

  void withdraw(double jumwithdraw) {
    if (jumwithdraw >= 50000)
      _balance = _balance - jumwithdraw;
    else if (jumwithdraw < _balance)
      print("Saldo tidak mencukupi");
    else print("Jumlah withdraw tidak boleh minus.");
  }

  void checkBalance(){
    print("Saldo anda saat ini: ${_balance}");
  }
}

class SavingsAccount extends BankAccount {
  double _interestRate;

  SavingsAccount(double balance, this._interestRate) : super(balance);

  double get interestRate => _interestRate;

  set interestRate(double interestRate) {
    this._interestRate = interestRate;
  }

  void hitungbunga() {
    double jumbunga = _balance * (_interestRate / 100);
    deposit(jumbunga);
    print("Sebesar ${jumbunga} telah ditambahkan sebagai bunga simpanan");
  }
}

void main() {
  SavingsAccount bankAlicia = new SavingsAccount(100000, 0.5);

  bankAlicia.withdraw(100000);
  bankAlicia.checkBalance();

  bankAlicia.deposit(5000000);
  bankAlicia.checkBalance();

  bankAlicia.hitungbunga();
}
