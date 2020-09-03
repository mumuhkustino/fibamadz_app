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
    Entry('Pengertian Dari Segi Bahasa', content: '''
Zakat dari segi bahasa berarti bersih, suci, berkat dan berkembang. Pada zaman khalifah, ulama salaf dan khalaf, zakat dikumpulkan oleh orang yang diberikan kewenangan oleh negara dan didistribusikan kepada kelompok tertentu dari masyarakat. Zakat merupakan sebuah ibadah sosial yang dapat menyuburkan rasa kepedulian dan kebersamaan di antara sesama umat Islam. Zakat juga merupakan satu dari Rukun Islam dan menjadi satu unsur pokok bagi tegaknya syariat Islam. Oleh sebab itu hukum zakat adalah wajib atas setiap muslim yang telah memenuhi syarat-syarat tertentu.
      '''),
    Entry('Pengertian Secara Umum', content: '''
Zakat secara umum sebagaimana yang telah dirumuskan oleh jumhur ulama yaitu harta tertentu, dengan ukuran tertentu yang diwajibkan oleh Allah terhadap harta kaum muslimin yang diperuntukkan bagi fakir miskin dan para mustahiq lainnya sebagai tanda rasa syukur atas nikmat dan karunia Allah Swt, dan juga berfungsi untuk mendekatkan diri kepada-Nya, serta membersihkan diri dan hartanya. Satu dari unsur zakat yang diwajibkan Allah kepada setiap muslim bernyawa untuk ditunaikan pada malam Idul Fitri adalah zakat fitrah. Zakat fitrah disebutkan juga sebagai zakat jiwa atau zakat yang ditunaikan untuk menyucikan jiwa atau badan.
      '''),
    Entry('Menurut ulama fiqh', content: '''
Menurut ulama fiqh, zakat fitrah diartikan, kadar tertentu dari makanan pokok yang wajib ditunaikan oleh setiap umat Islam pada malam Idul Fitri. Setiap umat Islam wajib mengeluarkan sebagian dari makanan pokok setelah mengerjakan ibadah puasa Ramadhan setiap tahunnya, sebagaimana firman Allah Swt, “Sungguh, orang-orang yang beriman, mengerjakan kebaikan, melaksanakan shalat dan menunaikan zakat, mereka mendapat pahala disi Tuhannya...” (QS. Al-Baqarah: 276).

Di akhir bulan Ramadhan, setiap muslim dan muslimah diwajibkan untuk menunaikan zakat fitrah. “Rasulullah saw mewajibkan sebanyak satu sha’ kurma atau satu sha’ gandum, atas budak dan orang merdeka, laki-laki dan perempuan, anak kecil dan orang dewasa dari kalangan orang Islam. Dan beliau memerintahkan agar ditunaikan sebelum orang-orang pergi menunaikan shalat.” (HR. Bukhari dan Muslim).
      '''),
    Entry('Menurut Waqi’ bin Jarah', content: '''
Menurut Waqi’ bin Jarah, zakat fitrah bagi puasa bulan ramadhan adalah seperti sujud sahwi terhadap shalat. Pengertiannya adalah zakat fitrah dapat menyempurnakan kekurangan puasa sebagaimana sujud sahwi menyempurnakan kekurangan shalat. Perkataan ini di perkuat dengan sabda Nabi Muhammad saw, “Zakat fitrah dapat membersihkan orang yang berpuasa dari perbuatan sia-sia dan perkataan keji.”
      '''),
    Entry('Ulama mazhab', content: '''
Ulama mazhab, berbeda pendapat mengenai boleh tidaknya mengeluarkan zakat dengan uang (harga) sebagai ganti dari harta zakat yang harus dikeluarkan. Ulama mazhab juga berbeda pendapat pada memahami ukuran 1 (satu) sha’ yang dijadikan takaran untuk zakat fitrah. Perbedaan juga terjadi pada orang-orang yang berhak menerimanya. Namun tulisan ini hanya menyorot sisi mengeluarkan zakat fitrah dengan uang (harga) berdasarkan dinamika mazhab empat.

Munculnya perbedaan pendapat mengenai boleh tidaknya mengeluarkan zakat fitrah dengan harga (uang) ini dikarenakan adanya perbedaan dalam memahami hadis Nabi saw yang berkaitan dengan zakat. Perbedaan orang-orang tertentu seperti Imam mujtahid dalam memahami teks Alquran dan hadis mendatangkan rahmat untuk umat manusia khususnya Islam.
      '''),
    Entry('Mazhab Hanafi', content: '''
Abu Hanifah merupakan imam pertama dari keempat imam mujtahid mutlak dan yang paling dulu lahir dan juga wafatnya, ia dijuluki Imam A’zham (pemimpin terbesar), dan Imam Ar-Ra’y (Imam Aliran Rasional). Beliau dilahirkan di Kuffah pada 80 Hijriyah. Pada masa Abu Hanifah terdapat empat sahabat Nabi, yaitu Anas bin Malik, Abdullah bin Abu Aufa, Sahl bin Sa’ad, dan Abu Thufail. Mereka adalah sahabat-sahabat yang paling akhir wafat.

Mazhab Hanafi berpendapat bahwa jenis makanan yang dikeluarkan dalam zakat fitrah adalah hintah (gandum), syair (padi belanda), tamar (kurma), dan zabib (anggur). Beliau juga berpendapat boleh pula mengeluarkan daqiq hintah (gandum yang sudah menjadi tepung) dan saweq (adonan tepung). Diriwayatkan dari Abu Hurairah bahwa sesungguhnya Rasulullah saw bersabda, “Tunaikanlah zakat fitrah sebelum kamu keluar untuk shalat hari raya, maka wajib atas setiap orang merdeka mengeluarkan dua mud gandum dan daqiq (tepung dari gandum).” (HR. Sunan Abu Daud, hal. 254).

Hadis di atas menganjurkan kita untuk mengeluarkan zakat fitrah sebelum hari raya supaya orang miskin dapat menikmatinya pada hari raya. Namun apabila tidak didapatkan jenis-jenis makanan di atas, maka madzhab Hanafi memperbolehkan membayar zakat fitrah dengan harga (uang) yang senilai dengan ukuran yang pasti yaitu 3,8 kg dari jenis bahan makanan tersebut di atas.
      '''),
    Entry('Mazhab Maliki', content: '''
Mazhab Maliki adalah mazhab yang dibangun oleh: Malik bin Anas bin Abi ‘Amir Anshari. Imam Malik lahir di Madinah pada 95 H dan wafat pada 197 H. Masalah Zakat Fitrah, Mazhab Maliki berpendapat bahwa bahan pokok untuk zakat fitrah adalah gandum, syair, salat (sejenis syair), jagung, dakhon (jenis gandum), kurma, kismis, atau keju.

Kalau tidak ada jenis bahan pokok di atas, maka yang wajib dikeluarkan adalah jenis bahan pokok dalam bentuk biji-bijian dan buah-buahan. Mazhab ini berpendapat bahwa kadar zakat fitrah yang pasti dari makanan pokok atau jenis biji-bijian adalah 2,8 kg. Imam Malik tidak membenarkan menunaikan zakat fitrah dalam bentuk uang. Sebagaimana dalam kitab Al Mudawwanah, ia berkata, “Tidak mencukupi kriteria zakat fitrah dengan uang (harga)”.
      '''),
    Entry('Mazhab Syafi’i', content: '''
Mazhab Syafi’i adalah mazhab yang dibangun oleh Muhamamad bin Idris bin Abbas bin Utsman bin Syafi’i. Imam Syafi’i lahir di Palestina, pada 150 H dan wafat di Mesir pada 204 H. Menurut Mazhab Syafi’i, zakat fitrah yang wajib dikeluarkan adalah makanan pokok daerah setempat. Tidak boleh dikeluarkan yang bukan makanan pokok atau harga dari makanan pokok tersebut. Mazhab ini berpendapat bahwa kadar zakat fitrah yang pasti dari makanan pokok atau jenis biji-bijian adalah 2,8 kg.

Menurut Mazhab ini, zakat fitrah wajib dikeluarkan berupa qut (makanan pokok yang mengenyangkan), akan tetapi golongan yang bermazhab Syafi’i berbeda pendapat tentang qut yang digunakan dalam menunaikan zakat fitrah. Di antara mereka ada yang berpendapat qut yang digunakan adalah qut balat, yaitu makanan pokok yang dikonsumsi oleh suatu daerah, sekalipun muzakki (penunai zakat fitrah) tidak mengonsumsinya. Sebagian yang lain berpendapat qut yang digunakan adalah qut dirinya, yaitu makanan pokok yang ia konsumsi walaupun daerah tersebut mengonsumsi jenis makanan yang lain.
      '''),
    Entry('Mazhab Hambali', content: '''
Mazhab Hambali didirikan oleh Ahmad bin Muhammad bin Hilal. Lahir di Baghdad pada 164 H dan wafat pada 241 H. Masalah Zakat Fitrah menurut Mazhab Hambali, zakat fitrah yang wajib dikeluarkan adalah: gandum bur, gandum syair, kurma, kismis, dan keju. Kalau tidak ada jenis bahan pokok di atas, maka yang wajib dikeluarkan adalah jenis bahan pokok dalam bentuk biji-bijian dan buah-buahan. Mazhab ini berpendapat bahwa kadar zakat fitrah yang pasti dari makanan pokok atau jenis biji-bijian adalah 2,8 kg. Dalam Kitab Al Mughni, karya Imam Ibn Qudaamah al Hanbali (wafat pada 60 H), juz 2 halaman 671, “Barang siapa memberikan qimah (harga) maka tidak memenuhi unsur zakat”.
      '''),
  ];

  final List<Entry> dataText = <Entry>[
    Entry('Pengertian Dari Segi Bahasa', content: '''
Zakat dari segi bahasa berarti bersih, suci, berkat dan berkembang. Pada zaman khalifah, ulama salaf dan khalaf, zakat dikumpulkan oleh orang yang diberikan kewenangan oleh negara dan didistribusikan kepada kelompok tertentu dari masyarakat. Zakat merupakan sebuah ibadah sosial yang dapat menyuburkan rasa kepedulian dan kebersamaan di antara sesama umat Islam. Zakat juga merupakan satu dari Rukun Islam dan menjadi satu unsur pokok bagi tegaknya syariat Islam. Oleh sebab itu hukum zakat adalah wajib atas setiap muslim yang telah memenuhi syarat-syarat tertentu.
      '''),
    Entry('Pengertian Secara Umum', content: '''
Zakat secara umum sebagaimana yang telah dirumuskan oleh jumhur ulama yaitu harta tertentu, dengan ukuran tertentu yang diwajibkan oleh Allah terhadap harta kaum muslimin yang diperuntukkan bagi fakir miskin dan para mustahiq lainnya sebagai tanda rasa syukur atas nikmat dan karunia Allah Swt, dan juga berfungsi untuk mendekatkan diri kepada-Nya, serta membersihkan diri dan hartanya. Satu dari unsur zakat yang diwajibkan Allah kepada setiap muslim bernyawa untuk ditunaikan pada malam Idul Fitri adalah zakat fitrah. Zakat fitrah disebutkan juga sebagai zakat jiwa atau zakat yang ditunaikan untuk menyucikan jiwa atau badan.
      '''),
    Entry('Menurut ulama fiqh', content: '''
Menurut ulama fiqh, zakat fitrah diartikan, kadar tertentu dari makanan pokok yang wajib ditunaikan oleh setiap umat Islam pada malam Idul Fitri. Setiap umat Islam wajib mengeluarkan sebagian dari makanan pokok setelah mengerjakan ibadah puasa Ramadhan setiap tahunnya, sebagaimana firman Allah Swt, “Sungguh, orang-orang yang beriman, mengerjakan kebaikan, melaksanakan shalat dan menunaikan zakat, mereka mendapat pahala disi Tuhannya...” (QS. Al-Baqarah: 276).

Di akhir bulan Ramadhan, setiap muslim dan muslimah diwajibkan untuk menunaikan zakat fitrah. “Rasulullah saw mewajibkan sebanyak satu sha’ kurma atau satu sha’ gandum, atas budak dan orang merdeka, laki-laki dan perempuan, anak kecil dan orang dewasa dari kalangan orang Islam. Dan beliau memerintahkan agar ditunaikan sebelum orang-orang pergi menunaikan shalat.” (HR. Bukhari dan Muslim).
      '''),
    Entry('Menurut Waqi’ bin Jarah', content: '''
Menurut Waqi’ bin Jarah, zakat fitrah bagi puasa bulan ramadhan adalah seperti sujud sahwi terhadap shalat. Pengertiannya adalah zakat fitrah dapat menyempurnakan kekurangan puasa sebagaimana sujud sahwi menyempurnakan kekurangan shalat. Perkataan ini di perkuat dengan sabda Nabi Muhammad saw, “Zakat fitrah dapat membersihkan orang yang berpuasa dari perbuatan sia-sia dan perkataan keji.”
      '''),
    Entry('Ulama mazhab', content: '''
Ulama mazhab, berbeda pendapat mengenai boleh tidaknya mengeluarkan zakat dengan uang (harga) sebagai ganti dari harta zakat yang harus dikeluarkan. Ulama mazhab juga berbeda pendapat pada memahami ukuran 1 (satu) sha’ yang dijadikan takaran untuk zakat fitrah. Perbedaan juga terjadi pada orang-orang yang berhak menerimanya. Namun tulisan ini hanya menyorot sisi mengeluarkan zakat fitrah dengan uang (harga) berdasarkan dinamika mazhab empat.

Munculnya perbedaan pendapat mengenai boleh tidaknya mengeluarkan zakat fitrah dengan harga (uang) ini dikarenakan adanya perbedaan dalam memahami hadis Nabi saw yang berkaitan dengan zakat. Perbedaan orang-orang tertentu seperti Imam mujtahid dalam memahami teks Alquran dan hadis mendatangkan rahmat untuk umat manusia khususnya Islam.
      '''),
    Entry('Mazhab Hanafi', content: '''
Abu Hanifah merupakan imam pertama dari keempat imam mujtahid mutlak dan yang paling dulu lahir dan juga wafatnya, ia dijuluki Imam A’zham (pemimpin terbesar), dan Imam Ar-Ra’y (Imam Aliran Rasional). Beliau dilahirkan di Kuffah pada 80 Hijriyah. Pada masa Abu Hanifah terdapat empat sahabat Nabi, yaitu Anas bin Malik, Abdullah bin Abu Aufa, Sahl bin Sa’ad, dan Abu Thufail. Mereka adalah sahabat-sahabat yang paling akhir wafat.

Mazhab Hanafi berpendapat bahwa jenis makanan yang dikeluarkan dalam zakat fitrah adalah hintah (gandum), syair (padi belanda), tamar (kurma), dan zabib (anggur). Beliau juga berpendapat boleh pula mengeluarkan daqiq hintah (gandum yang sudah menjadi tepung) dan saweq (adonan tepung). Diriwayatkan dari Abu Hurairah bahwa sesungguhnya Rasulullah saw bersabda, “Tunaikanlah zakat fitrah sebelum kamu keluar untuk shalat hari raya, maka wajib atas setiap orang merdeka mengeluarkan dua mud gandum dan daqiq (tepung dari gandum).” (HR. Sunan Abu Daud, hal. 254).

Hadis di atas menganjurkan kita untuk mengeluarkan zakat fitrah sebelum hari raya supaya orang miskin dapat menikmatinya pada hari raya. Namun apabila tidak didapatkan jenis-jenis makanan di atas, maka madzhab Hanafi memperbolehkan membayar zakat fitrah dengan harga (uang) yang senilai dengan ukuran yang pasti yaitu 3,8 kg dari jenis bahan makanan tersebut di atas.
      '''),
    Entry('Mazhab Maliki', content: '''
Mazhab Maliki adalah mazhab yang dibangun oleh: Malik bin Anas bin Abi ‘Amir Anshari. Imam Malik lahir di Madinah pada 95 H dan wafat pada 197 H. Masalah Zakat Fitrah, Mazhab Maliki berpendapat bahwa bahan pokok untuk zakat fitrah adalah gandum, syair, salat (sejenis syair), jagung, dakhon (jenis gandum), kurma, kismis, atau keju.

Kalau tidak ada jenis bahan pokok di atas, maka yang wajib dikeluarkan adalah jenis bahan pokok dalam bentuk biji-bijian dan buah-buahan. Mazhab ini berpendapat bahwa kadar zakat fitrah yang pasti dari makanan pokok atau jenis biji-bijian adalah 2,8 kg. Imam Malik tidak membenarkan menunaikan zakat fitrah dalam bentuk uang. Sebagaimana dalam kitab Al Mudawwanah, ia berkata, “Tidak mencukupi kriteria zakat fitrah dengan uang (harga)”.
      '''),
    Entry('Mazhab Syafi’i', content: '''
Mazhab Syafi’i adalah mazhab yang dibangun oleh Muhamamad bin Idris bin Abbas bin Utsman bin Syafi’i. Imam Syafi’i lahir di Palestina, pada 150 H dan wafat di Mesir pada 204 H. Menurut Mazhab Syafi’i, zakat fitrah yang wajib dikeluarkan adalah makanan pokok daerah setempat. Tidak boleh dikeluarkan yang bukan makanan pokok atau harga dari makanan pokok tersebut. Mazhab ini berpendapat bahwa kadar zakat fitrah yang pasti dari makanan pokok atau jenis biji-bijian adalah 2,8 kg.

Menurut Mazhab ini, zakat fitrah wajib dikeluarkan berupa qut (makanan pokok yang mengenyangkan), akan tetapi golongan yang bermazhab Syafi’i berbeda pendapat tentang qut yang digunakan dalam menunaikan zakat fitrah. Di antara mereka ada yang berpendapat qut yang digunakan adalah qut balat, yaitu makanan pokok yang dikonsumsi oleh suatu daerah, sekalipun muzakki (penunai zakat fitrah) tidak mengonsumsinya. Sebagian yang lain berpendapat qut yang digunakan adalah qut dirinya, yaitu makanan pokok yang ia konsumsi walaupun daerah tersebut mengonsumsi jenis makanan yang lain.
      '''),
    Entry('Mazhab Hambali', content: '''
Mazhab Hambali didirikan oleh Ahmad bin Muhammad bin Hilal. Lahir di Baghdad pada 164 H dan wafat pada 241 H. Masalah Zakat Fitrah menurut Mazhab Hambali, zakat fitrah yang wajib dikeluarkan adalah: gandum bur, gandum syair, kurma, kismis, dan keju. Kalau tidak ada jenis bahan pokok di atas, maka yang wajib dikeluarkan adalah jenis bahan pokok dalam bentuk biji-bijian dan buah-buahan. Mazhab ini berpendapat bahwa kadar zakat fitrah yang pasti dari makanan pokok atau jenis biji-bijian adalah 2,8 kg. Dalam Kitab Al Mughni, karya Imam Ibn Qudaamah al Hanbali (wafat pada 60 H), juz 2 halaman 671, “Barang siapa memberikan qimah (harga) maka tidak memenuhi unsur zakat”.
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
        context.bloc<PageBloc>().add(GoToMateriPage());
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
                                context.bloc<PageBloc>().add(GoToMateriPage());
                              } else {
                                setState(() {
                                  if (searchController.text.compareTo("") ==
                                      0) {
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
                                    width: MediaQuery.of(context).size.width *
                                        6 /
                                        8,
                                    child: TextField(
                                      autofocus: (searchController.text
                                              .compareTo("") ==
                                          0),
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
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                      "Zakat",
                      style: blackTextFont.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    )),
                  ),
                  // SUBTITLE FITRAH
//            Center(
//                child: Text(
//                  "Fitrah",
//                  style: blackTextFont.copyWith(fontSize: 14),
//                )),
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
