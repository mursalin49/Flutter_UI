import 'package:flutter/material.dart';
import 'package:flutter_project/UI_04/itemnote.dart';
import 'package:flutter_project/UI_04/notescreen.dart';

class DiaryAppUi extends StatelessWidget {
  const DiaryAppUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Diary', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          ItemNote(color: Colors.green),
          ItemNote(color: Colors.blue),
          ItemNote(color: Colors.blueGrey),
          ItemNote(color: Colors.pink),
          ItemNote(color: Colors.purpleAccent),
          ItemNote(color: Colors.limeAccent),
          ItemNote(color: Colors.red),
          ItemNote(color: Colors.teal),
          ItemNote(color: Colors.cyan),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NoteScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
