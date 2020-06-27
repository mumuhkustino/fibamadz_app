part of 'pages.dart';

class MuqoddimahImamAhmadPage extends StatefulWidget {
  @override
  _MuqoddimahImamAhmadPageState createState() => _MuqoddimahImamAhmadPageState();
}

class _MuqoddimahImamAhmadPageState extends State<MuqoddimahImamAhmadPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  final text =
  '''Dinamakan Hanbali, karena pendirinya Al-Imam Ahmad bin Hanbal As-Syaebani, lahir di Baghdad Th 164 H dan wafat Th 248 H. Beliau adalah murid Imam Syafi’i yang paling istimewa dan tidak pernah pisah sampai Imam Syafi’i pergi ke Mesir.

Menurut beliau hadits dla’if dapat dipergunakan untuk perbuatan-perbuatan yang afdal (fadlailul a'mal) bukan untuk menentukan hukum. Beliau tidak mengaku adanya Ijma’ setelah sahabat karena ulama sangat banyak dan tersebar luas.
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
        body: Column(
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
                  // TEXT FIELD SEARCH TEXT
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
            // TITLE AHMAD
            Center(
                child: Text(
                  "Ahmad",
                  style: blackTextFont.copyWith(fontSize: 14),
                )),
            // TEXT SEJARAH IMAM AHMAD
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
        ),
      ),
    );
  }
}