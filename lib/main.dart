import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(StudyJam());

class StudyJam extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
      theme: ThemeData.dark(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
      ),
    );
  }
}

// class Screen extends StatelessWidget {
  // Widget build(BuildContext context) {
    // return Scaffold(
      // appBar: AppBar(
        // title: Text("Study Jam"),
        // centerTitle: true,
      // ),
      // body: Center(child: Text("Hello world"),
      // )
    // );
  // }
// }

class Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Screen();
  }
}

class _Screen extends State<Screen>{
  String _string = "flutter";

  void getNewWord() {
    var _word = WordPair.random();
    setState(() {
      _string = _word.asPascalCase;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Study Jam : NewWord"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(_string),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          getNewWord();
        },
      ),
    );
  }
}


