import 'dart:io';

import 'no2class.dart';
void main() {
  stdout.write("Masukkan saldo awal: ");
  int awal = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan jumlah withdraw: ");
  int withdraw = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan jumlah deposit: ");
  int deposit = int.parse(stdin.readLineSync()!);

  SavingsAccount akunBank = new SavingsAccount(awal, 1);

  akunBank.withdraw(withdraw);
  akunBank.checkBalance();

  akunBank.deposit(deposit, false);
  akunBank.checkBalance();

  akunBank.hitungbunga();
}
