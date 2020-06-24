part of 'pages.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
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
                        margin: EdgeInsets.only(top: 20, bottom: 54),
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
                            Container(
                              margin: EdgeInsets.only(top: 48),
                              alignment: Alignment.center,
                              child: Text(
                                "Pilih Kategori Video",
                                style: blackTextFont.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w700
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(bottom: 48),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/icons/ramadhan-mubarak/png/muslim-man.png"))),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Thaharah",
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
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Sholat",
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
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Puasa",
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
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Zakat",
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
                        margin: EdgeInsets.only(bottom: 24),
                        child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Jenazah",
                                  style: whiteTextFont.copyWith(fontSize: 24),
                                ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
