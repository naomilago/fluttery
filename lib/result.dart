import 'package:flutter/material.dart';
import './question.dart';
import 'package:hexcolor/hexcolor.dart';

class Result extends StatelessWidget {
  final double resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    final score = num.parse(resultScore.toStringAsFixed(2));

    if (score <= 10.00) {
      resultText =
          'You tried it and scored $score points 🤎! \n Want to try again?';
    } else if (score > 15.00 && score <= 25.00) {
      resultText =
          'You did it and scored $score points 🤎! \n Want to try again?';
    } else if (score > 25.00 && score <= 40.00) {
      resultText =
          'You got it and scored $score points 🤎! \n Want to try again?';
    } else {
      resultText =
          'You nailed it and scored $score points 🤎! \n Want to try again?';
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
                    padding: const EdgeInsets.only(bottom: 32),
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
                  onPressed: resetHandler,
                )
              ],
            )));
  }
}
