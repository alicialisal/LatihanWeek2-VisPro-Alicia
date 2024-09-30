import 'dart:io';
void main() {
  stdout.write("Masukkan suhu dalam Celsius: ");
  double c = double.parse(stdin.readLineSync()!);
  print("Pilihan konversi:\n1. Reamur\n2. Fahrenheit\n3. Kelvin");
  print("Masukkan pilihan anda:");
  int pilihan = int.parse(stdin.readLineSync()!);
  switch(pilihan){
    case 1:
      double r = c * (4/5);
      stdout.write("Suhu dalam Reamur: ${r}");
      break;
    case 2:
      double f = ((9/5) * c) + 32;
      stdout.write("Suhu dalam Fahrenheit: ${f}");
      break;
    case 3:
      double k = c + 273.15;
      stdout.write("Suhu dalam Kelvin: ${k}");
      break;
  }
}
