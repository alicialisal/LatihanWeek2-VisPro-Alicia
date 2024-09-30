import 'dart:io';

import 'no1class.dart';

void main() {
  stdout.write("Masukkan nama siswa: ");
  String siswa = stdin.readLineSync()!;

  stdout.write("Masukkan NIM siswa: ");
  String NIM = stdin.readLineSync()!;

  stdout.write("Masukkan nilai siswa: ");
  double nilai = double.parse(stdin.readLineSync()!);

  Student mhs = Student(siswa, NIM, nilai);

  print("Data Mahasiswa:\n${mhs.display()}");

  if (mhs.pass()) {
    print("${mhs.name} lulus");
  } else {
    print("${mhs.name} tidak lulus");
  }
}
