import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _runningButtons = [
      ElevatedButton(
        child: Text(
          1 == 2 ? '가보자~' : "잠만...",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
        onPressed: () {},
      ),
      Padding(padding: EdgeInsets.all(20)),
      ElevatedButton(
        child: Text("에잇~!", style: TextStyle(fontSize: 16)),
        onPressed: () {},
      )
    ];

    final List<Widget> _stoppedButtons = [
      ElevatedButton(
        child:
            Text("가보자~", style: TextStyle(color: Colors.white, fontSize: 16)),
        style: ElevatedButton.styleFrom(
            backgroundColor: 1 == 2 ? Colors.green : Colors.grey),
        onPressed: () {},
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("뽀모도로 타이머"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Center(
                child: Text(
                  "00:00",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: 1 == 2 ? Colors.green : Colors.blue)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 1 == 2
                ? const []
                : 1 == 2
                    ? _stoppedButtons
                    : _runningButtons,
          )
        ],
      ),
    );
  }
}
