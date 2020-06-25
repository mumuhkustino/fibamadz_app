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
      
Madzhab ini berkembang karena menjadi madzhab pemerintah pada saat Khalifah Harun Al-Rasyid. Kemudian pada masa pemerintahan Abu Ja’far Al-Manshur beliau diminta kembali untuk menjadi Hakim tetapi beliau menolak, dan memilih hidup berdagang, madzhab ini lahir di Kufah.
''';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMuqoddimahPage());
        return;
      },
      child: Scaffold(
        backgroundColor: colorCream,
        body: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 56,
                    child: Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              if (!isClickedSearch) {
                                context
                                    .bloc<PageBloc>()
                                    .add(GoToMuqoddimahPage());
                              } else {
                                setState(() {
                                  if (searchController.text.compareTo("") ==
                                      0) {
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
                        Center(
                            child: (isClickedSearch)
                                ? Container(
                                    width: MediaQuery.of(context).size.width *
                                        6 /
                                        8,
                                    child: TextField(
                                      autofocus: (searchController.text
                                              .compareTo("") ==
                                          0),
                                      controller: searchController,
                                      decoration:
                                          InputDecoration(hintText: "Search"),
                                    ),
                                  )
                                : Container(
                                    width: MediaQuery.of(context).size.width *
                                        6 /
                                        8,
                                  )),
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
                  Center(
                      child: Text(
                    "Sejarah Imam",
                    style: blackTextFont.copyWith(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  )),
                  Center(
                      child: Text(
                    "Hanafi",
                    style: blackTextFont.copyWith(fontSize: 14),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 24, right: 24),
                    child: SelectableText.rich(
                      searchFromText(text, searchText),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                      style: blackTextFont,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
