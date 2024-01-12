import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int count = 0;

  void increase() {
    setState(() {
      count++;
    });
  }

  void decrease() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("카운터 앱이다."),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "현재 카운트: " + count.toString(),
            style: TextStyle(fontSize: 25),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    decrease();
                  },
                  child: Text("-")),
              ElevatedButton(
                  onPressed: () {
                    increase();
                  },
                  child: Text("+"))
            ],
          )
        ],
      )),
    );
  }
}
