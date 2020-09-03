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
              child: Text("Jenazah",
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
                          "assets/icons/ramadhan-mubarak/png/islamic-prayer.png"))),
            ),
            Expanded(
                child: ListView(
              children: [
                Column(
                  children: [
                    // BUTTON MATERI UMUM
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
                                "Materi Umum",
                                style: whiteTextFont.copyWith(fontSize: 22),
                              ),
                            ],
                          ),
                          color: colorGreen,
                          onPressed: () {
                            context
                                .bloc<PageBloc>()
                                .add(GoToMateriJenazahUmumPage());
                          }),
                    ),
                    // BUTTON MEMANDIKAN
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
                                "Memandikan",
                                style: whiteTextFont.copyWith(fontSize: 22),
                              ),
                            ],
                          ),
                          color: colorGreen,
                          onPressed: () {
                            context
                                .bloc<PageBloc>()
                                .add(GoToMateriJenazahMemandikanPage());
                          }),
                    ),
                    // BUTTON MENGKAFANI
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
                                "Mengkafani",
                                style: whiteTextFont.copyWith(fontSize: 22),
                              ),
                            ],
                          ),
                          color: colorGreen,
                          onPressed: () {
                            context
                                .bloc<PageBloc>()
                                .add(GoToMateriJenazahMengkafaniPage());
                          }),
                    ),
                    // BUTTON MENYOLATKAN
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
                                "Menyolatkan",
                                style: whiteTextFont.copyWith(fontSize: 22),
                              ),
                            ],
                          ),
                          color: colorGreen,
                          onPressed: () {
                            context
                                .bloc<PageBloc>()
                                .add(GoToMateriJenazahMenyolatkanPage());
                          }),
                    ),
                    // BUTTON MENGUBURKAN
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
                                "Menguburkan",
                                style: whiteTextFont.copyWith(fontSize: 22),
                              ),
                            ],
                          ),
                          color: colorGreen,
                          onPressed: () {
                            context
                                .bloc<PageBloc>()
                                .add(GoToMateriJenazahMenguburkanPage());
                          }),
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
