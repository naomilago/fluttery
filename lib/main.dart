import "package:flutter/material.dart";
import "package:hexcolor/hexcolor.dart";
import "./question.dart";
import "./answer.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexQuestion = 1;

  void _answerQuestion() {
    setState(() {
      if (_indexQuestion <= 3 && _indexQuestion >= 0) {
        _indexQuestion++;
      } else {
        _indexQuestion = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Flutter is an _____ mobile aplication development framework developed by Google.',
      'Flutter apps are written in the _____ language and make use of many advanced features of this language.',
      'Which of the following widgets is used for layouts?',
      'When was Flutter first described?',
      'When was Flutter released?',
    ];

    return MaterialApp(
        home: Scaffold(
      backgroundColor: HexColor("#C9B3AF"),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Fluttery",
            style: TextStyle(
              color: HexColor("#F5FFF0"),
            ),
          ),
        ),
        backgroundColor: HexColor("#6B443D"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: SizedBox(
                  width: 360,
                  child: Question(
                    questions[_indexQuestion],
                  ),
                )),
            SizedBox(
              width: 200,
              child: Answer(_answerQuestion),
            ),
            SizedBox(
              width: 200,
              child: Answer(_answerQuestion),
            ),
            SizedBox(
              width: 200,
              child: Answer(_answerQuestion),
            ),
            SizedBox(
              width: 200,
              child: Answer(_answerQuestion),
            ),
          ],
        ),
      ),
    ));
  }
}
