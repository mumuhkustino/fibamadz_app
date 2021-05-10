part of 'pages.dart';

class MuqoddimahImamMalikPage extends StatefulWidget {
  @override
  _MuqoddimahImamMalikPageState createState() =>
      _MuqoddimahImamMalikPageState();
}

class _MuqoddimahImamMalikPageState extends State<MuqoddimahImamMalikPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText = '';
  final text =
      '''Pendirinya adalah Al-Imam Maliki bin Anas Al-Ashbahy. Ia dilahirkan di Madinah pada tahun 93 H dan wafat pada tahun 179 H. Beliau sebagai ahli hadits di Madinah dimana Rasulullah SAW hidup di kota tersebut. Madzhab ini dikenal dengan madzhab Ahli Hadits, bahkan beliau mengutamakan perbuatan ahli Madinah daripada Khabaril Wahid (Hadits yang diriwayatkan oleh perorangan). Karena bagi beliau mustahil ahli Madinah akan berbuat sesuatu yang bertentangan dengan perbuatan Rasul, beliau lebih banyak menitikberatkan kepada hadits, karena menurut beliau perbuatan ahli Madinah termasuk hadits mutawatir. Madzhab ini lahir di Madinah kemudian berkembang ke negara lain khususnya Maroko. Beliau sangat hormat kepada Rasulullah dan cinta, sehingga beliau tidak pernah naik unta di kota Madinah karena hormat kepada makam Rasul.''';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMuqoddimahPage());
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              color: colorGreenCream,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 22),
                    height: 56,
                    child: Row(
                      children: <Widget>[
                        // BUTTON BACK TO MUQODDIMAH PAGE
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              if (!isClickedSearch) {
                                context.bloc<PageBloc>().add(GoToMuqoddimahPage());
                              } else {
                                setState(() {
                                  if (searchController.text.compareTo("") == 0) {
                                    isClickedSearch = false;
                                  } else {
                                    searchController.text = "";
                                    searchText = searchController.text;
                                  }
                                });
                              }
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width / 8,
                                child: Icon(
                                    (!isClickedSearch)
                                        ? Icons.arrow_back_ios
                                        : Icons.clear,
                                    color: Colors.black.withOpacity(0.54))),
                          ),
                        ),
                        // TEXT FIELD SEARCH TEXT
                        Center(
                            child: (isClickedSearch)
                                ? Container(
                                    width: MediaQuery.of(context).size.width * 6 / 8,
                                    child: TextField(
                                      autofocus:
                                          (searchController.text.compareTo("") == 0),
                                      controller: searchController,
                                      decoration: InputDecoration(hintText: "Search"),
                                    ),
                                  )
                                : Container(
                                    width: MediaQuery.of(context).size.width * 6 / 8,
                                  )),
                        // BUTTON SEARCH
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (!isClickedSearch) {
                                  isClickedSearch = true;
                                  isFocusSearch = true;
                                } else {
                                  searchText = searchController.text;
                                  isFocusSearch = false;
                                }
                              });
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width / 8,
                                child: Icon(Icons.search,
                                    color: Colors.black.withOpacity(0.54))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // TITLE SEJARAH IMAM
                  Center(
                      child: Text(
                        "Sejarah Imam",
                        style: blackTextFont.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )),
                  // TITLE MALIK
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Malik",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 0),
                children: [
                  // TEXT SEJARAH IMAM MALIK
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 24, right: 24, bottom: 30),
                    child: SelectableText.rich(
                      searchFromText(text, searchText),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                      style: blackTextFont,
                    ),
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
