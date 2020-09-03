part of 'pages.dart';

class MateriZakatMalPage extends StatefulWidget {
  @override
  _MateriZakatMalPageState createState() => _MateriZakatMalPageState();
}

class _MateriZakatMalPageState extends State<MateriZakatMalPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Zakat Mal (harta)', content: '''
Zakat harta (bahasa Arab: الزكاة المال‎, transliterasi: zakah māl) adalah zakat yang dikenakan atas harta yang dimiliki oleh individu dengan syarat-syarat dan ketentuan-ketentuan yang telah ditetapkan secara syarak.
'''),
    Entry('Syarat-syarat harta', content: '''
Harta yang akan dikeluarkan sebagai zakat harus memenuhi syarat-syarat sebagai berikut:
- Milik penuh, yakni harta tersebut merupakan milik penuh individu yang akan mengeluarkan zakat.
- Berkembang, yakni harta tersebut memiliki potensi untuk berkembang bila diusahakan.
- Mencapai nisab, yakni harta tersebut telah mencapai ukuran/jumlah tertentu sesuai dengan ketetapan, harta yang tidak mencapai nishab tidak wajib dizakatkan dan dianjurkan untuk berinfak atau bersedekah.
- Lebih dari kebutuhan pokok, orang yang berzakat hendaklah kebutuhan minimal/pokok untuk hidupnya terpenuhi terlebih dahulu
- Bebas dari Hutang, bila individu memiliki hutang yang bila dikonversikan ke harta yang dizakatkan mengakibatkan tidak terpenuhinya nisab, dan akan dibayar pada waktu yang sama maka harta tersebut bebas dari kewajiban zakat.
- Berlalu satu tahun (Haul), kepemilikan harta tersebut telah mencapai satu tahun khusus untuk ternak, harta simpanan dan harta perniagaan. Hasil pertanian, buah-buahan dan rikaz (barang temuan) tidak memiliki syarat haul.
'''),
    Entry('Macam-macamnya', content: '''
Macam-macam zakat Mal dibedakan atas objek zakatnya antara lain:
- Hewan ternak. Meliputi semua jenis & ukuran ternak (misal: sapi, kerbau, kambing, domba, dan ayam)
- Hasil pertanian. Hasil pertanian yang dimaksud adalah hasil tumbuh-tumbuhan atau tanaman yang bernilai ekonomis seperti biji-bijian, umbi-umbian, sayur-mayur, buah-buahan, tanaman hias, rumput-rumputan, dedaunan, dll.
- Emas dan perak. Meliputi harta yang terbuat dari emas dan perak dalam bentuk apapun.
- Harta perniagaan. Harta perniagaan adalah semua yang diperuntukkan untuk diperjualbelikan dalam berbagai jenisnya, baik berupa barang seperti alat-alat, pakaian, makanan, perhiasan, dll. Perniagaan di sini termasuk yang diusahakan secara perorangan maupun kelompok/korporasi.
- Hasil tambang (makdin). Meliputi hasil dari proses penambangan benda-benda yang terdapat dalam perut bumi/laut dan memiliki nilai ekonomis seperti minyak, logam, batu bara, mutiara dan lain-lain.
- Barang temuan (rikaz). Yakni harta yang ditemukan dan tidak diketahui pemiliknya (harta karun).
- Zakat profesi, yakni zakat yang dikeluarkan dari penghasilan profesi (hasil profesi) bila telah mencapai nisab. Profesi dimaksud mencakup profesi pegawai negeri atau swasta, konsultan, dokter, notaris, akuntan, artis, dan wiraswasta.
'''),
    Entry('Yang berhak menerima', content: '''
Berdasarkan firman Allah QS At-Taubah ayat 60, bahwa yang berhak menerima zakat/mustahik sebagai berikut:
- Orang fakir: orang yang amat sengsara hidupnya, tidak mempunyai harta dan tenaga untuk memenuhi penghidupannya.
- Orang miskin: orang yang tidak cukup penghidupannya dan dalam keadaan kekurangan.
- Amil: orang yang diberi tugas untuk mengumpulkan dan membagikan zakat.
- Mualaf: orang kafir yang ada harapan masuk Islam dan orang yang baru masuk Islam yang imannya masih lemah.
- Hamba sahaya: memerdekakan budak mencakup juga untuk melepaskan muslim yang ditawan oleh orang-orang kafir.
- Orang berhutang: orang yang berutang karena untuk kepentingan yang bukan maksiat dan tidak sanggup membayarnya. Adapun orang yang berutang untuk memelihara persatuan umat Islam dibayar utangnya itu dengan zakat, walaupun ia mampu membayarnya.
- Sabilillah: yaitu untuk keperluan pertahanan Islam dan kaum muslimin. Di antara mufasirin ada yang berpendapat bahwa fisabilillah itu mencakup juga kepentingan-kepentingan umum seperti mendirikan sekolah, rumah sakit, madrasah, masjid, pesantren, ekonomi umat, dll.
- Ibnu sabil: orang yang sedang dalam perjalanan yang bukan maksiat mengalami kesengsaraan dalam perjalanannya. Atau juga orang yg menuntut ilmu di tempat yang jauh yang kehabisan bekal.
'''),
    Entry('Sumber', content: '''
