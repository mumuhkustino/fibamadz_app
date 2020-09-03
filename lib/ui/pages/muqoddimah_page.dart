part of 'pages.dart';

class MuqoddimahPage extends StatefulWidget {
  @override
  _MuqoddimahPageState createState() => _MuqoddimahPageState();
}

class _MuqoddimahPageState extends State<MuqoddimahPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        backgroundColor: colorLightGreen,
        body: Column(
          children: [
            // BUTTON KEMBALI KE MAIN PAGE
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
            // TITLE MUQODDIMAH PAGE
            Center(
              child: Text(
                "Muqoddimah",
                style: blackTextFont.copyWith(
                    fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            // ICON MUQODDIMAH PAGE
            Container(
              height: 70,
              margin: EdgeInsets.only(top: 24, bottom: 40),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/icons/ramadhan-mubarak/png/ramadan-sunrise.png"))),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      // BUTTON KE MUQODDIMAH KITAB PAGE
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
                                  "Muqoddimah Kitab",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToMuqoddimahKitabPage());
                            }),
                      ),
                      // BUTTON KE MUQODDIMAH IMAM SYAFII PAGE
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
                                  "Sejarah Imam Syafii",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToMuqoddimahImamSyafiiPage());
                            }),
                      ),
                      // BUTTON KE MUQODDIMAH IMAM MALIK PAGE
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
                                  "Sejarah Imam Malik",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToMuqoddimahImamMalikPage());
                            }),
                      ),
                      // BUTTON KE MUQODDIMAH IMAM HANAFI PAGE
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
                                  "Sejarah Imam Hanafi",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToMuqoddimahImamHanafiPage());
                            }),
                      ),
                      // BUTTON KE MUQODDIMAH IMAM AHMAD PAGE
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
                                  "Sejarah Imam Ahmad",
                                  style: whiteTextFont.copyWith(fontSize: 22),
                                ),
                              ],
                            ),
                            color: colorGreen,
                            onPressed: () {
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToMuqoddimahImamAhmadPage());
                            }),
                      ),
                    ],
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
