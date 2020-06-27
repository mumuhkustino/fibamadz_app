part of 'pages.dart';

class MateriPage extends StatefulWidget {
  @override
  _MateriPageState createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        backgroundColor: colorYellow,
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
                    child: Text("Pilih Materi",
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
                                "assets/icons/ramadhan-mubarak/png/quran-book.png"))),
                  ),
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
                        color: colorLightBlue,
                        onPressed: () {
                          context
                              .bloc<PageBloc>()
                              .add(GoToMateriThaharahPage());
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
                        color: colorLightBlue,
                        onPressed: () {
                          context.bloc<PageBloc>().add(GoToMateriSholatPage());
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
                        color: colorLightBlue,
                        onPressed: () {
                          //  context.bloc<PageBloc>().add(GoToMainPage());
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
                        color: colorLightBlue,
                        onPressed: () {
                          context.bloc<PageBloc>().add(GoToMateriZakatPage());
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
                        color: colorLightBlue,
                        onPressed: () {
                          context.bloc<PageBloc>().add(GoToMateriJenazahPage());
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
