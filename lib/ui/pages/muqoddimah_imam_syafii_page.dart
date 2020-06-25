part of 'pages.dart';

class MuqoddimahImamSyafiiPage extends StatefulWidget {
  @override
  _MuqoddimahImamSyafiiPageState createState() =>
      _MuqoddimahImamSyafiiPageState();
}

class _MuqoddimahImamSyafiiPageState extends State<MuqoddimahImamSyafiiPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  final text =
      '''Tokoh utamanya adalah Al-Imam Muhammad bin Idris As-Syafi'i Al-Quraisyi. Beliau dilahirkan di Ghuzzah pada tahun 150 H dan wafat di Mesir pada tahun 204 H.

Beliau belajar kepada Imam Malik yang dikenal dengan madzhabul hadits, kemudian beliau pergi ke Irak dan belajar dari ulama Irak yang dikenal sebagai madzhabul qiyas. Beliau berikhtiar menyatukan madzhab terpadu yaitu madzhab hadits dan madzhab qiyas. Itulah keistimewaan madzhab Syafi'i. Di antara kelebihan asy-Syafi'i adalah beliau hafal Al-Qur'an umur 7 tahun, pandai diskusi dan selalu menonjol. Madzhab ini lahir di Mesir kemudian berkembang ke negeri-negeri lain.
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
                                      autofocus: (searchController.text.compareTo("") == 0),
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
                    "Syafii",
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
