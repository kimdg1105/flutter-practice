import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/book_detail_screen.dart';
import 'package:flutter_application_1/screens/book_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "도서 리스트 관리 앱", home: ListScreen());
  }
}
