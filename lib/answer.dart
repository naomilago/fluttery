import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: SizedBox(
        width: 200,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: HexColor("#FEFEFE"),
          ),
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(HexColor("#915C53"))),
      onPressed: selectHandler,
    );
  }
}
