import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/status/timer_status.dart';
import 'package:flutter_application_1/tools/utils.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  static const WORK_SECONDS = 10;
  static const REST_SECONDS = 5;

  late TimerStatus _timerStatus;
  late int _seconds;
  late int _pomodoroCount;

  @override
  void initState() {
    super.initState();
    _timerStatus = TimerStatus.stopped;
    print(_timerStatus.toString());
    _seconds = WORK_SECONDS;
    _pomodoroCount = 0;
  }

  void run() {
    setState(() {
      _timerStatus = TimerStatus.running;
      print("[=>]" + _timerStatus.toString());
      runTimer();
    });
  }

  void rest() {
    setState(() {
      _seconds = REST_SECONDS;
      _timerStatus = TimerStatus.resting;
      print("[=>]" + _timerStatus.toString());
      runTimer();
    });
  }

  void pause() {
    setState(() {
      _timerStatus = TimerStatus.paused;
      print("[=>]" + _timerStatus.toString());
    });
  }

  void resume() {
    run();
  }

  void stop() {
    setState(() {
      _seconds = WORK_SECONDS;
      _timerStatus = TimerStatus.stopped;
      print("[=>]" + _timerStatus.toString());
    });
  }

  void runTimer() async {
    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      switch (_timerStatus) {
        case TimerStatus.paused:
          t.cancel();
          break;
        case TimerStatus.stopped:
          t.cancel();
          break;
        case TimerStatus.running:
          if (_seconds <= 0) {
            showToast("작업 완료!");
            rest();
          } else {
            setState(() {
              _seconds--;
            });
          }
          break;
        case TimerStatus.resting:
          if (_seconds <= 0) {
            setState(() {
              _pomodoroCount++;
            });
            showToast("오늘 $_pomodoroCount 개의 작업 완료!");
            t.cancel();
            stop();
          } else {
            setState(() {
              _seconds--;
            });
          }
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _runningButtons = [
      ElevatedButton(
        child: Text(
          _timerStatus == TimerStatus.paused ? '가보자~' : "잠만...",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
        onPressed: _timerStatus == TimerStatus.paused ? resume : pause,
      ),
      Padding(padding: EdgeInsets.all(20)),
      ElevatedButton(
        child: Text("그만하자 오늘은", style: TextStyle(fontSize: 16)),
        onPressed: stop,
      )
    ];

    final List<Widget> _stoppedButtons = [
      ElevatedButton(
        child:
            Text("가보자~", style: TextStyle(color: Colors.white, fontSize: 16)),
        style: ElevatedButton.styleFrom(
            backgroundColor: _timerStatus == TimerStatus.resting
                ? Colors.green
                : Colors.grey),
        onPressed: run,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("뽀모도로 타이머"),
        backgroundColor:
            _timerStatus == TimerStatus.resting ? Colors.green : Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Center(
                child: Text(
                  secondsToString(_seconds),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _timerStatus == TimerStatus.resting
                      ? Colors.green
                      : Colors.blue)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _timerStatus == TimerStatus.resting
                ? const []
                : _timerStatus == TimerStatus.stopped
                    ? _stoppedButtons
                    : _runningButtons,
          )
        ],
      ),
    );
  }
}
