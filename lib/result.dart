import 'package:flutter/material.dart';
import './question.dart';
import 'package:hexcolor/hexcolor.dart';

class Result extends StatelessWidget {
  final double resultScore;

  const Result(this.resultScore, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10.00) {
      resultText =
          'You succesfully completed the quiz and scored $resultScore points 🤎! \n Want to try again?';
    } else if (resultScore > 15.00 && resultScore <= 25.00) {
      resultText =
          'You are good! You completed the quiz and scored $resultScore points 🤎! \n Wanto to try again?';
    } else if (resultScore > 25.00 && resultScore <= 40.00) {
      resultText =
          'You are great! You completed the quiz and scored $resultScore points 🤎! \n Wanto to try again?';
    } else {
      resultText =
          'You are stunning! You completed the quiz and scored $resultScore points 🤎! \n Wanto to try again?';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: SizedBox(
                      width: 360,
                      child: Question(
                        resultPhrase,
                      ),
                    )),
                ElevatedButton(
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'Try again',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: HexColor("#FEFEFE"),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(HexColor("#915C53"))),
                  onPressed: null,
                )
              ],
            )));
  }
}
