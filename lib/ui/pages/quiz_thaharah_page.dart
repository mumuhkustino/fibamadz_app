part of 'pages.dart';

// Data class
class MyChoice {
  String choice;
  int index;
  MyChoice({this.index, this.choice});
}

class QuizThaharahPage extends StatefulWidget {
  @override
  _QuizThaharahPageState createState() => _QuizThaharahPageState();
}

class _QuizThaharahPageState extends State<QuizThaharahPage> {
  bool isClickedSearch = false;

  final q1 = '''
  Q1 :
  Rukun Wudu ada berapa?''';
  final q2 = '''
  Q2 :
  Najis terbagi menjadi ? ''';

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
                      )),
                      Center(
                          child: Text(
                        "Thaharah",
                        style: blackTextFont.copyWith(fontSize: 14),
                      )),
                    ],
                  ),

                  // QUESTION 1
                  Container(
                    margin: EdgeInsets.only(top: 24, left: 12),
                    child: Row(
                      children: <Widget>[
                        Text(q1, style: blackTextFont.copyWith(fontSize: 14))
                      ],
                    ),
                  ),

                  // ANSWER BUTTON Q1
                  Center(
                    child: RadioGroup(1),
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

                  // RADIO BUTTON
                  Center(
                    child: RadioGroup(2),
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
                      color: colorPink,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                                backgroundColor:
                                    colorTextWhite.withOpacity(0.1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    // TEXT ARE YOU SURE
                                    Container(
                                      margin: EdgeInsets.only(top: 200),
                                      child: Text(
                                        "Are you sure ?",
                                        style: whiteTextFont.copyWith(
                                            fontSize: 24),
                                      ),
                                    ),

                                    // BUTTON CONFIRMATION YES
                                    Container(
                                      // color: colorBluePastel,
                                      width: 200,
                                      height: 36,
                                      margin: EdgeInsets.only(top: 24),
                                      child: RaisedButton(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Yes",
                                              style: whiteTextFont.copyWith(
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        color: colorBluePastel,
                                        onPressed: (){
                                          context.bloc<PageBloc>().add(GoToQuizThaharahResult());
                                        },
                                      ),
                                    ),

                                    // BUTTON CONFIRMATION NO
                                    Container(
                                      // color: colorTextWhite,
                                      width: 200,
                                      height: 36,
                                      margin: EdgeInsets.only(top: 24),
                                      child: RaisedButton(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "No",
                                              style: blackTextFont.copyWith(
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        color: colorTextWhite,
                                        onPressed: null,
                                      ),
                                    ),
                                  ],
                                ));
                          },
                        );
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

class RadioGroup extends StatefulWidget {
  int Qn;

  RadioGroup(int QnInput) {
    Qn = QnInput;
  }

  @override
  State<StatefulWidget> createState() {
    return new RadioGroupState(Qn);
  }
}

class RadioGroupState extends State<RadioGroup> {
  List<MyChoice> choices = [];

  // ANSWER BUTTON UNTUK SETIAP QUESTION BERBEDA2
  // JADI PAKAI INI
  RadioGroupState(int QnInput) {
    if (QnInput == 1) {
      this.choices = [
        MyChoice(index: 0, choice: "2"),
        MyChoice(index: 1, choice: "3"),
        MyChoice(index: 2, choice: "4"),
        MyChoice(index: 3, choice: "5"),
      ];
    } else {
      this.choices = [
        MyChoice(index: 0, choice: "1"),
        MyChoice(index: 1, choice: "2"),
        MyChoice(index: 2, choice: "3"),
      ];
    }
  }
  String default_choice = "";
  int default_index = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          children: <Widget>[
            Container(
                child: Column(
                    children: choices
                        .map((data) => RadioListTile(
                              title: Text(
                                '${data.choice}',
                              ),
                              groupValue: default_index,
                              value: data.index,
                              onChanged: (value) {
                                setState(() {
                                  // default_choice = data.choice;
                                  default_index = data.index;
                                });
                              },
                            ))
                        .toList()))
          ],
        ),
        Padding(padding: EdgeInsets.all(2)),
        Text('$default_choice')
      ],
    );
  }
}
