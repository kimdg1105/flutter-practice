import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/list_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  Future setLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "로그인",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ))),
        body: Center(
            child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  child: Text("로그인"),
                  onPressed: () {
                    setLogin().then((value) => Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(
                            builder: (context) => ListScreen())));
                  },
                ))));
  }
}
