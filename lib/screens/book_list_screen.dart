import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/book_detail_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("도서 리스트 관리 앱"),
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: ListView(
          children: <Widget>[
            const BookTile(
              title: "어쩌다 플러터1",
              subtitle: "집가고 싶다.",
              descrption:
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
              image:
                  "https://bs-uploads.toptal.io/blackfish-uploads/components/seo/content/og_image_file/og_image/1096555/0408-FlutterMessangerDemo-Luke_Social-e8a0e8ddab86b503a125ebcad823c583.png",
            ),
            const BookTile(
              title: "어쩌다 플러터2",
              subtitle: "컴퓨터 사고싶다.",
              descrption:
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
              image:
                  "https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png",
            ),
            const BookTile(
              title: "어쩌다 플러터3",
              subtitle: "치킨먹고 싶다.",
              descrption:
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
              image:
                  "https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png",
            ),
            const BookTile(
              title: "어쩌다 플러터4",
              subtitle: "맥주먹고 싶다.",
              descrption:
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
              image:
                  "https://modulabs.co.kr/wp-content/uploads/2023/06/flutter-logo-sharing.png",
            ),
            const BookTile(
              title: "어쩌다 플러터5",
              subtitle: "메롱메롱",
              descrption:
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl. Donec euismod, nisl sed aliquam ultricies, nunc nisl ultricies nisl, quis ultricies nisl nisl sed nisl.",
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQTBNaC_KQ_-z1CbYPlfqBXfGyDMedOYGohQ&usqp=CAU",
            ),
          ],
        ));
  }
}

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String descrption;
  final String image;

  const BookTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.descrption,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => DetailScreen(
                    title: title,
                    subtitle: subtitle,
                    descrption: descrption,
                    image: image,
                  )),
        );
      },
    );
  }
}
