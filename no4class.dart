class Book {
  String _title, _author;
  int _year;

  Book(this._title, this._author, this._year);

  String get title => _title;
  String get author => _author;
  int get year => _year;
}

class Library {
  List<Book> _ListBuku = [];

  void addBook(Book buku) {
    _ListBuku.add(buku);
    print("Buku ${buku.title} berhasil ditambahkan");
  }

  void removeBook(String judul) {
    _ListBuku.removeWhere((book) => book.title == judul);
  }

  void displayBooks() {
    if (_ListBuku.isEmpty) {
      print("Tidak ada buku saat ini.");
    } else {
      print("List buku saat ini:");
      var i = 0;
      for (var buku in _ListBuku) {
        i++;
        print("${i}. ${buku.title} - ${buku.author} (${buku.year})");
      }
    }
  }
}
