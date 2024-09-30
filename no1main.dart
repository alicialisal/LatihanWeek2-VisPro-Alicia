import 'no1class.dart';

void main() {
  Student mhs = Student("Alicia", "0806022310002", 95.0);

  print("Data Mahasiswa:\n${mhs.display()}");

  if (mhs.pass()) {
    print("${mhs.name} lulus");
  } else {
    print("${mhs.name} tidak lulus");
  }
}
