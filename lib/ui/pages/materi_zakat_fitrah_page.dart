part of 'pages.dart';

class MateriZakatFitrahPage extends StatefulWidget {
  @override
  _MateriZakatFitrahPageState createState() => _MateriZakatFitrahPageState();
}

class _MateriZakatFitrahPageState extends State<MateriZakatFitrahPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Pengertian Zakat Fitrah', content: '''
Zakat fitrah ialah zakat diri yang diwajibkan atas diri setiap individu laki-laki maupun perempuan muslim yang berkemampuan sesuai syarat-syarat yang ditetapkan.
'''),
    Entry('Yang berkewajiban membayar', content: '''
Pada prinsipnya seperti definisi di atas, setiap muslim diwajibkan untuk mengeluarkan zakat fitrah untuk dirinya, keluarganya dan orang lain yang menjadi tanggungannya baik orang dewasa, anak kecil, laki-laki maupun wanita. Berikut adalah syarat yang menyebabkan individu wajib membayar zakat fitrah:

- Individu yang mempunyai kelebihan makanan atau hartanya dari keperluan tanggungannya pada malam dan pagi hari raya.
- Anak yang lahir sebelum matahari jatuh pada akhir bulan Ramadan dan hidup selepas terbenam matahari.
- Memeluk Islam sebelum terbenam matahari pada akhir bulan Ramadan dan tetap dalam Islamnya.
- Seseorang yang meninggal selepas terbenam matahari akhir Ramadan.
'''),
    Entry('Besar Zakat', content: '''
Besar zakat yang dikeluarkan menurut para ulama adalah sesuai penafsiran terhadap hadits adalah sebesar satu sha' (1 sha'=4 mud, 1 mud=675 gr) atau kira-kira setara dengan 3,1 liter atau 2.5 kg makanan pokok (tepung, kurma, gandum, aqith) atau yang biasa dikonsumsi di daerah bersangkutan
'''),
    Entry('Waktu Pengeluaran', content: '''
Zakat Fitrah dikeluarkan pada bulan Ramadan, paling lambat sebelum orang-orang selesai menunaikan Salat Ied. Jika waktu penyerahan melewati batas ini maka yang diserahkan tersebut tidak termasuk dalam kategori zakat melainkan sedekah biasa.
'''),
    Entry('Penerima Zakat', content: '''
Penerima Zakat secara umum ditetapkan dalam 8 golongan/asnaf (fakir, miskin, amil, muallaf, hamba sahaya, gharimin, fisabilillah, ibnu sabil) namun menurut beberapa ulama khusus untuk zakat fitrah mesti didahulukan kepada dua golongan pertama yakni fakir dan miskin. Pendapat ini disandarkan dengan alasan bahwa jumlah/nilai zakat yang sangat kecil sementara salah satu tujuannya dikeluarkannya zakat fitrah adalah agar para fakir dan miskin dapat ikut merayakan hari raya dan saling berbagi sesama umat islam.
'''),
    Entry('Hikmah disyari\'atkannya Zakat Fitrah', content: '''
Di antara hikmah disyari'atkannya zakat fitrah adalah:

- Zakat fitrah merupakan zakat diri, di mana Allah memberikan umur panjang baginya sehingga ia bertahan dengan nikmat-l\lya.
- Zakat fitrah juga merupakan bentuk pertolongan kepada umat Islam, baik kaya maupun miskin sehingga mereka dapat berkonsentrasi penuh untuk beribadah kepada Allah Ta'ala dan bersukacita dengan segala anugerah nikmat-Nya.
- Hikmahnya yang paling agung adalah tanda syukur orang yang berpuasa kepada Allah atas nikmat ibadah puasa. (Lihat Al Irsyaad Ila Ma'rifatil Ahkaam, oleh Syaikh Abdurrahman bin Nashir As-Sa'di, hlm. 37.)
- Di antara hikmahnya adalah sebagaimana yang terkandung dalam hadits Ibnu Abbas radhiAllahu 'anhuma di atas, yaitu puasa merupakan pembersih bagi yang melakukannya dari kesia-siaan dan perkataan buruk, demikian pula sebagai salah satu sarana pemberian makan kepada fakir miskin.
'''),
    Entry('Sumber', content: '''
