part of 'pages.dart';

class MateriSholatFarduPage extends StatefulWidget {
  @override
  _MateriSholatFarduPageState createState() => _MateriSholatFarduPageState();
}

class _MateriSholatFarduPageState extends State<MateriSholatFarduPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Pengertian Shalat Fardu', content: '''
Salat Fardu adalah salat dengan status hukum Fardu, yakni wajib dilaksanakan. Salat Fardhu sendiri menurut hukumnya terdiri atas dua golongan yakni:

Fardhu 'Ain yakni yang diwajibkan kepada individu. Termasuk dalam salat ini adalah salat lima waktu dan salat Jumat untuk pria.

Fardhu Kifayah yakni yang diwajibkan atas seluruh muslim namun akan gugur dan menjadi sunnat bila telah dilaksanakan oleh sebagian muslim yang lain. Yang termasuk dalam kategori ini adalah salat jenazah.
'''),
    Entry('Sumber', content: '''
https://id.wikipedia.org/wiki/Salat_Fardu
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Pengertian Shalat Fardu', content: '''
Salat Fardu adalah salat dengan status hukum Fardu, yakni wajib dilaksanakan. Salat Fardhu sendiri menurut hukumnya terdiri atas dua golongan yakni:

Fardhu 'Ain yakni yang diwajibkan kepada individu. Termasuk dalam salat ini adalah salat lima waktu dan salat Jumat untuk pria.

Fardhu Kifayah yakni yang diwajibkan atas seluruh muslim namun akan gugur dan menjadi sunnat bila telah dilaksanakan oleh sebagian muslim yang lain. Yang termasuk dalam kategori ini adalah salat jenazah.
'''),
    Entry('Sumber', content: '''
https://id.wikipedia.org/wiki/Salat_Fardu
''')
  ];

  @override
  void initState() {
    data.addAll(dataText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMateriSholatPage());
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        if (!isClickedSearch) {
                          context
                              .bloc<PageBloc>()
                              .add(GoToMateriSholatPage());
                        } else {
                          setState(() {
                            if (searchController.text.compareTo("") == 0) {
                              isClickedSearch = false;
                            } else {
                              searchController.text = "";
                              searchText = searchController.text;
                              data.clear();
                              data.addAll(text);
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
                            var entries =
                            filterSearchResults(dataText, searchText);
                            data.clear();
                            data.addAll(entries);
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
            // TITLE SHOLAT
            Center(
                child: Text(
                  "Sholat",
                  style: blackTextFont.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w700),
                )),
            // SUBTITLE FARDU
            Center(
                child: Text(
                  "Fardu",
                  style: blackTextFont.copyWith(fontSize: 14),
                )),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ExpansionTile(
                      title: Text(data[index].title),
                      children: (data[index].children.isEmpty)
                          ? <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          child: SelectableText.rich(
                            searchFromText(
                                data[index].content, searchText),
                            textScaleFactor: 1.2,
                            style: blackTextFont,
                          ),
                        )
                      ]
                          : getChildrenWidgets(
                          data[index].children, searchText));
                },
                itemCount: data.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
