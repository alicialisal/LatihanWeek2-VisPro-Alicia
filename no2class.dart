class BankAccount {
  int _balance;

  BankAccount(this._balance);

  int get balance => _balance;

  set balance(int balance) {
    this._balance = balance;
  }

  void deposit(int jumdeposit, bool bunga) {
    if (bunga == false)
    {
      if (jumdeposit >= 50000)
        _balance = _balance + jumdeposit;
      else
        print("Jumlah deposit tidak valid.");
    }
    else
    {
      if (jumdeposit > 0)
        _balance = _balance + jumdeposit;
      else
        print("Jumlah deposit tidak valid.");
    }
    // return _balance;
  }

  void withdraw(int jumwithdraw) {
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

  SavingsAccount(int balance, this._interestRate) : super(balance);

  double get interestRate => _interestRate;

  set interestRate(double interestRate) {
    this._interestRate = interestRate;
  }

  void hitungbunga() {
    int jumbunga = (_balance * (_interestRate / 100)).toInt();
    deposit(jumbunga, true);
    print("Sebesar ${jumbunga} telah ditambahkan sebagai bunga simpanan");
  }
}
