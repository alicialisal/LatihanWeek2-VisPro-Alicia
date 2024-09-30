import 'no4class.dart';

void main() {
  Book Buku1 = new Book("Bumi", "Tere Liye", 2015);
  Book Buku2 = new Book("Bulan", "Tere Liye", 2016);
  Book Buku3 = new Book("Matahari", "Tere Liye", 2017);

  Library libUC = new Library();
  libUC.addBook(Buku1);
  libUC.addBook(Buku2);
  libUC.addBook(Buku3);

  libUC.removeBook("Bulan");
  libUC.displayBooks();
}
