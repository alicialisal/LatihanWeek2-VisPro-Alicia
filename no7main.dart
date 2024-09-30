import 'dart:io';

import 'no7class.dart';
void main() {
  print("Pilihan jenis kendaraan:\n1. Mobil\n2. Motor ");
  stdout.write("Masukkan pilihan: ");
  int pilihan = int.parse(stdin.readLineSync()!);

  switch(pilihan){
    case 1:
      var dataKendaraan = isidata();
      Car mobil = new Car(dataKendaraan[0],0);
      mobil.speed = dataKendaraan[1];
      mobil.move();
      break;
    case 2:
      var dataKendaraan = isidata();
      Bike motor = new Bike(dataKendaraan[0],0);
      motor.speed = dataKendaraan[1];
      motor.move();
      break;
    default:
      print("Pilihan kendaraan tidak valid");
  }
}

List<dynamic> isidata() {
  stdout.write("Masukkan nama kendaraan: ");
  String nama = stdin.readLineSync()!;
  stdout.write("Masukkan kecepatan kendaraan: ");
  double speed = double.parse(stdin.readLineSync()!);
  
  return [nama, speed];
}