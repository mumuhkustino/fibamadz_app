part of 'pages.dart';

class MuqoddimahKitabPage extends StatefulWidget {
  @override
  _MuqoddimahKitabPageState createState() => _MuqoddimahKitabPageState();
}

class _MuqoddimahKitabPageState extends State<MuqoddimahKitabPage> {
  bool isClickedSearch = false;
//  TextEditingController searchController = TextEditingController();
  String searchText;
  String tempText;
  final text =
'''
Ahlussunnah wal Jama’ah berhaluan salah satu Madzhab yang empat. Seluruh ummat Islam
di dunia dan para ulamanya telah mengakui bahwa Imam yang empat ialah Imam Hanafi, 
Imam Maliki, Imam Syafi’i dan Imam Ahmad Ibnu Hambal telah memenuhi persyaratan 
sebagai Mujtahid. Hal itu dikarenakan ilmu, amal dan akhlaq yang dimiliki oleh mereka. 
Maka ahli fiqih memfatwakan bagi umat Islam wajib mengikuti salah satu madzhab yang 
empat tersebut.'''
    .replaceAll("\n", " ")
    .replaceAll("  ", "");

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
                    child: Stack(
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
                                  searchText = "";
                                  isClickedSearch = false;
                                });
                              }
                            },
                            child: Container(
                                margin: EdgeInsets.only(left: 16),
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
                                    width: 300,
                                    child: TextField(
//                                      controller: searchController,
                                      decoration:
                                          InputDecoration(hintText: "Search"),
                                      onChanged: (t) {
                                        setState(() => tempText = t);
                                      },
                                    ),
                                  )
                                : null),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                (!isClickedSearch) ? isClickedSearch = true : searchText = tempText;
                              });
                            },
                            child: Container(
                                margin: EdgeInsets.only(right: 16),
                                child: Icon(Icons.search,
                                    color: Colors.black.withOpacity(0.54))),
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
                  )),
                  Center(
                      child: Text(
                    "Kitab",
                    style: blackTextFont.copyWith(fontSize: 14),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 24, right: 24),
                    child: SelectableText.rich(
                      searchFromText(text, searchText),
                      textAlign: TextAlign.justify,
                      textScaleFactor: 2,
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
