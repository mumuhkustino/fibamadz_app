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
          return;
        },
        child: Scaffold(
          body: Container(
            color: colorYellow,
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 22),
                      height: 56,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                context.bloc<PageBloc>().add(GoToSplashPage());
                              },
                              child: Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Icon(Icons.arrow_back_ios,
                                      color: Colors.black)),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Pilih Kategori",
                              style: blackTextFont.copyWith(
                                  fontSize: 24, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 46,
                      margin: EdgeInsets.only(top: 164, bottom: 24),
                      child: RaisedButton(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                  'assets/icons/ramadhan-mubarak/png/ramadan-sunrise.png'),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Muqoddimah",
                                style: whiteTextFont.copyWith(fontSize: 24),
                              ),
                            ],
                          ),
                          color: colorLightBlue,
                          onPressed: () {
                            context.bloc<PageBloc>().add(GoToMuqoddimahPage());
                          }),
                    ),
                    Container(
                      width: 300,
                      height: 46,
                      margin: EdgeInsets.only(bottom: 24),
                      child: RaisedButton(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Materi",
                                style: whiteTextFont.copyWith(fontSize: 24),
                              ),
                              SizedBox(
                                width: 56,
                              ),
                              Image.asset(
                                  'assets/icons/ramadhan-mubarak/png/quran-book.png'),
                            ],
                          ),
                          color: colorLightBlue,
                          onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                          }),
                    ),
                    Container(
                      width: 300,
                      height: 46,
                      margin: EdgeInsets.only(bottom: 24),
                      child: RaisedButton(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                  'assets/icons/ramadhan-mubarak/png/qibla.png'),
                              SizedBox(
                                width: 56,
                              ),
                              Text(
                                "Quiz",
                                style: whiteTextFont.copyWith(fontSize: 24),
                              ),
                            ],
                          ),
                          color: colorLightBlue,
                          onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                          }),
                    ),
                    Container(
                      width: 300,
                      height: 46,
                      margin: EdgeInsets.only(bottom: 72),
                      child: RaisedButton(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Video Praktik",
                                style: whiteTextFont.copyWith(fontSize: 24),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Image.asset(
                                  'assets/icons/ramadhan-mubarak/png/muslim-man.png'),
                            ],
                          ),
                          color: colorLightBlue,
                          onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
