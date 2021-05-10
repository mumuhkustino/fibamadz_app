part of 'pages.dart';

class QuizThaharahPage extends StatefulWidget {
  @override
  _QuizThaharahPageState createState() => _QuizThaharahPageState();
}

class _QuizThaharahPageState extends State<QuizThaharahPage> {
  bool isClickedSearch = false;

  final q1 = '''
  Q1 :
  Rukun Wudu ada berapa?
  ''';
  final q2 = '''
  Q2 :
  Najis terbagi menjadi ? 
  ''';

  @override
  Widget build(BuildContext context) {
    verdict = [false, false];
    score = 0;

    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToQuizPage());
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              color: colorGreenCream,
              child: Column(
                children: [
                  // BUTTON PREVIOUS
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 22),
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
                  // TITLE DAN SUBTITLE
                  Center(
                      child: Text(
                        "Kuis",
                        style: blackTextFont.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Thaharah",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )),
                  ),
                ],
              ),
            ),
            // END OF BUTTON PREVIOUS
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      // QUESTION 1
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Row(
                          children: <Widget>[
                            Text(q1, style: blackTextFont.copyWith(fontSize: 14))
                          ],
                        ),
                      ),

                      // ANSWER BUTTON Q1
                      Center(
                        child: RadioGroupThaharah(1 - 1),
                      ),

                      // QUESTION 2
                      Container(
                        margin: EdgeInsets.only(top: 24, left: 12),
                        child: Row(
                          children: <Widget>[
                            Text(q2, style: blackTextFont.copyWith(fontSize: 14))
                          ],
                        ),
                      ),

                      // ANSWER BUTTON Q2
                      Center(
                        child: RadioGroupThaharah(2 - 1),
                      ),

                      // BUTTON SUBMIT
                      Container(
                        width: 200,
                        height: 36,
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Submit",
                                style: whiteTextFont.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          color: colorGreen,
                          onPressed: buildConfirmationDialog,
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

  buildConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          backgroundColor: colorTextWhite.withOpacity(0.1),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // TEXT ARE YOU SURE
                Container(
                  child: Text(
                    "Apakah anda yakin ?",
                    style: whiteTextFont.copyWith(fontSize: 24),
                  ),
                ),

                // BUTTON CONFIRMATION YES
                Container(
                  width: 200,
                  height: 36,
                  margin: EdgeInsets.only(top: 24),
                  child: RaisedButton(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ya",
                          style: whiteTextFont.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    color: colorGreen,
                    onPressed: () {
                      // countScore();
                      context.bloc<PageBloc>().add(GoToQuizThaharahScore());
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                ),

                // BUTTON CONFIRMATION NO
                Container(
                  width: 200,
                  height: 36,
                  margin: EdgeInsets.only(top: 24),
                  child: RaisedButton(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Tidak",
                          style: blackTextFont.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    color: colorTextWhite,
                    onPressed: (){
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class RadioGroupThaharah extends StatefulWidget {
  int qN = -1;

  RadioGroupThaharah(int qNInput) {
    qN = qNInput;
  }

  @override
  State<StatefulWidget> createState() {
    return new RadioGroupStateThaharah(qN);
  }
}

class RadioGroupStateThaharah extends State<RadioGroupThaharah> {
  List<MyChoice> choices = [];

  // TERDAPAT 2 PERTANYAAN MAKA KITA BUTUH 2 SET RADIO BUTTON
  RadioGroupStateThaharah(int qN) {
    if (qN == 0) {
      this.choices = [
        MyChoice(index: 0, choice: "2", verdict: false, questionN: 0),
        MyChoice(index: 1, choice: "3", verdict: false, questionN: 0),
        MyChoice(index: 2, choice: "4", verdict: true, questionN: 0),
        MyChoice(index: 3, choice: "5", verdict: false, questionN: 0),
      ];
    } else {
      this.choices = [
        MyChoice(index: 0, choice: "1", verdict: false, questionN: 1),
        MyChoice(index: 1, choice: "2", verdict: false, questionN: 1),
        MyChoice(index: 2, choice: "3", verdict: true, questionN: 1),
      ];
    }
  }

  String defaultChoice = "";
  int defaultIndex = -1;
  int defaulQuestionN = -1;
  bool defaulVerdict = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          children: <Widget>[
            Container(
                child: Column(

                  // PEMBENTUKAN RADIO LIST TILE
                    children: choices
                        .map(
                          (data) => RadioListTile(
                            title: Text(
                              '${data.choice}',style: blackTextFont.copyWith(fontSize: 14),),
                            groupValue: defaultIndex,
                            value: data.index,
                            activeColor: colorGreen,
                            onChanged: (value) {
                              setState(() {
                                defaultChoice = data.choice;
                                defaultIndex = data.index; 
                                defaulVerdict = data.verdict;
                                defaulQuestionN = data.questionN;
                              });
                              saveVerdictState();
                            },
                          ),
                        )
                        .toList()))
          ],
        ),
        Padding(padding: EdgeInsets.all(2)),
      ],
    );
  }

  saveVerdictState() {
    score = 0;
    verdict[defaulQuestionN] = defaulVerdict ? true : false;
    verdict.forEach((element) {
      score += element ? 50 : 0;
    });
  }
}
