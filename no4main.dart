import 'dart:io';

import 'no4class.dart';

void main() {
  Library libUC = new Library();
  while (true) {
    print("Pilih opsi:");
    print("1. Tambah Buku");
    print("2. Hapus Buku");
    print("3. Tampilkan Daftar Buku");
    print("4. Keluar");
    stdout.write("Masukkan pilihan: ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == '1') {
      stdout.write("Masukkan judul buku: ");
      String? title = stdin.readLineSync();
      stdout.write("Masukkan penulis buku: ");
      String? author = stdin.readLineSync();
      stdout.write("Masukkan tahun terbit: ");
      int? year = int.parse(stdin.readLineSync()!);

      if (title != null && author != null) {
        Book newBook = new Book(title, author, year);
        libUC.addBook(newBook);
      }

    } else if (pilihan == '2') {
      stdout.write("Masukkan judul buku yang akan dihapus: ");
      String? judul = stdin.readLineSync();
      if (judul != null) {
        libUC.removeBook(judul);
      }

    } else if (pilihan == '3') {
      libUC.displayBooks();

    } else if (pilihan == '4') {
      break;

    } else {
      print("Pilihan tidak valid.");
    }
  }
}
