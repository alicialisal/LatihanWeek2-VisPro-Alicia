import 'dart:io';

class Vehicle {
  String _name;
  double _speed;

  Vehicle(this._name, this. _speed);

  String get name => _name;
  double get speed => _speed;

  set speed(double newSpeed) {
    if (newSpeed <= 0) {
      print("Kecepatan tidak boleh sama dengan/kurang dari 0.");
      double? validSpeed;
      while (validSpeed == null || validSpeed <= 0) {
        stdout.write("Masukkan kecepatan yang valid: ");
        validSpeed = double.tryParse(stdin.readLineSync()!);
        if (validSpeed == null || validSpeed <= 0) {
          print("Input tidak valid, coba lagi.");
        }
      }
      _speed = validSpeed;
    } else {
      _speed = newSpeed;
    }
  }

  void move() => print("Kendaraan berjalan");
}

class Car extends Vehicle {
  Car(String name, double speed) : super(name, speed);

  @override
  void move() {
    if(_speed > 60) print("Mobil berjalan cepat di jalan raya.");
    else if(_speed >= 30) print("Mobil berjalan dengan kecepatan normal di jalan raya.");
    else if (_speed < 30) print("Mobil berjalan lambat di jalan raya.");
  }
}

class Bike extends Vehicle {
  Bike(String name, double speed) : super(name, speed);

  @override
  void move() {
    if(_speed > 60) print("Motor berjalan cepat di jalan raya.");
    else if(_speed >= 30) print("Motor berjalan dengan kecepatan normal di jalan raya.");
    else if (_speed < 30) print("Motor berjalan lambat di jalan raya.");
  }
}