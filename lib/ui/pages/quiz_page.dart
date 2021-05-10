part of 'pages.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMainPage());
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: colorLightGreen,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 22),
              height: 56,
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    context.bloc<PageBloc>().add(GoToMainPage());
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width / 8,
                      child: Icon(Icons.arrow_back_ios,
                          color: Colors.black.withOpacity(0.54))),
                ),
              ),
            ),
            // TITLE QUIZ
            Center(
              child: Text(
                "Kuis",
                style: blackTextFont.copyWith(
                    fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            // SUBTITLE PILIH KUIS
            Container(
              // height: 50,
              // margin: EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              child: Text("Pilih Kuis",
                  style: blackTextFont.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w700)),
            ),
            // ICON UTAMA
            Container(
              height: 70,
              margin: EdgeInsets.only(bottom: 24, top: 24),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/icons/ramadhan-mubarak/png/qibla.png"))),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      // BUTTON THAHARAH
                      Container(
                        width: 300,
                        height: 46,
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Thaharah",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                               context.bloc<PageBloc>().add(GoToQuizThaharahPage());
                            }),
                      ),
                      // BUTTON SHOLAT
                      Container(
                        width: 300,
                        height: 46,
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Sholat",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                               context.bloc<PageBloc>().add(GoToQuizSholatPage());
                            }),
                      ),
                      // BUTTON PUASA
                      Container(
                        width: 300,
                        height: 46,
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Puasa",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                               context.bloc<PageBloc>().add(GoToQuizPuasaPage());
                            }),
                      ),

                      // BUTTON ZAKAT
                      Container(
                        width: 300,
                        height: 46,
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Zakat",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                               context.bloc<PageBloc>().add(GoToQuizZakatPage());
                            }),
                      ),
                      // BUTTON JENAZAH
                      Container(
                        width: 300,
                        height: 46,
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Jenazah",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                               context.bloc<PageBloc>().add(GoToQuizJenazahPage());
                            }),
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
