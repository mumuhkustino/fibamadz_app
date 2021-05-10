part of 'pages.dart';

class MateriSholatSunatPage extends StatefulWidget {
  @override
  _MateriSholatSunatPageState createState() => _MateriSholatSunatPageState();
}

class _MateriSholatSunatPageState extends State<MateriSholatSunatPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText = '';
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Pengertian Shalat Sunat', content: '''
Salat sunah atau salat nawafil (jamak: nafilah) adalah salat yang dianjurkan untuk dilaksanakan namun tidak diwajibkan sehingga tidak berdosa bila ditinggalkan dengan kata lain apabila dilakukan dengan baik dan benar serta penuh ke ikhlasan akan tampak hikmah dan rahmat dari Allah SWT yang begitu indah. Salat sunah menurut hukumnya terdiri atas dua golongan yakni:

Muakad, adalah salat sunah yang dianjurkan dengan penekanan yang kuat (hampir mendekati wajib), seperti salat dua hari raya, salat sunah witr dan salat sunah thawaf.

Ghairu Muakad, adalah salat sunah yang dianjurkan tanpa penekanan yang kuat, seperti salat sunah Rawatib dan salat sunah yang sifatnya insidentil (tergantung waktu dan keadaan, seperti salat kusuf/khusuf hanya dikerjakan ketika terjadi gerhana).
'''),
    Entry('Pembagian Menurut Pelaksanaan', children: <Entry>[
      Entry('Salat sunah ada yang dilakukan secara sendiri-sendiri (munfarid) di antaranya:', content: '''
- Salat Rawatib
- Salat Tahiyatul Wudhu
- Salat Istikharah
- Salat Mutlaq
- Salat Duha
- Salat Tahiyatul Masjid
- Salat Tahajud
- Salat Hajat
- Salat Awwabin
- Salat Tasbih
- Salat Taubat
'''),
      Entry('Sedangkan yang dapat dilakukan secara berjamaah antara lain:', content: '''
- Salat Tarawih
- Salat Id
- Salat Gerhana
- Salat Istisqa
''')]),
    Entry('Waktu terlarang untuk salat sunah', content: '''
Beberapa salat sunah dilakukan terkait dengan waktu tertentu namun bagi salat yang dapat dilakukan pada waktu yang bebas (misal:salat mutlaq) maka harus memperhatikan bahwa terdapat beberapa waktu yang padanya haram dilakukan salat:

- Matahari terbit hingga ia naik setinggi lembing
- Matahari tepat dipuncaknya (zenith), hingga ia mulai condong
- Sesudah ashar sampai matahari terbenam
- Sesudah subuh
- Ketika matahari terbenam hingga sempurna terbenamnya
'''),
    Entry('Sumber', content: '''
https://id.wikipedia.org/wiki/Salat_sunah
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Pengertian Shalat Sunat', content: '''
Salat sunah atau salat nawafil (jamak: nafilah) adalah salat yang dianjurkan untuk dilaksanakan namun tidak diwajibkan sehingga tidak berdosa bila ditinggalkan dengan kata lain apabila dilakukan dengan baik dan benar serta penuh ke ikhlasan akan tampak hikmah dan rahmat dari Allah SWT yang begitu indah. Salat sunah menurut hukumnya terdiri atas dua golongan yakni:

Muakad, adalah salat sunah yang dianjurkan dengan penekanan yang kuat (hampir mendekati wajib), seperti salat dua hari raya, salat sunah witr dan salat sunah thawaf.

Ghairu Muakad, adalah salat sunah yang dianjurkan tanpa penekanan yang kuat, seperti salat sunah Rawatib dan salat sunah yang sifatnya insidentil (tergantung waktu dan keadaan, seperti salat kusuf/khusuf hanya dikerjakan ketika terjadi gerhana).
'''),
    Entry('Pembagian Menurut Pelaksanaan', children: <Entry>[
      Entry('Salat sunah ada yang dilakukan secara sendiri-sendiri (munfarid) di antaranya:', content: '''
- Salat Rawatib
- Salat Tahiyatul Wudhu
- Salat Istikharah
- Salat Mutlaq
- Salat Duha
- Salat Tahiyatul Masjid
- Salat Tahajud
- Salat Hajat
- Salat Awwabin
- Salat Tasbih
- Salat Taubat                                                                                                  
'''),
      Entry('Sedangkan yang dapat dilakukan secara berjamaah antara lain:', content: '''
- Salat Tarawih
- Salat Id
- Salat Gerhana
- Salat Istisqa                                                                                                  
''')]),
    Entry('Waktu terlarang untuk salat sunah', content: '''
Beberapa salat sunah dilakukan terkait dengan waktu tertentu namun bagi salat yang dapat dilakukan pada waktu yang bebas (misal:salat mutlaq) maka harus memperhatikan bahwa terdapat beberapa waktu yang padanya haram dilakukan salat:

- Matahari terbit hingga ia naik setinggi lembing
- Matahari tepat dipuncaknya (zenith), hingga ia mulai condong
- Sesudah ashar sampai matahari terbenam
- Sesudah subuh
- Ketika matahari terbenam hingga sempurna terbenamnya
'''),
    Entry('Sumber', content: '''
https://id.wikipedia.org/wiki/Salat_sunah
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
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: colorGreenCream,
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
            // SUBTITLE SUNAT
            Center(
                child: Text(
                  "Sunat",
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
