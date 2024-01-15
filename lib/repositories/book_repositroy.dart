import 'package:flutter_application_1/models/book.dart';

class BookRepository {
  final List<Book> _dummyBooks = [
    Book(
      title: "어쩌다 플러터1",
      subtitle: "집가고 싶다.",
      description:
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
      imageUrl:
          "https://bs-uploads.toptal.io/blackfish-uploads/components/seo/content/og_image_file/og_image/1096555/0408-FlutterMessangerDemo-Luke_Social-e8a0e8ddab86b503a125ebcad823c583.png",
    ),
    Book(
      title: "어쩌다 플러터2",
      subtitle: "컴퓨터 사고싶다.",
      description:
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
      imageUrl:
          "https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png",
    ),
    Book(
      title: "어쩌다 플러터3",
      subtitle: "치킨먹고 싶다.",
      description:
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
      imageUrl:
          "https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png",
    ),
    Book(
      title: "어쩌다 플러터4",
      subtitle: "맥주먹고 싶다.",
      description:
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
      imageUrl:
          "https://modulabs.co.kr/wp-content/uploads/2023/06/flutter-logo-sharing.png",
    ),
    Book(
      title: "어쩌다 플러터5",
      subtitle: "메롱메롱",
      description:
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQTBNaC_KQ_-z1CbYPlfqBXfGyDMedOYGohQ&usqp=CAU",
    ),
  ];

  List<Book> getBooks() {
    return _dummyBooks;
  }
}
