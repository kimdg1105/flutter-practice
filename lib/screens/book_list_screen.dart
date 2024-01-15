import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/book.dart';
import 'package:flutter_application_1/repositories/book_repositroy.dart';
import 'package:flutter_application_1/screens/book_detail_screen.dart';

class ListScreen extends StatelessWidget {
  final BookRepository bookRepository = BookRepository();
  late List<Book> books;

  ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookRepository = BookRepository();
    books = bookRepository.getBooks();

    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("도서 리스트 관리 앱"),
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return BookTile(book: books[index]);
            },
            itemCount: books.length));
  }
}

class BookTile extends StatelessWidget {
  final Book book;

  const BookTile({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.imageUrl),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => DetailScreen(
                    book: book,
                  )),
        );
      },
    );
  }
}
