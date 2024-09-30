import 'no3class.dart';
import 'dart:io';
void main() {
  stdout.write("Masukkan saldo awal: ");
  int awal = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan jumlah withdraw: ");
  int withdraw = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan jumlah deposit: ");
  int deposit = int.parse(stdin.readLineSync()!);

  ATM akunBank = new ATM(awal);

  akunBank.withdraw(withdraw);
  akunBank.checkBalance();

  akunBank.deposit(deposit);
  akunBank.checkBalance();
}
