part of 'pages.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  _launchVidThaharah() async {
    const url =
        'https://www.youtube.com/playlist?list=PLpZWoHn9QMehmdhJ0qnSRWZeZFxwMFz1N';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidSholat() async {
    const url =
        'https://www.youtube.com/playlist?list=PLpZWoHn9QMehCXzIYfZUv0sudtoscPu8g';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidPuasa() async {
    const url =
        'https://www.youtube.com/playlist?list=PLpZWoHn9QMeiOt8MMBUXRU_40aDvLxZc5';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidZakat() async {
    const url =
        'https://www.youtube.com/playlist?list=PLpZWoHn9QMeiaaiG4pTATh0jZZ8tmS95j';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidJenazah() async {
    const url =
        'https://www.youtube.com/playlist?list=PLpZWoHn9QMejYB8HWnaEfDEmclOsG6CEy';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  // Icon Arrow Back
                  child: Container(
                      width: MediaQuery.of(context).size.width / 8,
                      child: Icon(Icons.arrow_back_ios,
                          color: Colors.black.withOpacity(0.54))),
                ),
              ),
            ),
            // TITLE VIDEO PRAKTIK
            Center(
              child: Text(
                "Video Praktik",
                style: blackTextFont.copyWith(
                    fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            // SUBTITLE PILIH KATEGORI VIDEO
            Container(
              alignment: Alignment.center,
              child: Text("Pilih Kategori Video",
                  style: blackTextFont.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w700)),
            ),
            // ICON MUSLIM MAN
            Container(
              height: 70,
              margin: EdgeInsets.only(bottom: 24, top: 24),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/icons/ramadhan-mubarak/png/muslim-man.png"))),
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
                          onPressed: _launchVidThaharah,
                        ),
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
                          onPressed: _launchVidSholat,
                        ),
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
                          onPressed: _launchVidPuasa,
                        ),
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
                          onPressed: _launchVidZakat,
                        ),
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
                          onPressed: _launchVidJenazah,
                        ),
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
