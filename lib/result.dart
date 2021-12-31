class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

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
                        'You did it, girl 🤎',
                      ),
                    )),
                ElevatedButton(
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'Restart',
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
                  onPressed: _restart,
                )
              ],
            )));
  }
}
