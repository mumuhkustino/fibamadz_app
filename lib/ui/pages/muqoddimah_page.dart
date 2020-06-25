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
        body: Container(
          color: colorYellow,
          child: ListView(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 22),
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
                          ],
                        ),
                      ),
                      Center(
                        child: Text(
                          "Muqoddimah",
                          style: blackTextFont.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(top: 24, bottom: 48),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/icons/ramadhan-mubarak/png/ramadan-sunrise.png"))),
                      ),
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
                            color: colorLightBlue,
                            onPressed: () {
                            context.bloc<PageBloc>().add(GoToMuqoddimahKitabPage());
                            }),
                      ),
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
                            color: colorLightBlue,
                            onPressed: () {
                            context.bloc<PageBloc>().add(GoToMuqoddimahImamSyafiiPage());
                            }),
                      ),
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
