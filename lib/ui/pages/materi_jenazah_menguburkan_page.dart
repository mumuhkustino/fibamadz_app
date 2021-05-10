part of 'pages.dart';

class MateriJenazahMenguburkanPage extends StatefulWidget {
  @override
  _MateriJenazahMenguburkanPageState createState() => _MateriJenazahMenguburkanPageState();
}

class _MateriJenazahMenguburkanPageState extends State<MateriJenazahMenguburkanPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText = '';
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('', content: '''
Dikubur adalah salah satu hak jenazah yang wajib dipenuhi. Dalil pijakan wajib menguburkan jenazah adalah firman Allah surat ‘Abasa : 21 :

قَالَ اللهُ تَعَالَى ثُمَّ أَمَاتَهُ فَأَقْبَرَهُ  (عبس : 21)

Artinya: Allah berfirman “Kemudian Allah mematikannya dan memasukannya ke dalam kubur”. (QS. ‘Abasa : 21)

Batas minimal mengubur jenazah dianggap cukup yaitu lubang yang bisa menjaga baunya mayat dan menjaga dari gangguan binatang buas yang berusaha menggalinya.'''),
    Entry('Kriteria mengubur jenazah', children: [
      Entry('Versi Imam Hanafi, Syâfi\'i dan Hambali', content: '''
1.      Jenazah dihadapkan kearah kiblat, alasannya karena disamakan dengan orang yang sedang shalat. Disunahkan meletakkan kepala jenazah di sebelah utara dengan posisi miring kekanan, dan makruh meletakkan kepala jenazah di sebelah selatan, dengan posisi miring kekiri. Kewajiban menghadapkan mayat ke arah kiblat  ini berdasarkan hadits yang diriwayatkan dari sayyidina Ali :

رُوِىَ عَنْ عَلِيٍّ رَضِىَ اللهُ عَنْهُ قَالَ مَاتَ رَجُلٌ مِنْ بَنِى عَبْدِ الْمُطَلِّبِ فَقَالَ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَا عَلِيٍّ اِسْتَقْبِلْ بِهِ الْقِبْلَةَ اِسْتِقْبَالا

Artinya: Diriwayatkan dari sayyidina Ali Bin Abi Thâlib, Ia berkata: “Seseorang  dari keturunan Abdul Mutollib meninggal dunia, dan Nabi perintah terhadap Ali: “Hadapkanlah jenazah tersebut kearah kiblat”
  
2.      Menutup jenazah dengan semisal papan atau lainnya supaya jenazah tidak tersentuh galian tanah yang digunakan memenuhi liang kuburan, dan untuk memuliakan jenazah. Tata cara ini berdasarkan riwayat bahwa ketika Nabi dikubur dan setelah di hadapkan kearah kiblat, lubang tempat jenazah Beliau ditutup dengan batu bata.
      '''),
      Entry('Versi Imam Mâliki', content: '''
1.       Hukum menghadapkan jenazah ke arah kiblat ketika dikubur adalah sunah, berdasarkan firman Allah surat Al Mursalât : 25 :

قَالَ اللهُ تَعَالَى : أَلَمْ نَجْعَلِ الْأَرْضَ كِفَاتًا  أَحْيَاءً وَأَمْوَاتًا (المرسلات :25، 26)

Artinya: Allah berfirman: “Bukankah Kami (Allah) telah menjadikan bumi (tempat) berkumpul, bagi orang yang masih hidup dan yang sudah mati”. (Q.S Al Mursalât : 25)

Dalam ayat tersebut, Allah tidak menyatakan secara jelas kewajiban menghadapkan jenazah kearah kiblat. Sehingga Imam Mâliki memberikan hukum sunah.

2.       Wajib menutup jenazah dengan semisal papan atau lainnya supaya jenazah tidak tersentuh galian tanah yang digunakan untuk memenuhi liang kuburan, dan untuk memuliakan jenazah.
      '''),
    ]),
    Entry('Mengubur jenazah lebih dari satu orang dalam satu liang', children: [
      Entry('Versi Imam Hanafi', content: '''
Mengubur jenazah lebih dari satu orang dalam satu liang kubur hukumnya makruh, kecuali ada hajat (keperluan).
      '''),
      Entry('Versi Imam Maliki, Syâfi\'i, Hambali', content: '''
Mengubur jenazah lebih dari satu orang dalam satu liang kubur hukumnya haram, kecuali dalam situasi dlarurat (terpaksa), seperti banyaknya orang yang meninggal.
      '''),
    ]),
    Entry('Membangun kuburan', content: '''
Hukum membangun kuburan diperinci :

1.      Haram : Apabila di kuburan umum yaitu kuburan yang disediakan untuk tempat pemakaman masyarakat umum, baik bumi wakaf atau bukan. Hukum keharaman tersebut karena kuburan yang dibangun akan menghalangi orang lain untuk dapat memanfaatkan kuburan tersebut setelah rusak (lebur)nya mayat.
2.      Makruh : Apabila membangun kuburan di tanah milik sendiri, dengan syarat membangunnya tidak ada tujuan membanggakan kuburan, jika ada tujuan demikian hukumnya haram.
3.      Mubah : Apabila yang dibangun adalah kuburannya Nabi, Wali atau Ulama, alasannya karena untuk memberikan rasa nyaman bagi peziarah.
      '''),
    Entry('Menggali kuburan', content: '''
Menggali kuburan hukumnya haram jika di lakukan setelah sempurnanya prosesi penguburan dan mayatnya belum rusak (lebur), meskipun hanya tinggal semisal tulang, kecuali dalam keadaan dlarurat, seperti banyaknya orang yang mati dan sempitnya kuburan, maka diperbolehkan untuk menggali kuburan.
      '''),
    Entry('Hal-hal  yang memperbolehkan untuk menggali kuburan', content: '''
1.      Dikubur ditanah milik orang lain tanpa adanya izin dari pihak yang bersangkutan;
2.      Dikafani dengan kafan milik orang lain dan pemiliknya tidak rela;
3.      Ada harta yang ikut terkubur bersama jenazah, baik sedikit ataupun banyak;
4.      Dikubur dalam keadaan tidak menghadap kiblat, sementara mayatnya belum rusak, kecuali kita mengikuti pendapat Imam Mâliki yang menyatakan tidak wajib menghadapkan jenazah kearah kiblat.
      '''),
  ];
  final List<Entry> dataText = <Entry>[
    Entry('', content: '''
Dikubur adalah salah satu hak jenazah yang wajib dipenuhi. Dalil pijakan wajib menguburkan jenazah adalah firman Allah surat ‘Abasa : 21 :

قَالَ اللهُ تَعَالَى ثُمَّ أَمَاتَهُ فَأَقْبَرَهُ  (عبس : 21)

Artinya: Allah berfirman “Kemudian Allah mematikannya dan memasukannya ke dalam kubur”. (QS. ‘Abasa : 21)

Batas minimal mengubur jenazah dianggap cukup yaitu lubang yang bisa menjaga baunya mayat dan menjaga dari gangguan binatang buas yang berusaha menggalinya.'''),
    Entry('Kriteria mengubur jenazah', children: [
      Entry('Versi Imam Hanafi, Syâfi\'i dan Hambali', content: '''
1.      Jenazah dihadapkan kearah kiblat, alasannya karena disamakan dengan orang yang sedang shalat. Disunahkan meletakkan kepala jenazah di sebelah utara dengan posisi miring kekanan, dan makruh meletakkan kepala jenazah di sebelah selatan, dengan posisi miring kekiri. Kewajiban menghadapkan mayat ke arah kiblat  ini berdasarkan hadits yang diriwayatkan dari sayyidina Ali :

رُوِىَ عَنْ عَلِيٍّ رَضِىَ اللهُ عَنْهُ قَالَ مَاتَ رَجُلٌ مِنْ بَنِى عَبْدِ الْمُطَلِّبِ فَقَالَ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَا عَلِيٍّ اِسْتَقْبِلْ بِهِ الْقِبْلَةَ اِسْتِقْبَالا

Artinya: Diriwayatkan dari sayyidina Ali Bin Abi Thâlib, Ia berkata: “Seseorang  dari keturunan Abdul Mutollib meninggal dunia, dan Nabi perintah terhadap Ali: “Hadapkanlah jenazah tersebut kearah kiblat”
  
2.      Menutup jenazah dengan semisal papan atau lainnya supaya jenazah tidak tersentuh galian tanah yang digunakan memenuhi liang kuburan, dan untuk memuliakan jenazah. Tata cara ini berdasarkan riwayat bahwa ketika Nabi dikubur dan setelah di hadapkan kearah kiblat, lubang tempat jenazah Beliau ditutup dengan batu bata.
      '''),
      Entry('Versi Imam Mâliki', content: '''
1.       Hukum menghadapkan jenazah ke arah kiblat ketika dikubur adalah sunah, berdasarkan firman Allah surat Al Mursalât : 25 :

قَالَ اللهُ تَعَالَى : أَلَمْ نَجْعَلِ الْأَرْضَ كِفَاتًا  أَحْيَاءً وَأَمْوَاتًا (المرسلات :25، 26)

Artinya: Allah berfirman: “Bukankah Kami (Allah) telah menjadikan bumi (tempat) berkumpul, bagi orang yang masih hidup dan yang sudah mati”. (Q.S Al Mursalât : 25)

Dalam ayat tersebut, Allah tidak menyatakan secara jelas kewajiban menghadapkan jenazah kearah kiblat. Sehingga Imam Mâliki memberikan hukum sunah.

2.       Wajib menutup jenazah dengan semisal papan atau lainnya supaya jenazah tidak tersentuh galian tanah yang digunakan untuk memenuhi liang kuburan, dan untuk memuliakan jenazah.
      '''),
    ]),
    Entry('Mengubur jenazah lebih dari satu orang dalam satu liang', children: [
      Entry('Versi Imam Hanafi', content: '''
Mengubur jenazah lebih dari satu orang dalam satu liang kubur hukumnya makruh, kecuali ada hajat (keperluan).
      '''),
      Entry('Versi Imam Maliki, Syâfi\'i, Hambali', content: '''
Mengubur jenazah lebih dari satu orang dalam satu liang kubur hukumnya haram, kecuali dalam situasi dlarurat (terpaksa), seperti banyaknya orang yang meninggal.
      '''),
    ]),
    Entry('Membangun kuburan', content: '''
Hukum membangun kuburan diperinci :

1.      Haram : Apabila di kuburan umum yaitu kuburan yang disediakan untuk tempat pemakaman masyarakat umum, baik bumi wakaf atau bukan. Hukum keharaman tersebut karena kuburan yang dibangun akan menghalangi orang lain untuk dapat memanfaatkan kuburan tersebut setelah rusak (lebur)nya mayat.
2.      Makruh : Apabila membangun kuburan di tanah milik sendiri, dengan syarat membangunnya tidak ada tujuan membanggakan kuburan, jika ada tujuan demikian hukumnya haram.
3.      Mubah : Apabila yang dibangun adalah kuburannya Nabi, Wali atau Ulama, alasannya karena untuk memberikan rasa nyaman bagi peziarah.
      '''),
    Entry('Menggali kuburan', content: '''
Menggali kuburan hukumnya haram jika di lakukan setelah sempurnanya prosesi penguburan dan mayatnya belum rusak (lebur), meskipun hanya tinggal semisal tulang, kecuali dalam keadaan dlarurat, seperti banyaknya orang yang mati dan sempitnya kuburan, maka diperbolehkan untuk menggali kuburan.
      '''),
    Entry('Hal-hal  yang memperbolehkan untuk menggali kuburan', content: '''
1.      Dikubur ditanah milik orang lain tanpa adanya izin dari pihak yang bersangkutan;
2.      Dikafani dengan kafan milik orang lain dan pemiliknya tidak rela;
3.      Ada harta yang ikut terkubur bersama jenazah, baik sedikit ataupun banyak;
4.      Dikubur dalam keadaan tidak menghadap kiblat, sementara mayatnya belum rusak, kecuali kita mengikuti pendapat Imam Mâliki yang menyatakan tidak wajib menghadapkan jenazah kearah kiblat.
      '''),
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
        context.bloc<PageBloc>().add(GoToMateriJenazahPage());
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              color: colorGreenCream,
              child: Column(
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
                                    .add(GoToMateriJenazahPage());
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
                  // TITLE JENAZAH
                  Center(
                      child: Text(
                        "Jenazah",
                        style: blackTextFont.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )),
                  // SUBTITLE MENGUBURKAN
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Menguburkan",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )),
                  ),
                ],
              ),
            ),
            buildList(data, searchText),
          ],
        ),
      ),
    );
  }
}
