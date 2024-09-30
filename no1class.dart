class Student {
  String _name, _studentID;
  double _grade;

  Student(this._name, this._studentID, this._grade);

  String get name => _name;
  String get studentID => _studentID;
  double get grade => _grade;

  // Setters
  set name(String name) {
    this._name = name;
  }

  set studentID(String studentID) {
    this._studentID = studentID;
  }

  set grade(double grade) {
    if (grade >= 0 && grade <= 100) {
      this._grade = grade;
    } else {
      throw ArgumentError("Masukkan nilai dalam range angka 1 - 100");
    }
  }

  String display() {
    return ("Nama siswa: ${_name}\nID siswa: ${_studentID}\nNilai: ${_grade}");
  }

  bool pass() {
    if (_grade >= 70)
      return true;
    else return false;
  }
}
