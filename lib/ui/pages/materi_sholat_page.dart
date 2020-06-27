part of 'pages.dart';

class MateriSholatPage extends StatefulWidget {
  @override
  _MateriSholatPageState createState() => _MateriSholatPageState();
}

class _MateriSholatPageState extends State<MateriSholatPage> {
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
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 22),
              height: 56,
              child: Align(
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
            ),
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
              child: Text("Sholat",
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
                          "assets/icons/ramadhan-mubarak/png/islamic-friday-prayer.png"))),
            ),
            // BUTTON SHOLAT FARDU
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
                        "1. Sholat Fardu",
                        style: whiteTextFont.copyWith(fontSize: 22),
                      ),
                    ],
                  ),
                  color: colorDarkGrey,
                  onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                  }),
            ),
            // BUTTON SHOLAT SUNAT
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
                        "2. Sholat Sunat",
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
      ),
    );
  }
}
