part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double getSmallSizeCloud(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 5;

  double getBigSizeCloud(BuildContext context) =>
      MediaQuery.of(context).size.width * 4 / 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorYellow,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 110,
                    margin: EdgeInsets.only(top: 77),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/icons/ramadhan-mubarak/png/star-and-crescent-moon.png"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 57, bottom: 18),
                    child: Text(
                      "FIBAMADZ",
                      style: blackTextFont.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    "Platform asik dan lengkap\nuntuk belajar Islam",
                    style: blackTextFont.copyWith(
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 250,
                height: 46,
                margin: EdgeInsets.only(top: 70, bottom: 120),
                child: RaisedButton(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Mulai",
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                    color: colorPink,
                    onPressed: () {
//                    context.bloc<PageBloc>().add(GoToMainPage());
                    }),
              ),
            ),
            Positioned(
              right: -MediaQuery.of(context).size.width / 4,
              child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height * 6 / 9,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/cloud.png")))
                  ),
            ),
            Positioned(
              left: -MediaQuery.of(context).size.width * 4 / 9,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/cloud.png")))
                  ),
            ),
          ],
        ));
  }
}
