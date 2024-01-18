import 'package:flutter/material.dart';
import './screens/timer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "뽀모도로",
      home: TimerScreen(),
    );
  }
}