https://id.wikipedia.org/wiki/Zakat_harta
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Zakat Mal (harta)', content: '''
Zakat harta (bahasa Arab: الزكاة المال‎, transliterasi: zakah māl) adalah zakat yang dikenakan atas harta yang dimiliki oleh individu dengan syarat-syarat dan ketentuan-ketentuan yang telah ditetapkan secara syarak.
'''),
    Entry('Syarat-syarat harta', content: '''
Harta yang akan dikeluarkan sebagai zakat harus memenuhi syarat-syarat sebagai berikut:
- Milik penuh, yakni harta tersebut merupakan milik penuh individu yang akan mengeluarkan zakat.
- Berkembang, yakni harta tersebut memiliki potensi untuk berkembang bila diusahakan.
- Mencapai nisab, yakni harta tersebut telah mencapai ukuran/jumlah tertentu sesuai dengan ketetapan, harta yang tidak mencapai nishab tidak wajib dizakatkan dan dianjurkan untuk berinfak atau bersedekah.
- Lebih dari kebutuhan pokok, orang yang berzakat hendaklah kebutuhan minimal/pokok untuk hidupnya terpenuhi terlebih dahulu
- Bebas dari Hutang, bila individu memiliki hutang yang bila dikonversikan ke harta yang dizakatkan mengakibatkan tidak terpenuhinya nisab, dan akan dibayar pada waktu yang sama maka harta tersebut bebas dari kewajiban zakat.
- Berlalu satu tahun (Haul), kepemilikan harta tersebut telah mencapai satu tahun khusus untuk ternak, harta simpanan dan harta perniagaan. Hasil pertanian, buah-buahan dan rikaz (barang temuan) tidak memiliki syarat haul.
'''),
    Entry('Macam-macamnya', content: '''
Macam-macam zakat Mal dibedakan atas objek zakatnya antara lain:
- Hewan ternak. Meliputi semua jenis & ukuran ternak (misal: sapi, kerbau, kambing, domba, dan ayam)
- Hasil pertanian. Hasil pertanian yang dimaksud adalah hasil tumbuh-tumbuhan atau tanaman yang bernilai ekonomis seperti biji-bijian, umbi-umbian, sayur-mayur, buah-buahan, tanaman hias, rumput-rumputan, dedaunan, dll.
- Emas dan perak. Meliputi harta yang terbuat dari emas dan perak dalam bentuk apapun.
- Harta perniagaan. Harta perniagaan adalah semua yang diperuntukkan untuk diperjualbelikan dalam berbagai jenisnya, baik berupa barang seperti alat-alat, pakaian, makanan, perhiasan, dll. Perniagaan di sini termasuk yang diusahakan secara perorangan maupun kelompok/korporasi.
- Hasil tambang (makdin). Meliputi hasil dari proses penambangan benda-benda yang terdapat dalam perut bumi/laut dan memiliki nilai ekonomis seperti minyak, logam, batu bara, mutiara dan lain-lain.
- Barang temuan (rikaz). Yakni harta yang ditemukan dan tidak diketahui pemiliknya (harta karun).
- Zakat profesi, yakni zakat yang dikeluarkan dari penghasilan profesi (hasil profesi) bila telah mencapai nisab. Profesi dimaksud mencakup profesi pegawai negeri atau swasta, konsultan, dokter, notaris, akuntan, artis, dan wiraswasta.
'''),
    Entry('Yang berhak menerima', content: '''
Berdasarkan firman Allah QS At-Taubah ayat 60, bahwa yang berhak menerima zakat/mustahik sebagai berikut:
- Orang fakir: orang yang amat sengsara hidupnya, tidak mempunyai harta dan tenaga untuk memenuhi penghidupannya.
- Orang miskin: orang yang tidak cukup penghidupannya dan dalam keadaan kekurangan.
- Amil: orang yang diberi tugas untuk mengumpulkan dan membagikan zakat.
- Mualaf: orang kafir yang ada harapan masuk Islam dan orang yang baru masuk Islam yang imannya masih lemah.
- Hamba sahaya: memerdekakan budak mencakup juga untuk melepaskan muslim yang ditawan oleh orang-orang kafir.
- Orang berhutang: orang yang berutang karena untuk kepentingan yang bukan maksiat dan tidak sanggup membayarnya. Adapun orang yang berutang untuk memelihara persatuan umat Islam dibayar utangnya itu dengan zakat, walaupun ia mampu membayarnya.
- Sabilillah: yaitu untuk keperluan pertahanan Islam dan kaum muslimin. Di antara mufasirin ada yang berpendapat bahwa fisabilillah itu mencakup juga kepentingan-kepentingan umum seperti mendirikan sekolah, rumah sakit, madrasah, masjid, pesantren, ekonomi umat, dll.
- Ibnu sabil: orang yang sedang dalam perjalanan yang bukan maksiat mengalami kesengsaraan dalam perjalanannya. Atau juga orang yg menuntut ilmu di tempat yang jauh yang kehabisan bekal.
'''),
    Entry('Sumber', content: '''
https://id.wikipedia.org/wiki/Zakat_harta
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
            // SUBTITLE MAL
            Center(
                child: Text(
                  "Mal",
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
