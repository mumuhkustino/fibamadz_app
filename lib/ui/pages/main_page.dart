part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          context.bloc<PageBloc>().add(GoToSplashPage());
          return Future.value(false);
        },
        child: Scaffold(
          backgroundColor: colorLightGreen,
          body: Column(
            children: [
              // BUTTON KEMBALI KE SPLASH PAGE
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 22),
                height: 56,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      context.bloc<PageBloc>().add(GoToSplashPage());
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width / 8,
                        child: Icon(Icons.arrow_back_ios,
                            color: Colors.black.withOpacity(0.54))),
                  ),
                ),
              ),
              // TITLE PILIH KATEGORI
              Center(
                child: Text(
                  "Pilih Kategori",
                  style: blackTextFont.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              // ICON MUQODDIMAH PAGE
              Container(
                height: 70,
                margin: EdgeInsets.only(top: 24, bottom: 40),
              ),
              Expanded(
                child:
                    ListView(
                      children: [
                        Column(
                          children: [
                            // BUTTON MUQODDIMAH
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
                                      Image.asset(
                                          'assets/icons/ramadhan-mubarak/png/ramadan-sunrise-white.png'),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        "Muqoddimah",
                                        style: whiteTextFont.copyWith(fontSize: 22),
                                      ),
                                    ],
                                  ),
                                  color: colorGreen,
                                  onPressed: () {
                                    context.bloc<PageBloc>().add(GoToMuqoddimahPage());
                                  }),
                            ),

                            // BUTTON MATERI
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
                                        "Materi",
                                        style: whiteTextFont.copyWith(fontSize: 22),
                                      ),
                                      SizedBox(
                                        width: 56,
                                      ),
                                      Image.asset(
                                          'assets/icons/ramadhan-mubarak/png/quran-book-white.png'),
                                    ],
                                  ),
                                  color: colorGreen,
                                  onPressed: () {
                                    context.bloc<PageBloc>().add(GoToMateriPage());
                                  }),
                            ),

                            // BUTTON KUIS
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
                                      Image.asset(
                                          'assets/icons/ramadhan-mubarak/png/qibla-white.png'),
                                      SizedBox(
                                        width: 56,
                                      ),
                                      Text(
                                        "Kuis",
                                        style: whiteTextFont.copyWith(fontSize: 22),
                                      ),
                                    ],
                                  ),
                                  color: colorGreen,
                                  onPressed: () {
                                    context.bloc<PageBloc>().add(GoToQuizPage());
                                  }),
                            ),

                            // BUTTON VIDEO PRAKTIK
                            Container(
                              width: 300,
                              height: 46,
                              margin: EdgeInsets.only(bottom: 72),
                              child: RaisedButton(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Video Praktik",
                                        style: whiteTextFont.copyWith(fontSize: 22),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Image.asset(
                                          'assets/icons/ramadhan-mubarak/png/muslim-man-white.png'),
                                    ],
                                  ),
                                  color: colorGreen,
                                  onPressed: () {
                                    context.bloc<PageBloc>().add(GoToVideoPage());
                                  }),
                            ),
                          ],
                        ),
                      ],
                    )

              )
            ],
          ),
        ));
  }
}
