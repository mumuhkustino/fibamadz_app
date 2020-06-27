part of 'pages.dart';

class MyChoice {
  String choice;
  int index;
  MyChoice({this.index, this.choice});
}

class QuizThaharahPage extends StatefulWidget {
  @override
  _QuizThaharahPageState createState() => _QuizThaharahPageState();
}

enum SingingCharacter { _4, _5 }

class _QuizThaharahPageState extends State<QuizThaharahPage> {
  SingingCharacter _character = SingingCharacter._4;

  bool isClickedSearch = false;
  String searchText;
  String tempText;
  final text =
      '''Ahlussunnah wal Jama’ah berhaluan salah satu Madzhab yang empat. Seluruh ummat Islam di dunia dan para ulamanya telah mengakui bahwa Imam yang empat ialah Imam Hanafi, Imam Maliki, Imam Syafi’i dan Imam Ahmad Ibnu Hambal telah memenuhi persyaratan sebagai Mujtahid. Hal itu dikarenakan ilmu, amal dan akhlaq yang dimiliki oleh mereka. Maka ahli fiqih memfatwakan bagi umat Islam wajib mengikuti salah satu madzhab yang empat tersebut.''';

  final q1 = '''
  Q1 :
  Rukun Islam ada berapa?''';

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
                  // BUTTON BACK
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
                                setState(() {
                                  searchText = "";
                                  isClickedSearch = false;
                                });
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

                  // TITLE
                  Center(
                      child: Text(
                    "Quiz",
                    style: blackTextFont.copyWith(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  )),

                  // SUBTITLE
                  Center(
                      child: Text(
                    "Thaharah",
                    style: blackTextFont.copyWith(fontSize: 14),
                  )),

                  // QUESTION
                  Center(
                    child: RadioGroup(),
                  ),

                  // QUESTION TEXT
                  Container(
                    margin: EdgeInsets.only(top: 24, left: 12),
                    child: Row(
                      children: <Widget>[
                        Text(q1, style: blackTextFont.copyWith(fontSize: 14))
                      ],
                    ),
                  ),

                  // BUTTON submit
                  Container(
                    width: 100,
                    height: 36,
                    margin: EdgeInsets.only(bottom: 24),
                    child: RaisedButton(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
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
                          //                            context.bloc<PageBloc>().add(GoToMainPage());
                        }),
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
  @override
  State<StatefulWidget> createState() {
    return new RadioGroupState();
  }
}

class RadioGroupState extends State<RadioGroup> {
  String default_choice = "4";
  int default_index = 0;

  List<MyChoice> choices = [
    MyChoice(index: 0, choice: "4"),
    MyChoice(index: 1, choice: "5"),
    MyChoice(index: 2, choice: "6"),
    MyChoice(index: 3, choice: "7"),
  ];

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
                                  default_choice = data.choice;
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