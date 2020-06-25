part of 'pages.dart';

class MateriJenazahPage extends StatefulWidget {
  @override
  _MateriJenazahPageState createState() => _MateriJenazahPageState();
}

class _MateriJenazahPageState extends State<MateriJenazahPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMateriPage());
        return;
      },
      child: Scaffold(
        body: Container(
          color: colorYellow,
          child: ListView(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 56,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  context
                                      .bloc<PageBloc>()
                                      .add(GoToMateriPage());
                                },
                                child: Container(
                                    margin: EdgeInsets.only(left: 16),
                                    child: Icon(Icons.arrow_back_ios,
                                        color: Colors.black)),
                              ),
                            ),

                            // TITLE MATERI
                            Center(
                              child: Text(
                                "Materi",
                                style: blackTextFont.copyWith(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // SUBTITLE 
                      Container(
                              // height: 50,
                              // margin: EdgeInsets.only(top: 5),
                              alignment: Alignment.center,
                              child: Text(
                                "Jenazah",
                                style: blackTextFont.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w700
                                )
                              ),
                            ),

                            // ICON UTAMA
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(bottom: 48, top: 36),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/icons/ramadhan-mubarak/png/islamic-prayer.png"))),
                      ),

                      // BUTTON 
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
                                  "1. Memandikan",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorDarkGrey,
                            onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                            }),
                      ),

                      // BUTTON 
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
                                  "2. Menyolatkan",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorDarkGrey,
                            onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                            }),
                      ),

                      // BUTTON
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
                                  "3. Mengkafani",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorDarkGrey,
                            onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
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
                                  "4. Menguburkan",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorDarkGrey,
                            onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                            }),
                      ),
                    ],
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
