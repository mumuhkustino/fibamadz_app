part of 'pages.dart';

class QuizThaharahPage extends StatefulWidget {
  @override
  _QuizThaharahPageState createState() => _QuizThaharahPageState();
}

class _QuizThaharahPageState extends State<QuizThaharahPage> {
  bool isClickedSearch = false;
  String searchText;
  String tempText;
  final text =
      '''Ahlussunnah wal Jama’ah berhaluan salah satu Madzhab yang empat. Seluruh ummat Islam di dunia dan para ulamanya telah mengakui bahwa Imam yang empat ialah Imam Hanafi, Imam Maliki, Imam Syafi’i dan Imam Ahmad Ibnu Hambal telah memenuhi persyaratan sebagai Mujtahid. Hal itu dikarenakan ilmu, amal dan akhlaq yang dimiliki oleh mereka. Maka ahli fiqih memfatwakan bagi umat Islam wajib mengikuti salah satu madzhab yang empat tersebut.''';

  final q1 = 
  '''
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
            children: [
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

                  // QUESTION TEXT
                  Container(
                    margin: EdgeInsets.only(top: 24, left: 12),
                    child: Row(
                      children: <Widget>[
                        Text(
                          q1,
                          style: blackTextFont.copyWith(fontSize: 14)
                        )
                      ],
                    ),

                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
