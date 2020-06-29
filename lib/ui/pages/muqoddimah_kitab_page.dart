part of 'pages.dart';

class MuqoddimahKitabPage extends StatefulWidget {
  @override
  _MuqoddimahKitabPageState createState() => _MuqoddimahKitabPageState();
}

class _MuqoddimahKitabPageState extends State<MuqoddimahKitabPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  final text =
      '''Ahlussunnah wal Jama’ah berhaluan salah satu Madzhab yang empat. 
      dasfsssssssssssssssssssssssssssssssssssssssssss
      dasfsdfsfdasfdsdfasfdasfdasfd
      dsafdsafasfddddddddddddddddddassssssssssssssssssssssssssssssssss
      daksfjhaskdfhakfkjadshfkjlashfdlkajshfkladsjhflkasjf
      daskfjhaslkfjhsdalkfhasklfjhdsakfljashklfhalfkjahfljads
      dsfakjhfdlkajhfdlkjahfljakshfj
      Seluruh ummat Islam di dunia dan para ulamanya telah mengakui bahwa Imam yang empat ialah Imam Hanafi, Imam Maliki, Imam Syafi’i dan Imam Ahmad Ibnu Hambal telah memenuhi persyaratan sebagai Mujtahid. Hal itu dikarenakan ilmu, amal dan akhlaq yang dimiliki oleh mereka. Maka ahli fiqih memfatwakan bagi umat Islam wajib mengikuti salah satu madzhab yang empat tersebut.''';

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
            Expanded(
              child: ListView(
                children: [
                  // TITLE MUQODDIMAH
                  Center(
                      child: Text(
                        "Muqoddimah",
                        style: blackTextFont.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )),
                  // TITLE KITAB
                  Center(
                      child: Text(
                        "Kitab",
                        style: blackTextFont.copyWith(fontSize: 14),
                      )),
                  // TEXT MUQODDIMAH KITAB
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 24, right: 24, bottom: 24),
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
