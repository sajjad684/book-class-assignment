import 'dart:core';

class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;


  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }

  static int totalBooks = 0;
  Book({required this.title, required this.author, required this.publicationYear, this.pagesRead = 0})  {
    totalBooks++;
  }

}

void main() {

  Book book1 = Book(title: 'বেলা ফুরাবার আগে', author: 'আরিফ আজাদ', publicationYear: 2019);
  Book book2 = Book(title: 'War and Peace', author: 'Leo Tolstoy', publicationYear: 2010);
  Book book3 = Book(title: 'Ulysses', author: 'James Joyce', publicationYear: 2008);

  book1.read(100);
  book2.read(200);
  book3.read(150);


    print('Title: ${book1.getTitle()}');
    print('Author: ${book1.getAuthor()}');
    print('Publication Year: ${book1.getPublicationYear()}');
    print('Pages Read: ${book1.getPagesRead()}');
    print('Book Age: ${book1.getBookAge()} years\n');

  print('Title: ${book2.getTitle()}');
  print('Author: ${book2.getAuthor()}');
  print('Publication Year: ${book2.getPublicationYear()}');
  print('Pages Read: ${book2.getPagesRead()}');
  print('Book Age: ${book2.getBookAge()} years\n');

  print('Title: ${book3.getTitle()}');
  print('Author: ${book3.getAuthor()}');
  print('Publication Year: ${book3.getPublicationYear()}');
  print('Pages Read: ${book3.getPagesRead()}');
  print('Book Age: ${book3.getBookAge()} years\n');


  print('Total number of books created: ${Book.totalBooks}');
}

