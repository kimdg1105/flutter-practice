import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: MyHomePage(title: '메인배너'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({super.key, required this.title});
  List<Widget> myChildren = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 50; i++) {
      myChildren.add(Text("플러터 ㅋㅋ" + i.toString()));
    }

    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 26,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: Column(
          children: [
            TextButton(onPressed: () {}, child: Text("텍스트 버튼")),
            ElevatedButton(onPressed: () {}, child: Text("엘리베이트 버튼")),
            OutlinedButton(onPressed: () {}, child: Text("아웃라인 버튼")),
          ],
        ));
  }
}
