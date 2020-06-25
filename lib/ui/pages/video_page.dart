part of 'pages.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {

  // const url_thaharah = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6mZ5NTq9EE7uK4bTDmUkdPON';
  // String url_sholat = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6maEYw1idb9X7NDs54QqLWRN';
  // String url_puasa = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6mY8NIdTVNy6QakPE4ApgipW';
  // String url_zakat = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6mYzCYYFgfrIidbjoCJdQeUQ';
  // String url_jenazah = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6mZLFFUVnwRbe6yK-UiXwRCw';
  
  _launchVidThaharah() async {
    const url = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6mZ5NTq9EE7uK4bTDmUkdPON';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidSholat() async {
    const url = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6maEYw1idb9X7NDs54QqLWRN';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidPuasa() async {
    const url = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6mY8NIdTVNy6QakPE4ApgipW';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidZakat() async {
    const url = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6mYzCYYFgfrIidbjoCJdQeUQ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchVidJenazah() async {
    const url = 'https://www.youtube.com/playlist?list=PLk0nwjLBW6mZLFFUVnwRbe6yK-UiXwRCw';
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
                                      .add(GoToMainPage());
                                },

                                // Icon Arrow Back
                                child: Container(
                                    margin: EdgeInsets.only(left: 16),
                                    child: Icon(Icons.arrow_back_ios,
                                        color: Colors.black)),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Video Praktik",
                                style: blackTextFont.copyWith(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      // Subtitle Pilih Kategori Video
                      Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Pilih Kategori Video",
                                style: blackTextFont.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w700
                                )
                              ),
                            ),

                      // Icon Muslim Man 
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(bottom: 48, top: 36),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/icons/ramadhan-mubarak/png/muslim-man.png"))),
                      ),

                      // Button "Thaharah"
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

                      // Button Sholat
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

                      // Button Puasa
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

                            // onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                            // }
                            ),
                      ),

                      // Button Zakat
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
                            // onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                            // }
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
                            // onPressed: () {
//                            context.bloc<PageBloc>().add(GoToMainPage());
                            // }
                            ),
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
