part of 'pages.dart';

class MateriThaharahPage extends StatefulWidget {
  @override
  _MateriThaharahPageState createState() => _MateriThaharahPageState();
}

class _MateriThaharahPageState extends State<MateriThaharahPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMateriPage());
        return;
      },
      child: Scaffold(
        backgroundColor: colorYellow,
        body: Column(
          children: [
            // BUTTON KEMBALI KE MATERI PAGE
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 22),
              height: 56,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        context.bloc<PageBloc>().add(GoToMateriPage());
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 8,
                          child: Icon(Icons.arrow_back_ios,
                              color: Colors.black.withOpacity(0.54))),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  // TITLE MATERI
                  Center(
                    child: Text(
                      "Materi",
                      style: blackTextFont.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                  // SUBTITLE
                  Container(
                    alignment: Alignment.center,
                    child: Text("Thaharah",
                        style: blackTextFont.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w700)),
                  ),
                  // ICON UTAMA
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(bottom: 48, top: 36),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/icons/ramadhan-mubarak/png/islamic-ghusl.png"))),
                  ),
                  // BUTTON WUDU
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
                              "1. Wudu",
                              style: whiteTextFont.copyWith(fontSize: 22),
                            ),
                          ],
                        ),
                        color: colorDarkGrey,
                        onPressed: () {
                          context
                              .bloc<PageBloc>()
                              .add(GoToMateriThaharahWuduPage());
                        }),
                  ),
                  // BUTTON TAYAMUM
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
                              "2. Tayamum",
                              style: whiteTextFont.copyWith(fontSize: 22),
                            ),
                          ],
                        ),
                        color: colorDarkGrey,
                        onPressed: () {
                            context.bloc<PageBloc>().add(GoToMateriThaharahTayamumPage());
                        }),
                  ),
                  // BUTTON MANDI BESAR
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
                              "3. Mandi Besar",
                              style: whiteTextFont.copyWith(fontSize: 22),
                            ),
                          ],
                        ),
                        color: colorDarkGrey,
                        onPressed: () {
                            context.bloc<PageBloc>().add(GoToMateriThaharahMandiBesarPage());
                        }),
                  ),
                  // BUTTON MENGHILANGKAN NAJIS
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
                              "4. Menghilangkan Najis",
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
            )
          ],
        ),
      ),
    );
  }
}
