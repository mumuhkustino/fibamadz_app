part of 'pages.dart';

class MateriThaharahMenghilangkanNajisPage extends StatefulWidget {
  @override
  _MateriThaharahMenghilangkanNajisPageState createState() =>
      _MateriThaharahMenghilangkanNajisPageState();
}

class _MateriThaharahMenghilangkanNajisPageState
    extends State<MateriThaharahMenghilangkanNajisPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('', content: '''
Najis adalah hal yang tak lepas dari keseharian kita. Ia terkait dengan keabsahan ibadah shalat. Tidak hanya dalam ibadah, najis juga menjadi sebab keharaman suatu makanan atau minuman. Nah, dalam persoalan najis ini, ulama memiliki keragaman pendapat yang akan berdampak pada penetapan status halal dan haram dalam pangan, obat maupun kosmetika.

Secara bahasa, najis merupakan turunan dari kata najisa – yanjisu – najsan. Ia semakna dengan al-qadzarah, yakni sesuatu yang kotor. Dalam Lisanul Arab, Ibnu Manzhur menyebutkan bahwa makna najis mencakup tinja manusia dan hewan serta hal-hal lain yang membuat jijik. Di samping makna kebahasaan tersebut, para ulama fiqih memberikan definisi tersendiri seputar najis.   Salah satu bahasan seputar najis adalah dari Imam al-Jashshash, seorang ulama bermazhab Hanafiyah, dalam kitabnya Ahkamul Quran. Beliau menafsirkan ayat berikut:   يَا أَيُّهَا الَّذِينَ آمَنُوا إِنَّمَا الْمُشْرِكُونَ نَجَسٌ…   “Sesungguhnya orang-orang musyrik itu najis...” (QS At Taubah: 28)

Imam al-Jashshash menyebutkan bahwa najis ada dalam benda dan perbuatan – karena di ayat itu terkait dengan perilaku syirik. Perbuatan syirik adalah sesuatu yang buruk sehingga disebut najs, kembali ke arti literernya. Namun ulama yang wafat tahun 370 H ini tidak menjelaskan perihal najis benda secara spesifik.   Menurut KH. Ali Mustafa Yaqub, benda najis tidak dijelaskan oleh beliau karena masyarakat kala itu sudah paham dan tahu benda apa yang najis dan tidak. Tanpa diberikan definisi, masyarakat tahu: ini najis, itu tidak najis. Sebagian ulama dari generasi awal memang kerap tidak menyajikan pengertian definitif karena sudah dikenalnya barang-barang yang dianggap najis.

Kalangan ulama mazhab Hanafi yang lebih kiwari, seperti Imam al-Kasani menyebutkan bahwa najis adalah sebutan untuk benda yang dianggap jijik. Penjelasan ini dilengkapi ulama mazhab Hanafi lainnya yang menyebutkan bahwa najis ada yang hakiki dan berwujud, ada yang hukmi. Namun secara umum yang dipahami sebagai najis adalah hal ada wujud bendanya saja.   Imam Ibnu Abidin dari kalangan Hanafiyah, menyebutkan bahwa dari najis yang hakiki dan hukmi tersebut, meniscayakan pemahaman bahwa najis hakiki adalah sesuatu yang kotor, atau al-khabats; serta najis yang hukmi adalah al-hadats. Keduanya sama-sama “sesuatu yang kotor” namun yang satu berwujud, yang satu sifatnya tidak.

Dalam mazhab Maliki, sebagaimana dicatat oleh KH. Ali Mustafa Yaqub, agaknya tidak banyak membahas terkait definisi najis. Imam Malik dalam al-Mudawwanah al-Kubra disebutkan tidak mencatat secara detail tentang najis. Sebagaimana pada kalangan Hanafiyah, pemahaman masyarakat tentang benda najis dan tidak sudah maklum, kendati tanpa definisi.

Kalangan ulama mazhab Syafii dan Hanbali agaknya mulai memaparkan definisi najis secara lebih spesifik dan gamblang. Salah satu definisi najis yang kerap dirujuk sebagaimana dicatat oleh Imam Zakariya al-Anshari, penulis kitab Asnal Mathalib. Dalam kitab tersebut, najis adalah:   بِكُلِّ عَيْنٍ حَرُمَ تَنَاوُلُهَا مُطْلَقًا فِي حَالَةِ الِاخْتِيَارِ مَعَ سُهُولَةِ تَمْيِيزِهَا، وَإِمْكَانِ تَنَاوُلِهَا لَا لِحُرْمَتِهَا، وَلَا لِاسْتِقْذَارِهَا، وَلَا لِضَرَرِهَا فِي بَدَنٍ أَوْ عَقْلٍ   “Setiap benda yang haram dikonsumsi secara mutlak dalam keadaan ikhtiyar (tidak terdesak dan bebas), mudah dibedakan wujudnya, dapat dipergunakan, tidak dimuliakan, tidak dianggap jiji, serta bukan karena sebab berbahaya bagi tubuh dan pikiran.” (Imam Zakariya al-Anshari. Asnal Mathalib. Beirut: Dar al-Kutub al-Ilmiyyah. Juz I/Hal 25)   Lewat definisi di atas banyak pemahaman yang bisa diambil. Najis mesti ‘ain, yaitu ada wujudnya – karena itu angin kentut tidak najis. Kemudian ia haram dikonsumsi, maka segala yang boleh dimakan atau diminum adalah barang yang suci. Statusnya pun mutlak, yakni tidak dapat digunakan banyak atau sedikit kecuali ada indikasi atau darurat. Lalu najis ini mesti mudah dibedakan dan diidentifikasi wujudnya jika bercampur dengan zat lain. Selain itu, sebab keharamannya bukan karena ia dimuliakan, menjijikkan, atau dinilai membahayakan diri.   Penjelasan di atas cukup rinci. Ada juga ulama Syafiiyah mendefinisikan najis lebih ringkas:   النَّجَاسَةُ لُغَةً مَا يُسْتَقْذَرُ وَشَرْعًا بِالْحَدِّ مُسْتَقْذَرٌ يَمْنَعُ صِحَّةَ الصَّلَاةِ حَيْثُ لَا مُرَخِّصَ   Artinya: “Secara bahasa, najis adalah sesuatu yang dipandang jijik. Sedangkan secara istilah (selain kotor dan menjijikkan) ia menyebabkan shalat tidak sah – selama tidak ada sebab yang meringankan.” (Sulaiman bin Umar Al-Ujaili. Hasyiyah al-Jamal. Beirut: Ihya Turats al-Arabi. Juz II/ Hal 105)   KH. Ali Mustafa Yaqub dalam bukunya Kriteria Halal-Haram untuk Pangan, Obat dan Kosmetika Menurut Al-Quran dan Hadis mengutip salah satu pendapat dari kalangan mazhab Hanbali, yaitu Imam Ibnu Muflih. Konon kalangan mazhab Hanbali tidak jauh berbeda dengan definisi dan pemahaman najis dengan kalangan mazhab Syafii.   Dalam diskursus ulama fiqih, perbedaan banyak terjadi dalam pembahasan soal wujud najis. Pembahasan di atas banyak terkait dengan najis yang tampak wujudnya – yang memiliki ‘ain atau berwujud benda.   Sebagaimana sebagian kalangan ulama mazhab Hanafi, ulama bermazhab Syafii maupun Hanbali juga memiliki pemahaman soal najis berwujud benda dan “abstrak”. Syekh Salim bin Sumair al-Hadrami menjelaskan dalam kitab fiqih Safinatun Naja, bahwa najis dibagi dua, yaitu yang tampak wujudnya atau najis ‘ainiyyah, serta ada pula najis yang tidak tampak wujudnya secara nyata atau najis hukmiyyah.   Dari ragam pendapat seputar najis di atas, dapat dijadikan acuan bahwa secara umum najis adalah barang yang dipandang kotor atau menjijikkan, serta menyebabkan shalat tidak sah. Definisi najis yang lebih lengkap seperti diungkap Imam Zakariya al-Anshari dapat digunakan di kemudianhari untuk memberi batasan pada barang dan produk yang belum ditemui di masa itu.   Definisi yang spesifik, seperti disajikan ulama dari kalangan Syafiiyah, akan berdampak pada penentuan status najis suatu benda. Kasus yang bisa ditemui misalnya bagi sementara kalangan Hanafiyah, badan anjing tidak najis – berbeda dengan Syafiiyah yang memandang seluruh tubuh anjing itu najis. Begitupun misalnya dalam masalah khamar, kalangan Hanafiyah membuat klasifikasi tentang hasil fermentasi anggur yang dinilai najis dan haram. Berbeda dengan kalangan Syafiiyah yang dikarenakan minuman fermentasi anggur (wine) itu memabukkan dan mencakup keseluruhan definisi, seluruhnya dipandang najis dan haram.   Beda pendapat seputar najis ini juga berimbas pada masalah ketercampuran serta perubahan wujud najis dan benda suci, seperti dalam kasus istihalah. Ragam pendapat ulama seputar najis ini sedikit banyak akan menentukan status halal dan haram produk, lalu disadari atau tidak juga menentukan pola serta model konsumsi pangan dan obat masyarakat. Wallahu a’lam.'''),
  ];
  // DATA YANG DAPAT BERUBAH
  final List<Entry> dataText = <Entry>[
    Entry('', content: '''
Najis adalah hal yang tak lepas dari keseharian kita. Ia terkait dengan keabsahan ibadah shalat. Tidak hanya dalam ibadah, najis juga menjadi sebab keharaman suatu makanan atau minuman. Nah, dalam persoalan najis ini, ulama memiliki keragaman pendapat yang akan berdampak pada penetapan status halal dan haram dalam pangan, obat maupun kosmetika.

Secara bahasa, najis merupakan turunan dari kata najisa – yanjisu – najsan. Ia semakna dengan al-qadzarah, yakni sesuatu yang kotor. Dalam Lisanul Arab, Ibnu Manzhur menyebutkan bahwa makna najis mencakup tinja manusia dan hewan serta hal-hal lain yang membuat jijik. Di samping makna kebahasaan tersebut, para ulama fiqih memberikan definisi tersendiri seputar najis.   Salah satu bahasan seputar najis adalah dari Imam al-Jashshash, seorang ulama bermazhab Hanafiyah, dalam kitabnya Ahkamul Quran. Beliau menafsirkan ayat berikut:   يَا أَيُّهَا الَّذِينَ آمَنُوا إِنَّمَا الْمُشْرِكُونَ نَجَسٌ…   “Sesungguhnya orang-orang musyrik itu najis...” (QS At Taubah: 28)

Imam al-Jashshash menyebutkan bahwa najis ada dalam benda dan perbuatan – karena di ayat itu terkait dengan perilaku syirik. Perbuatan syirik adalah sesuatu yang buruk sehingga disebut najs, kembali ke arti literernya. Namun ulama yang wafat tahun 370 H ini tidak menjelaskan perihal najis benda secara spesifik.   Menurut KH. Ali Mustafa Yaqub, benda najis tidak dijelaskan oleh beliau karena masyarakat kala itu sudah paham dan tahu benda apa yang najis dan tidak. Tanpa diberikan definisi, masyarakat tahu: ini najis, itu tidak najis. Sebagian ulama dari generasi awal memang kerap tidak menyajikan pengertian definitif karena sudah dikenalnya barang-barang yang dianggap najis.

Kalangan ulama mazhab Hanafi yang lebih kiwari, seperti Imam al-Kasani menyebutkan bahwa najis adalah sebutan untuk benda yang dianggap jijik. Penjelasan ini dilengkapi ulama mazhab Hanafi lainnya yang menyebutkan bahwa najis ada yang hakiki dan berwujud, ada yang hukmi. Namun secara umum yang dipahami sebagai najis adalah hal ada wujud bendanya saja.   Imam Ibnu Abidin dari kalangan Hanafiyah, menyebutkan bahwa dari najis yang hakiki dan hukmi tersebut, meniscayakan pemahaman bahwa najis hakiki adalah sesuatu yang kotor, atau al-khabats; serta najis yang hukmi adalah al-hadats. Keduanya sama-sama “sesuatu yang kotor” namun yang satu berwujud, yang satu sifatnya tidak.

Dalam mazhab Maliki, sebagaimana dicatat oleh KH. Ali Mustafa Yaqub, agaknya tidak banyak membahas terkait definisi najis. Imam Malik dalam al-Mudawwanah al-Kubra disebutkan tidak mencatat secara detail tentang najis. Sebagaimana pada kalangan Hanafiyah, pemahaman masyarakat tentang benda najis dan tidak sudah maklum, kendati tanpa definisi.

Kalangan ulama mazhab Syafii dan Hanbali agaknya mulai memaparkan definisi najis secara lebih spesifik dan gamblang. Salah satu definisi najis yang kerap dirujuk sebagaimana dicatat oleh Imam Zakariya al-Anshari, penulis kitab Asnal Mathalib. Dalam kitab tersebut, najis adalah:   بِكُلِّ عَيْنٍ حَرُمَ تَنَاوُلُهَا مُطْلَقًا فِي حَالَةِ الِاخْتِيَارِ مَعَ سُهُولَةِ تَمْيِيزِهَا، وَإِمْكَانِ تَنَاوُلِهَا لَا لِحُرْمَتِهَا، وَلَا لِاسْتِقْذَارِهَا، وَلَا لِضَرَرِهَا فِي بَدَنٍ أَوْ عَقْلٍ   “Setiap benda yang haram dikonsumsi secara mutlak dalam keadaan ikhtiyar (tidak terdesak dan bebas), mudah dibedakan wujudnya, dapat dipergunakan, tidak dimuliakan, tidak dianggap jiji, serta bukan karena sebab berbahaya bagi tubuh dan pikiran.” (Imam Zakariya al-Anshari. Asnal Mathalib. Beirut: Dar al-Kutub al-Ilmiyyah. Juz I/Hal 25)   Lewat definisi di atas banyak pemahaman yang bisa diambil. Najis mesti ‘ain, yaitu ada wujudnya – karena itu angin kentut tidak najis. Kemudian ia haram dikonsumsi, maka segala yang boleh dimakan atau diminum adalah barang yang suci. Statusnya pun mutlak, yakni tidak dapat digunakan banyak atau sedikit kecuali ada indikasi atau darurat. Lalu najis ini mesti mudah dibedakan dan diidentifikasi wujudnya jika bercampur dengan zat lain. Selain itu, sebab keharamannya bukan karena ia dimuliakan, menjijikkan, atau dinilai membahayakan diri.   Penjelasan di atas cukup rinci. Ada juga ulama Syafiiyah mendefinisikan najis lebih ringkas:   النَّجَاسَةُ لُغَةً مَا يُسْتَقْذَرُ وَشَرْعًا بِالْحَدِّ مُسْتَقْذَرٌ يَمْنَعُ صِحَّةَ الصَّلَاةِ حَيْثُ لَا مُرَخِّصَ   Artinya: “Secara bahasa, najis adalah sesuatu yang dipandang jijik. Sedangkan secara istilah (selain kotor dan menjijikkan) ia menyebabkan shalat tidak sah – selama tidak ada sebab yang meringankan.” (Sulaiman bin Umar Al-Ujaili. Hasyiyah al-Jamal. Beirut: Ihya Turats al-Arabi. Juz II/ Hal 105)   KH. Ali Mustafa Yaqub dalam bukunya Kriteria Halal-Haram untuk Pangan, Obat dan Kosmetika Menurut Al-Quran dan Hadis mengutip salah satu pendapat dari kalangan mazhab Hanbali, yaitu Imam Ibnu Muflih. Konon kalangan mazhab Hanbali tidak jauh berbeda dengan definisi dan pemahaman najis dengan kalangan mazhab Syafii.   Dalam diskursus ulama fiqih, perbedaan banyak terjadi dalam pembahasan soal wujud najis. Pembahasan di atas banyak terkait dengan najis yang tampak wujudnya – yang memiliki ‘ain atau berwujud benda.   Sebagaimana sebagian kalangan ulama mazhab Hanafi, ulama bermazhab Syafii maupun Hanbali juga memiliki pemahaman soal najis berwujud benda dan “abstrak”. Syekh Salim bin Sumair al-Hadrami menjelaskan dalam kitab fiqih Safinatun Naja, bahwa najis dibagi dua, yaitu yang tampak wujudnya atau najis ‘ainiyyah, serta ada pula najis yang tidak tampak wujudnya secara nyata atau najis hukmiyyah.   Dari ragam pendapat seputar najis di atas, dapat dijadikan acuan bahwa secara umum najis adalah barang yang dipandang kotor atau menjijikkan, serta menyebabkan shalat tidak sah. Definisi najis yang lebih lengkap seperti diungkap Imam Zakariya al-Anshari dapat digunakan di kemudianhari untuk memberi batasan pada barang dan produk yang belum ditemui di masa itu.   Definisi yang spesifik, seperti disajikan ulama dari kalangan Syafiiyah, akan berdampak pada penentuan status najis suatu benda. Kasus yang bisa ditemui misalnya bagi sementara kalangan Hanafiyah, badan anjing tidak najis – berbeda dengan Syafiiyah yang memandang seluruh tubuh anjing itu najis. Begitupun misalnya dalam masalah khamar, kalangan Hanafiyah membuat klasifikasi tentang hasil fermentasi anggur yang dinilai najis dan haram. Berbeda dengan kalangan Syafiiyah yang dikarenakan minuman fermentasi anggur (wine) itu memabukkan dan mencakup keseluruhan definisi, seluruhnya dipandang najis dan haram.   Beda pendapat seputar najis ini juga berimbas pada masalah ketercampuran serta perubahan wujud najis dan benda suci, seperti dalam kasus istihalah. Ragam pendapat ulama seputar najis ini sedikit banyak akan menentukan status halal dan haram produk, lalu disadari atau tidak juga menentukan pola serta model konsumsi pangan dan obat masyarakat. Wallahu a’lam.'''),
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
        return;
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
                          "Menghilangkan Najis",
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
