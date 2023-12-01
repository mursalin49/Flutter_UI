import 'package:flutter/material.dart';
import 'package:flutter_project/Flutter_UI/ui1.dart';
import 'package:flutter_project/UI_02/U2.dart';
import 'package:flutter_project/UI_03/ui3.dart';
import 'package:flutter_project/UI_04/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      color: Colors.green,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 100, right: 100),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login1stui()));
                },
                child: Text("UI_01"),
                color: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60.0, right: 60.0),
              child: MaterialButton(
                color: Colors.white,
                hoverColor: Colors.grey,
                splashColor: Colors.greenAccent,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Nirob()));
                },
                child: Text("Nirob ui", style: TextStyle(fontSize: 24)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 60.0, right: 60.0),
              child: MaterialButton(
                color: Colors.white,
                hoverColor: Colors.grey,
                splashColor: Colors.greenAccent,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text("LoginScreen ui", style: TextStyle(fontSize: 24)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 60.0, right: 60.0),
              child: MaterialButton(
                color: Colors.white,
                hoverColor: Colors.grey,
                splashColor: Colors.greenAccent,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DiaryAppUi()));
                },
                child: Text("DiaryAppUi", style: TextStyle(fontSize: 24)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
