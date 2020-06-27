part of 'pages.dart';

class MateriThaharahWudhuPage extends StatefulWidget {
  @override
  _MateriThaharahWudhuPageState createState() =>
      _MateriThaharahWudhuPageState();
}

class _MateriThaharahWudhuPageState extends State<MateriThaharahWudhuPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  final List<Entry> data = <Entry>[
    Entry('Pengertian Wudu','''
Wudu adalah salah satu cara menyucikan anggota tubuh dengan air. Seorang muslim diwajibkan bersuci setiap akan melaksanakan salat. Berwudu bisa pula menggunakan debu yang disebut dengan tayammum.
'''),
    Entry('Penggunaan air', '''Jenis air yang diperkenankan

- Air hujan
- Air sumur
- Air terjun, laut atau sungai,
- Air dari lelehan salju atau es batu,
- Air dari tangki besar atau kolam.

Jenis air yang tidak diperkenankan

- Air yang tidak bersih atau ada najis,
- Air sari buah atau pohon,
- Air yang telah berubah warna, rasa dan bau dan menjadi pekat karena sesuatu telah direndam di dalamnya,
- Air dengan jumlah sedikit (kurang dari 1000 liter) yang terkena sesuatu yang tidak bersih seperti urin, darah atau minuman anggur atau ada seekor binatang mati di dalamnya,
- Air bekas wudu
- Air yang tersisa setelah binatang haram meminumnya seperti anjing, babi atau binatang mangsa,
- Air yang tersisa oleh seseorang yang telah mabuk karena khamr (minuman keras).
'''),
    Entry('Hukum Wudu', '''
Wajib

Pelaksanaan wudu wajib dilakukan oleh umat Muslim, ketika hendak melakukan ibadah salat, thawaf di Ka'bah, dan menyentuh al-Qur'an. Berwudu untuk menyentuh al-Qur'an menurut pendapat para ulama empat madzhab adalah wajib, berdasarkan salah satu surah dalam al-Qu'ran, yang berbunyi:

"Sesungguhnya Al-Qur'an ini adalah bacaan yang sangat mulia, pada kitab yang terpelihara (Lauhul Mahfuzh), tidak menyentuhnya kecuali orang-orang yang disucikan. (Al Waaqi'ah 56:77-79)"

Sedangkan menurut pendapat kedua mengatakan bahwa yang dimaksud oleh surat Al Waaqi'ah di atas ialah: "Tidak ada yang dapat menyentuh Al-Qur'an yang ada di Lauhul Mahfudz sebagaimana ditegaskan oleh ayat yang sebelumnya (ayat 78) kecuali para malaikat yang telah disucikan oleh Allah." Pendapat ini adalah tafsir dari Ibnu Abbas dan lain-lain sebagaimana telah diterangkan oleh Al-Hafidzh Ibnu Katsir di tafsirnya. Bukanlah yang dimaksud bahwa tidak boleh menyentuh atau memegang Al-Qur'an kecuali orang yang bersih dari hadats besar dan hadats kecil.

Pendapat kedua ini menyatakan bahwa jikalau memang benar demikian maksudnya tentang firman Allah di atas, maka artinya akan menjadi: Tidak ada yang menyentuh Al-Qur'an kecuali mereka yang suci (bersih), yakni dengan bentuk faa'il (subjek/pelaku) bukan maf'ul (objek). Kenyataannya Allah berfirman: "Tidak ada yang menyentuhnya (Al-Qur'an) kecuali mereka yang telah disucikan", yakni dengan bentuk maf'ul (objek) bukan sebagai faa'il (subjek).

“Tidak ada yang menyentuh Al-Qur'an kecuali orang yang suci.” Yang dimaksud oleh hadits di atas ialah: Tidak ada yang menyentuh Al-Qur'an kecuali orang mu'min, karena orang mu'min itu suci tidak najis sebagaimana sabda Muhammad. “Sesungguhnya orang mu'min itu tidak najis.”

Sunnah

Wudu bersifat sunnah adalah bila akan mengerjakan hal-hal berikut ini:

1. Mengulangi wudu untuk tiap salat
2. Bagi setiap Muslim untuk selalu tampil dengan wudu
3. Ketika hendak tidur, dalam keadaan junub
4. Sebelum mandi wajib
5. Ketika hendak mengulangi hubungan badan
6. Ketika marah
7. Ketika membaca al-Qur'an,
8. Ketika Melantunkan azan dan iqamat,
9. Ziarah ke makam Nabi Muhammad,
10. Menyentuh kitab-kitab syar'i.

Berikut sunah-sunah wudu yang biasa dilakukan oleh Nabi Muhammad:

1. Bersiwak
2. Mencuci kedua tangan sampai pergelangan tangan sebelum berwudu
3. Mencuci anggota-anggota wudu sebanyak tiga kali, kecuali kepala hanya sekali
4. Menyela-nyela jenggot yang tebal
5. Menyela-nyela jari-jari kaki dan jari-jari tangan
6. Menyeka (dalk)
7. Mendahulukan tangan kanan daripada yang kiri dan kaki kanan daripada kaki kiri.
8. Berdoa setelah berwudu.
9. Menggunakan air wudu dengan hemat.
'''),
    Entry('Rukun Wudu', '''
Rukun berwudu yang disepakati ada empat:

1. Mencuci wajah,
2. Mencuci tangan,
3. Mengusap kepala,
4. Mencuci kedua kaki.

Rukun-rukun yang diperselisihkan adalah sebagai berikut:

1. Tertib,
2. Bersambungan (Muwalah).
'''),
    Entry('Pembatal Wudu', '''
Disepakati

Ada beberapa perkara atau hal yang dapat membatalkan syahnya wudu, di antaranya adalah:

1. Keluar sesuatu dari lubang kelamin dan anus, berupa tinja, kencing, kentut, dan semua hadats besar seperti keluarnya air mani, madzi, jima', haid, nifas,
2. Tidur lelap (dalam keadaan tidak sadar),
3. Hilangnya akal karena mabuk, pingsan dan gila,
4. Memakan daging unta,
5. Menyentuh kawasan sekitar anus (dubur).

Diperselisihkan

1. Sentuhan laki-laki pada wanita yang mahram atau bukan tanpa penghalang, kemudian ada hadits yang menjelaskan bahwa bersentuhan tidak membatalkan wudu,
2. Menyentuh kemaluan manusia dengan telapak tangan bagian dalam,
3. Keluarnya darah istihadhah,
4. Mimisan dan muntah,
5. Mengangkat dan memandikan jenazah.
''')
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMateriThaharahPage());
        return;
      },
      child: Scaffold(
        backgroundColor: colorCream,
        body: Container(
          child: Column(
            children: [
              
              // BUTTON SEARCH DAN PREVIOUS
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
                                .add(GoToMateriThaharahPage());
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
                    Center(
                        child: (isClickedSearch)
                            ? Container(
                                width:
                                    MediaQuery.of(context).size.width * 6 / 8,
                                child: TextField(
                                  autofocus:
                                      (searchController.text.compareTo("") ==
                                          0),
                                  controller: searchController,
                                  decoration:
                                      InputDecoration(hintText: "Search"),
                                ),
                              )
                            : Container(
                                width:
                                    MediaQuery.of(context).size.width * 6 / 8,
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

              // TITLE DAN SUBTITLE
              Column(
                children: [
                  Center(
                      child: Text(
                    "Thaharah",
                    style: blackTextFont.copyWith(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  )),
                  Center(
                      child: Text(
                    "Wudu",
                    style: blackTextFont.copyWith(fontSize: 14),
                  )),
                ],
              ),

              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return
//                      EntryItem(data[index]);
                        ExpansionTile(
                            title: Text(data[index].title),
                            children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 16, right: 16),
                            child: SelectableText.rich(
                              searchFromText(data[index].content, searchText),
                              textAlign: TextAlign.left,
                              textScaleFactor: 1.2,
                              style: blackTextFont,
                            ),
                          )
                        ]);
                  },
                  itemCount: data.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
