part of 'pages.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  _launchVidThaharah() async {
    const url =
        'https://www.youtube.com/playlist?list=PLk0nwjLBW6mZ5NTq9EE7uK4bTDmUkdPON';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidSholat() async {
    const url =
        'https://www.youtube.com/playlist?list=PLk0nwjLBW6maEYw1idb9X7NDs54QqLWRN';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidPuasa() async {
    const url =
        'https://www.youtube.com/playlist?list=PLk0nwjLBW6mY8NIdTVNy6QakPE4ApgipW';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidZakat() async {
    const url =
        'https://www.youtube.com/playlist?list=PLk0nwjLBW6mYzCYYFgfrIidbjoCJdQeUQ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidJenazah() async {
    const url =
        'https://www.youtube.com/playlist?list=PLk0nwjLBW6mZLFFUVnwRbe6yK-UiXwRCw';
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
              margin: EdgeInsets.only(bottom: 48, top: 36),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/icons/ramadhan-mubarak/png/muslim-man.png"))),
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
                color: colorLightBlue,
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
                color: colorLightBlue,
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
                color: colorLightBlue,
                onPressed: _launchVidZakat,
              ),
            ),
            // Button Jenazah
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
                onPressed: _launchVidJenazah,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
