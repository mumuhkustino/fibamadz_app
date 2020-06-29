part of 'pages.dart';

class QuizThaharahScore extends StatefulWidget {
  @override
  _QuizThaharahScoreState createState() => _QuizThaharahScoreState();
}

class _QuizThaharahScoreState extends State<QuizThaharahScore> {
  _QuizThaharahScoreState();
  bool isClickedSearch = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToQuizPage());
        return;
      },
      child: Scaffold(
        backgroundColor: colorCream,
        body: Column(
          children: [
            // BUTTON PREVIOUS
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 22),
              height: 56,
            ),
            // END OF BUTTON PREVIOUS
            Center(
              child: Text(
                "Quiz",
                style: blackTextFont.copyWith(
                    fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Text(
                "Thaharah",
                style: blackTextFont.copyWith(fontSize: 14),
              ),
            ),
            // TITLE DAN SUBTITLE
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      // SCORE TEXT
                      Container(
                        margin: EdgeInsets.only(top: 72),
                        child: Center(
                          child: Text(
                            "Score",
                            style: blackTextFont.copyWith(fontSize: 48),
                          ),
                        ),
                      ),
                      //TULISAN SCORE DAN LINGKARAN HIJAU
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 160,
                            margin: EdgeInsets.only(top: 40),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/icons/Ellipse-$score.png"),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 100),
                            child: Text(
                              '$score',
                              style: blackTextFont.copyWith(
                                  fontSize: 24, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),

                      // BUTTON BACK TO MENU
                      Container(
                        width: 200,
                        height: 36,
                        margin: EdgeInsets.only(top: 150),
                        child: RaisedButton(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Back to Menu",
                                style: whiteTextFont.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          color: colorDarkGrey,
                          onPressed: () {
                            context.bloc<PageBloc>().add(GoToMainPage());
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
