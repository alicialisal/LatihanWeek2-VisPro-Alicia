class ATM {
  double _balance;

  ATM(this._balance);

  double get balance => _balance;

  void deposit(double jumdeposit) {
    if (jumdeposit >= 50000)
      _balance += jumdeposit;
    else
      print("Jumlah deposit tidak boleh minus.");
    // return _balance;
  }

  void withdraw(double jumwithdraw) {
    if (jumwithdraw >= 50000 && jumwithdraw <= _balance)
      _balance = _balance - jumwithdraw;
    else {
      if (jumwithdraw > _balance)
      print("Saldo tidak mencukupi");
      else
      print("Jumlah withdraw tidak boleh minus.");
    }
  }

  void checkBalance(){
    print("Saldo anda saat ini: ${_balance}");
  }
}