https://id.wikipedia.org/wiki/Zakat_fitrah
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Pengertian Zakat Fitrah', content: '''
Zakat fitrah ialah zakat diri yang diwajibkan atas diri setiap individu laki-laki maupun perempuan muslim yang berkemampuan sesuai syarat-syarat yang ditetapkan.
'''),
    Entry('Yang berkewajiban membayar', content: '''
Pada prinsipnya seperti definisi di atas, setiap muslim diwajibkan untuk mengeluarkan zakat fitrah untuk dirinya, keluarganya dan orang lain yang menjadi tanggungannya baik orang dewasa, anak kecil, laki-laki maupun wanita. Berikut adalah syarat yang menyebabkan individu wajib membayar zakat fitrah:

- Individu yang mempunyai kelebihan makanan atau hartanya dari keperluan tanggungannya pada malam dan pagi hari raya.
- Anak yang lahir sebelum matahari jatuh pada akhir bulan Ramadan dan hidup selepas terbenam matahari.
- Memeluk Islam sebelum terbenam matahari pada akhir bulan Ramadan dan tetap dalam Islamnya.
- Seseorang yang meninggal selepas terbenam matahari akhir Ramadan.
'''),
    Entry('Besar Zakat', content: '''
Besar zakat yang dikeluarkan menurut para ulama adalah sesuai penafsiran terhadap hadits adalah sebesar satu sha' (1 sha'=4 mud, 1 mud=675 gr) atau kira-kira setara dengan 3,1 liter atau 2.5 kg makanan pokok (tepung, kurma, gandum, aqith) atau yang biasa dikonsumsi di daerah bersangkutan
'''),
    Entry('Waktu Pengeluaran', content: '''
Zakat Fitrah dikeluarkan pada bulan Ramadan, paling lambat sebelum orang-orang selesai menunaikan Salat Ied. Jika waktu penyerahan melewati batas ini maka yang diserahkan tersebut tidak termasuk dalam kategori zakat melainkan sedekah biasa.
'''),
    Entry('Penerima Zakat', content: '''
Penerima Zakat secara umum ditetapkan dalam 8 golongan/asnaf (fakir, miskin, amil, muallaf, hamba sahaya, gharimin, fisabilillah, ibnu sabil) namun menurut beberapa ulama khusus untuk zakat fitrah mesti didahulukan kepada dua golongan pertama yakni fakir dan miskin. Pendapat ini disandarkan dengan alasan bahwa jumlah/nilai zakat yang sangat kecil sementara salah satu tujuannya dikeluarkannya zakat fitrah adalah agar para fakir dan miskin dapat ikut merayakan hari raya dan saling berbagi sesama umat islam.
'''),
    Entry('Hikmah disyari\'atkannya Zakat Fitrah', content: '''
Di antara hikmah disyari'atkannya zakat fitrah adalah:

- Zakat fitrah merupakan zakat diri, di mana Allah memberikan umur panjang baginya sehingga ia bertahan dengan nikmat-l\lya.
- Zakat fitrah juga merupakan bentuk pertolongan kepada umat Islam, baik kaya maupun miskin sehingga mereka dapat berkonsentrasi penuh untuk beribadah kepada Allah Ta'ala dan bersukacita dengan segala anugerah nikmat-Nya.
- Hikmahnya yang paling agung adalah tanda syukur orang yang berpuasa kepada Allah atas nikmat ibadah puasa. (Lihat Al Irsyaad Ila Ma'rifatil Ahkaam, oleh Syaikh Abdurrahman bin Nashir As-Sa'di, hlm. 37.)
- Di antara hikmahnya adalah sebagaimana yang terkandung dalam hadits Ibnu Abbas radhiAllahu 'anhuma di atas, yaitu puasa merupakan pembersih bagi yang melakukannya dari kesia-siaan dan perkataan buruk, demikian pula sebagai salah satu sarana pemberian makan kepada fakir miskin.
'''),
    Entry('Sumber', content: '''
https://id.wikipedia.org/wiki/Zakat_fitrah
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
        context.bloc<PageBloc>().add(GoToMateriZakatPage());
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
                              .add(GoToMateriZakatPage());
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
            // TITLE ZAKAT
            Center(
                child: Text(
                  "Zakat",
                  style: blackTextFont.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w700),
                )),
            // SUBTITLE FITRAH
            Center(
                child: Text(
                  "Fitrah",
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
