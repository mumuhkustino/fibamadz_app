part of 'pages.dart';

class MuqoddimahImamHanafiPage extends StatefulWidget {
  @override
  _MuqoddimahImamHanafiPageState createState() =>
      _MuqoddimahImamHanafiPageState();
}

class _MuqoddimahImamHanafiPageState extends State<MuqoddimahImamHanafiPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  final text =
      '''Dinamakan Hanafi, karena pendirinya Imam Abu Hanifah An-Nu’man bin Tsabit. Beliau lahir pada tahun 80 H di Kufah dan wafat pada tahun 150 H. Madzhab ini dikenal madzhab Ahli Qiyas (akal) karena hadits yang sampai ke Irak sedikit, sehingga beliau banyak mempergunakan Qiyas. Beliau termasuk ulama yang cerdas, pengasih dan ahli tahajud dan fasih membaca Al-Qur’an. Beliau ditawari untuk menjadi hakim pada zaman bani Umayyah yang terakhir, tetapi beliau menolak.
      
Madzhab ini berkembang karena menjadi madzhab pemerintah pada saat Khalifah Harun Al-Rasyid. Kemudian pada masa pemerintahan Abu Ja’far Al-Manshur beliau diminta kembali untuk menjadi Hakim tetapi beliau menolak, dan memilih hidup berdagang, madzhab ini lahir di Kufah.''';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMuqoddimahPage());
        return;
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
                  // TITLE HANAFI
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Hanafi",
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
                  // TEXT SEJARAH IMAM HANAFI
                  Container(
                    margin: EdgeInsets.only(
                        top: 30, left: 24, right: 24, bottom: 30),
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
