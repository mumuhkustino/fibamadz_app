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
  String searchText = '';
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Rukun', children: [
      Entry('', content: '''Para ulama berrbeda pendapat ketika menyebutkan rukun wudhu. Ada yang menyebutkan 4 saja sebagaimana yang tercantum dalam ayat Quran, namun ada juga yang menambahinya dengan berdasarkan dalil dari Sunnah.'''),
      Entry('Menurut Al-Hanafiyah', content: '''
4 (empat) rukun menurut Al-Hanafiyah mengatakan bahwa rukun wudhu itu hanya ada 4 sebagaimana yang disebutkan dalam nash Quran.
      '''),
      Entry('Menurut Al-Malikiyah', content: '''
7 (tujuh) rukun menurut Al-Malikiyah menambahkan dengan keharusan niat, ad-dalk yaitu menggosok anggota wudhu`. Sebab menurut beliau sekedar mengguyur anggota wudhu` dengan air masih belum bermakna mencuci atau membasuh. Juga beliau menambahkan kewajiban muwalat.
      '''),
      Entry('Menurut As-Syafi`iyah', content: '''
6 (enam) rukun menurut As-Syafi`iyah menambahinya dengan niat dan tertib yaitu kewajiban untuk melakukannya pembasuhan dan usapan dengan urut, tidak boleh terbolak balik. Istilah yang beliau gunakan adalah harus tertib
      '''),
      Entry('Menurut Al-Hanabilah', content: '''
7 (tujuh) rukun menurut Al-Hanabilah mengatakan bahwa harus niat, tertib dan muwalat, yaitu berkesinambungan. Maka tidak boleh terjadi jeda antara satu anggota dengan anggota yang lain yang sampai membuatnya kering dari basahnya air bekas wudhu`.
      '''),
      Entry('1. Niat', content: '''
Niat wudhu` adalah ketetapan di dalam hati seseorang untuk melakukan serangkaian ritual yang bernama wudhu.
      '''),
      Entry('2. Membasuh Wajah', content: '''
Para ulama menetapkan bahwa batasan wajah seseorang itu adalah tempat tumbuhnya rambut (manabit asy-sya`ri) hingga ke dagu dan dari batas telinga kanan hingga batas telinga kiri.
      '''),
      Entry('3. Membasuh kedua tangan hingga siku', content: '''
Secara jelas disebutkan tentang keharusan membasuh tangan hingga ke siku. Dan para ulama mengatakan bahwa yang dimaksud adalah bahwa siku harus ikut dibasahi.
      '''),
      Entry('4. Mengusap kepala', content: '''
Yang dimaksud dengan mengusap adalah meraba atau menjalankan tangan ke bagian yang diusap dengan membasahi tangan sebelumnya dengan air.

- Al-Hanafiyah mengatakan bahwa yang wajib untuk diusap tidak semua bagian kepala, melainkan sekadar dari kepala. Yaitu mulai ubun-ubun dan di atas telinga.

- Al-Malikiyah dan Al-Hanabilah mengatakan bahwa yang diwajib diusap pada bagian kepala adalah seluruh bagian kepala. Bahkan Al-Hanabilah mewajibkan untuk membasuh juga kedua telinga baik belakang maupun depannya.

- Asy-syafi`iyyah mengatakan bahwa yang wajib diusap dengan air hanyalah sebagian dari kepala, meskipun hanya satu rambut saja. Dalil yang digunakan beliau adalah hadits Al-Mughirah : Bahwa Rasulullah SAW ketika berwudhu` mengusap ubun-ubunnya dan imamahnya (sorban yang melingkari kepala).
      '''),
      Entry('5. Mencuci kaki hingga mata kaki.', content: '''
Menurut jumhur ulama, yang dimaksud dengan hingga mata kaki adalah membasahi mata kakinya itu juga.
      '''),
      Entry('6. Tartib', content: '''
Yang dimaksud dengan tartib adalah mensucikan anggota wudhu secara berurutan dari yang awal hingga yang akhir.

Al-Hanafiyah dan Al-Malikiyah tidak merupakan bagian dari fardhu wudhu`, melainkan hanya sunnah muakkadah. Akan halnya urutan yang disebutan di dalam Al-Quran, bagi mereka tidaklah mengisyaratkan kewajiban urut-urutan. bersikeras mengatakan bahwa tertib urutan anggota yang dibasuh merupakan bagian dari fardhu dalamwudhu`. Sebab demikianlah selalu datangnya perintah dan contoh praktek wudhu`nya Rasulullah SAW. Tidak pernah diriwayatkan bahwa beliau berwudhu` dengan terbalik-balik urutannya. Dan membasuh anggota dengan cara sekaligus semua dibasahi tidak dianggap syah.
      '''),
      Entry('7. Al-Muwalat / Tidak Terputus', content: '''
Maksudnya adalah tidak adanya jeda yang lama ketika berpindah dari membasuh satu anggota wudhu` ke anggota wudhu` yang lainnya. Ukurannya menurut para ulama adalah selama belum sampai mengering air wudhu`nya itu.
      '''),
      Entry('8. Ad-Dalk', content: '''
Yang dimaksud dengan ad-dalk adalah mengosokkan tangan ke atas anggota wudhu setelah dibasahi dengan air dan sebelum sempat kering. Hal ini tidak menjadi kewajiban menurut jumhur ulama, namun khusus Al-Malikiyah mewajibkannya. Sebab sekedar menguyurkan air ke atas anggota tubuh tidak bisa dikatakan membasuh seperti yang dimaksud dalam Al-Quran.
      '''),
    ]),
    Entry('HAL-HAL YANG MEMBATALKAN WUDHU', children: [
      Entry('1. Keluarnya sesuatu lewat dua lubang qubul atau dubur', content: '''
- Al-Hanafiyah Batal
- Al-Malikiyah Batal jika kelua sesuatu yang lazim juga dari lubang yang lazim
- As-Syafi`i Batal
- Al-hanabalah Batal

Menurut al-Malikiyah keluar sesuatu yang tidak lazim seperti batu, darah atau nanah tidak membatalkan wudhu’ jika sesuatu tersebut terbentuk didalam usus (bukan karena menelan batu).
      '''),
      Entry('2. Tidur yang bukan dalam posisi tamakkun di atas bumi (tidak memungkinkan keluar sesuatu dari dubur)', content: '''
- Al-Hanafiyah Batal
- Al-Malikiyah Batal jika pulas
- As-Syafi`i Batal
- Al-hanabalah Batal walaupun dalam posisi tamakkun

Menurut al-Hanabalah tidur membatalkan wudhu’ secara mutlaq.

Menurut al-Malikiyah tidur pulas dapat membatalkan wudhu’ baik tamakkun aatau tidak, sementara tidur tidur ringan tidak membatalkan wudu’
      '''),
      Entry('3. Hilang Akal Karena Mabuk, Tidur Atau Sakit', content: '''
- Al-Hanafiyah Batal
- Al-Malikiyah Batal
- As-Syafi`i Batal
- Al-hanabalah Batal
      '''),
      Entry('4. Menyentuh Kemaluan dengan telalapak tangan', content: '''
- Al-Hanafiyah Tidak Batal
- Al-Malikiyah Batal
- As-Syafi`i Batal
- Al-hanabalah Batal

Menurut Madzhab Hanafi menyentuh kemaluan dengan tangan tidak batal wudu’.
      '''),
      Entry('5. Menyentuh kulit lawan jenis yang bukan mahram', content: '''
- Al-Hanafiyah Tidak Batal
- Al-Malikiyah Batal jika merasa lezat
- As-Syafi`i Batal
- Al-hanabalah Batal dengan syahwat

Menurut as-Syafi’i membatalkan wudu’ tampa lapis selain rambut, kuku dan gigi.

Menurut al-Hanafiyah tidak batal wudu’ samasekali.

Menurut al-Malikiyah membatalkan wudhu’ apabila dengan kelezatan atau bermaksud kelezatan walaupun dengan lapis tipis, baik kulit, rambut. Juga Menyentuh amrod aljamil hukumnya sama.

Menurut al-Hanabalah membatalkan wudhu’ dengan syahwat, Ajnabi atau Muhrim. Tidak batal wudu’ bagi yang di sentuh.
      '''),
      Entry('6. Keluarnya Sesuatu dari badan, seperti darah, nanah dan semacamnya, akibat luka atau lainnya', content: '''
- Al-Hanafiyah Batal
- Al-Malikiyah Tidak Batal
- As-Syafi`i Batal Tidak Batal
- Al-hanabalah Tidak Batal
      '''),
      Entry('', content: '''
Catatan :

Mereka sepakat bahwa Murtad juga menyebabkan batalnya wudu’ kecuali al Hanafiyah.

Namun al Hanafiyah berpendapat Ketawa dalam solat juga menyebabkan batal wudu’.

Makan daging kambing atau unta menurut al-Hanabalah termasuk yang membatalkan wudu’, dan juga memandikan jenazah.

Ragu terhadap hadats membatalkan wudu’ menurut al-Malikiyah.'''),
    ]),
    Entry('AIR MUSTA’MAL : ', content: '''
Pada dasarnya Madahibil Arba’ah berpandangan sama tentang Air Musta’mal yaitu air yang berpisah/ menites dari  tubuh yang digunakan untuk mengangkat hadats, atau untuk menghilangkan najis selama sifat-sifat air tidak berubah.

Bersuci dengan cara memesukkan anggota tubuh ke dalam air sedikit (kurang dari 2 Qullah =190 Liter/ wadah berukuran 85 cm2 [syafi’i] ) maka air tersebut dihukumi Musta’mal setelah diangkatnya anggota tubuh.

Air Musta’mal ini hukumnya suci tapi tidak bisa mensucikan. Artinya air itu suci tidak najis, bias digunaka dalam memasal dsb. tapi tidak bisa digunakan lagi m,ensucikan, Demikian menurut al-Madahib kecuali Malikiyah.

Menurut al-Malikiyah Air musta’mal hukumnya suci dan mensucikan, Artinya, bisa dan sah digunakan lagi untuk berwudu` atau mandi bersuci, tetapi makruh apabila masih ada air yang tidak musta’mal

Menurut as-Syafi’I Air musta’mal yang mencapai dua Qullah dengan sendirinya menjadi air suci dan mensucikan.
      '''),
  ];
  // DATA YANG BERUBAH
  final List<Entry> dataText = <Entry>[
    Entry('Rukun', children: [
      Entry('', content: '''Para ulama berrbeda pendapat ketika menyebutkan rukun wudhu. Ada yang menyebutkan 4 saja sebagaimana yang tercantum dalam ayat Quran, namun ada juga yang menambahinya dengan berdasarkan dalil dari Sunnah.'''),
      Entry('Menurut Al-Hanafiyah', content: '''
4 (empat) rukun menurut Al-Hanafiyah mengatakan bahwa rukun wudhu itu hanya ada 4 sebagaimana yang disebutkan dalam nash Quran.
      '''),
      Entry('Menurut Al-Malikiyah', content: '''
7 (tujuh) rukun menurut Al-Malikiyah menambahkan dengan keharusan niat, ad-dalk yaitu menggosok anggota wudhu`. Sebab menurut beliau sekedar mengguyur anggota wudhu` dengan air masih belum bermakna mencuci atau membasuh. Juga beliau menambahkan kewajiban muwalat.
      '''),
      Entry('Menurut As-Syafi`iyah', content: '''
6 (enam) rukun menurut As-Syafi`iyah menambahinya dengan niat dan tertib yaitu kewajiban untuk melakukannya pembasuhan dan usapan dengan urut, tidak boleh terbolak balik. Istilah yang beliau gunakan adalah harus tertib
      '''),
      Entry('Menurut Al-Hanabilah', content: '''
7 (tujuh) rukun menurut Al-Hanabilah mengatakan bahwa harus niat, tertib dan muwalat, yaitu berkesinambungan. Maka tidak boleh terjadi jeda antara satu anggota dengan anggota yang lain yang sampai membuatnya kering dari basahnya air bekas wudhu`.
      '''),
      Entry('1. Niat', content: '''
Niat wudhu` adalah ketetapan di dalam hati seseorang untuk melakukan serangkaian ritual yang bernama wudhu.
      '''),
      Entry('2. Membasuh Wajah', content: '''
Para ulama menetapkan bahwa batasan wajah seseorang itu adalah tempat tumbuhnya rambut (manabit asy-sya`ri) hingga ke dagu dan dari batas telinga kanan hingga batas telinga kiri.
      '''),
      Entry('3. Membasuh kedua tangan hingga siku', content: '''
Secara jelas disebutkan tentang keharusan membasuh tangan hingga ke siku. Dan para ulama mengatakan bahwa yang dimaksud adalah bahwa siku harus ikut dibasahi.
      '''),
      Entry('4. Mengusap kepala', content: '''
Yang dimaksud dengan mengusap adalah meraba atau menjalankan tangan ke bagian yang diusap dengan membasahi tangan sebelumnya dengan air.

- Al-Hanafiyah mengatakan bahwa yang wajib untuk diusap tidak semua bagian kepala, melainkan sekadar dari kepala. Yaitu mulai ubun-ubun dan di atas telinga.

- Al-Malikiyah dan Al-Hanabilah mengatakan bahwa yang diwajib diusap pada bagian kepala adalah seluruh bagian kepala. Bahkan Al-Hanabilah mewajibkan untuk membasuh juga kedua telinga baik belakang maupun depannya.

- Asy-syafi`iyyah mengatakan bahwa yang wajib diusap dengan air hanyalah sebagian dari kepala, meskipun hanya satu rambut saja. Dalil yang digunakan beliau adalah hadits Al-Mughirah : Bahwa Rasulullah SAW ketika berwudhu` mengusap ubun-ubunnya dan imamahnya (sorban yang melingkari kepala).
      '''),
      Entry('5. Mencuci kaki hingga mata kaki.', content: '''
Menurut jumhur ulama, yang dimaksud dengan hingga mata kaki adalah membasahi mata kakinya itu juga.
      '''),
      Entry('6. Tartib', content: '''
Yang dimaksud dengan tartib adalah mensucikan anggota wudhu secara berurutan dari yang awal hingga yang akhir.

Al-Hanafiyah dan Al-Malikiyah tidak merupakan bagian dari fardhu wudhu`, melainkan hanya sunnah muakkadah. Akan halnya urutan yang disebutan di dalam Al-Quran, bagi mereka tidaklah mengisyaratkan kewajiban urut-urutan. bersikeras mengatakan bahwa tertib urutan anggota yang dibasuh merupakan bagian dari fardhu dalamwudhu`. Sebab demikianlah selalu datangnya perintah dan contoh praktek wudhu`nya Rasulullah SAW. Tidak pernah diriwayatkan bahwa beliau berwudhu` dengan terbalik-balik urutannya. Dan membasuh anggota dengan cara sekaligus semua dibasahi tidak dianggap syah.
      '''),
      Entry('7. Al-Muwalat / Tidak Terputus', content: '''
Maksudnya adalah tidak adanya jeda yang lama ketika berpindah dari membasuh satu anggota wudhu` ke anggota wudhu` yang lainnya. Ukurannya menurut para ulama adalah selama belum sampai mengering air wudhu`nya itu.
      '''),
      Entry('8. Ad-Dalk', content: '''
Yang dimaksud dengan ad-dalk adalah mengosokkan tangan ke atas anggota wudhu setelah dibasahi dengan air dan sebelum sempat kering. Hal ini tidak menjadi kewajiban menurut jumhur ulama, namun khusus Al-Malikiyah mewajibkannya. Sebab sekedar menguyurkan air ke atas anggota tubuh tidak bisa dikatakan membasuh seperti yang dimaksud dalam Al-Quran.
      '''),
    ]),
    Entry('HAL-HAL YANG MEMBATALKAN WUDHU', children: [
      Entry('1. Keluarnya sesuatu lewat dua lubang qubul atau dubur', content: '''
- Al-Hanafiyah Batal
- Al-Malikiyah Batal jika kelua sesuatu yang lazim juga dari lubang yang lazim
- As-Syafi`i Batal
- Al-hanabalah Batal

Menurut al-Malikiyah keluar sesuatu yang tidak lazim seperti batu, darah atau nanah tidak membatalkan wudhu’ jika sesuatu tersebut terbentuk didalam usus (bukan karena menelan batu).
      '''),
      Entry('2. Tidur yang bukan dalam posisi tamakkun di atas bumi (tidak memungkinkan keluar sesuatu dari dubur)', content: '''
- Al-Hanafiyah Batal
- Al-Malikiyah Batal jika pulas
- As-Syafi`i Batal
- Al-hanabalah Batal walaupun dalam posisi tamakkun

Menurut al-Hanabalah tidur membatalkan wudhu’ secara mutlaq.

Menurut al-Malikiyah tidur pulas dapat membatalkan wudhu’ baik tamakkun aatau tidak, sementara tidur tidur ringan tidak membatalkan wudu’
      '''),
      Entry('3. Hilang Akal Karena Mabuk, Tidur Atau Sakit', content: '''
- Al-Hanafiyah Batal
- Al-Malikiyah Batal
- As-Syafi`i Batal
- Al-hanabalah Batal
      '''),
      Entry('4. Menyentuh Kemaluan dengan telalapak tangan', content: '''
- Al-Hanafiyah Tidak Batal
- Al-Malikiyah Batal
- As-Syafi`i Batal
- Al-hanabalah Batal

Menurut Madzhab Hanafi menyentuh kemaluan dengan tangan tidak batal wudu’.
      '''),
      Entry('5. Menyentuh kulit lawan jenis yang bukan mahram', content: '''
- Al-Hanafiyah Tidak Batal
- Al-Malikiyah Batal jika merasa lezat
- As-Syafi`i Batal
- Al-hanabalah Batal dengan syahwat

Menurut as-Syafi’i membatalkan wudu’ tampa lapis selain rambut, kuku dan gigi.

Menurut al-Hanafiyah tidak batal wudu’ samasekali.

Menurut al-Malikiyah membatalkan wudhu’ apabila dengan kelezatan atau bermaksud kelezatan walaupun dengan lapis tipis, baik kulit, rambut. Juga Menyentuh amrod aljamil hukumnya sama.

Menurut al-Hanabalah membatalkan wudhu’ dengan syahwat, Ajnabi atau Muhrim. Tidak batal wudu’ bagi yang di sentuh.
      '''),
      Entry('6. Keluarnya Sesuatu dari badan, seperti darah, nanah dan semacamnya, akibat luka atau lainnya', content: '''
- Al-Hanafiyah Batal
- Al-Malikiyah Tidak Batal
- As-Syafi`i Batal Tidak Batal
- Al-hanabalah Tidak Batal
      '''),
      Entry('', content: '''
Catatan :

Mereka sepakat bahwa Murtad juga menyebabkan batalnya wudu’ kecuali al Hanafiyah.

Namun al Hanafiyah berpendapat Ketawa dalam solat juga menyebabkan batal wudu’.

Makan daging kambing atau unta menurut al-Hanabalah termasuk yang membatalkan wudu’, dan juga memandikan jenazah.

Ragu terhadap hadats membatalkan wudu’ menurut al-Malikiyah.'''),
    ]),
    Entry('AIR MUSTA’MAL : ', content: '''
Pada dasarnya Madahibil Arba’ah berpandangan sama tentang Air Musta’mal yaitu air yang berpisah/ menites dari  tubuh yang digunakan untuk mengangkat hadats, atau untuk menghilangkan najis selama sifat-sifat air tidak berubah.

Bersuci dengan cara memesukkan anggota tubuh ke dalam air sedikit (kurang dari 2 Qullah =190 Liter/ wadah berukuran 85 cm2 [syafi’i] ) maka air tersebut dihukumi Musta’mal setelah diangkatnya anggota tubuh.

Air Musta’mal ini hukumnya suci tapi tidak bisa mensucikan. Artinya air itu suci tidak najis, bias digunaka dalam memasal dsb. tapi tidak bisa digunakan lagi m,ensucikan, Demikian menurut al-Madahib kecuali Malikiyah.

Menurut al-Malikiyah Air musta’mal hukumnya suci dan mensucikan, Artinya, bisa dan sah digunakan lagi untuk berwudu` atau mandi bersuci, tetapi makruh apabila masih ada air yang tidak musta’mal

Menurut as-Syafi’I Air musta’mal yang mencapai dua Qullah dengan sendirinya menjadi air suci dan mensucikan.
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
        context.bloc<PageBloc>().add(GoToMateriThaharahPage());
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
                                    .add(GoToMateriThaharahPage());
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
                                  var entries = filterSearchResults(dataText, searchText);
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
                  // TITLE THAHARAH
                  Center(
                      child: Text(
                        "Thaharah",
                        style: blackTextFont.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )),
                  // SUBTITLE WUDU
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Wudu",
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
