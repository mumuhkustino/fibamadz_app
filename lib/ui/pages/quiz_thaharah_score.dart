part of 'pages.dart';
// import 'package:flutter/material.dart';

class QuizThaharahScore extends StatefulWidget {
  int score;
  QuizThaharahScore({this.score});

  @override
  _QuizThaharahScoreState createState() => _QuizThaharahScoreState(score);
}

class _QuizThaharahScoreState extends State<QuizThaharahScore> {
  int score;
  _QuizThaharahScoreState(this.score);
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
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  // BUTTON PREVIOUS
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 56,
                    child: Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              if (!isClickedSearch) {
                                context.bloc<PageBloc>().add(GoToQuizPage());
                              } else {
                                setState(() {});
                              }
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width / 8,
                                child: Icon(
                                    (!isClickedSearch)
                                        ? Icons.arrow_back_ios
                                        : Icons.clear,
                                    color: Colors.black.withOpacity(0.54))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // END OF BUTTON PREVIOUS

                  // TITLE DAN SUBTITLE
                  Column(
                    children: [
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
                    ],
                  ),

                  //
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Text(
                      '$score',
                      style: blackTextFont.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),

                  // BUTTON BACK TO MENU
                  Container(
                    width: 200,
                    height: 36,
                    margin: EdgeInsets.only(top: 220),
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
                        // Navigator.of(context).push(MaterialPageRoute(
                          // builder: (context) => MainPage(),
                        // ));
                        context.bloc<PageBloc>().add(GoToMainPage());
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
