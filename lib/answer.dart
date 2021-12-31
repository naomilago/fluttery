import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  const Answer(this.selectHandler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        "Open-source",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: HexColor("#FEFEFE"),
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(HexColor("#915C53"))),
      onPressed: selectHandler,
    );
  }
}
