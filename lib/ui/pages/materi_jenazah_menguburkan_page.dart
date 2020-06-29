part of 'pages.dart';

class MateriJenazahMenguburkanPage extends StatefulWidget {
  @override
  _MateriJenazahMenguburkanPageState createState() => _MateriJenazahMenguburkanPageState();
}

class _MateriJenazahMenguburkanPageState extends State<MateriJenazahMenguburkanPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Menguburkan', content: '''
Menguburkan jenazah merupakan prosesi tahap akhir dalam mengurusi jenazah. Menguburkan jenazah akan membangkitkan kesadaran umat muslim dalam melaksanakan kewajiban beragama maupun bersosial.

Selain itu, melihat jenazah akan mengingatkan manusia bahwa kehidupan tidak ada yang abadi. Kematian menjadi suratan takdir tanda berakhir perjalanan kehidupan seseorang di dunia, untuk menjalani dunia lain.
'''),
    Entry('Berikut tata cara menguburkan jenazah sesuai syariat Islam dari berbagai sumber:', content: '''
Mempersiapkan Lubang Kubur

Tata cara menguburkan jenazah tentunya diawali dengan mempersiapkan lubang kuburnya. Beberapa hal penting yang perlu diperhatikan dalam membuat lubang kubur sesuai syariat Islam sebagai berikut :

> Lubang Harus Dalam

Menurut ajaran Islam, kedalaman lubang kubur setinggi orang yang berdiri di dalam dengan tangan melambai ke atas. Kemudian lebar dengan ukuran satu dzira atau satu hasta lebih satu jengkal, setara 50 centimeter.

Galilah lubang di tanah yang kuat dan dalam supaya ketika jenazah mulai membusuk, bau jasadnya tidak tercium oleh binatang pemakan bangkai. Serta aman dari longsor akibat aliran hujan.

> Bentuk Lubang

Tahap tata cara menguburkan jenazah dengan memperhatikan bentuk lubang kuburnya. Buatlah panjang yang cukup untuk jenazah, tentu melebihi tinggi badannya.

Apabila tanahnya keras, disunahkan untuk membuat liang lahat di dalam lubang kubur. Liang lahat ialah lubang yang dibuat di dinding kubur sebelah kiblat, seukuran yang cukup untuk meletakkan jenazah.

Jenazah ditaruh di liang lahat tersebut, kemudian ditutup menggunakan batu pipih. Lalu urug dengan tanah. Di Indonesia, sebagian besar masyarakat menggunakan papan kayu sebagai ganti batu pipih, supaya tanahnya tidak runtuh menimpa jenazah.

Sedangkan bila tanahnya gembur, disunahkan untuk membuat semacam lubang lagi di dasar kubur dengan ukuran dapat menampung jenazah. Jenazah diletakkan pada lubang tersebut, kemudian bagian atasnya ditutup dengan batu pipih atau papan kayu, lalu diurug dengan tanah.

> Menguburkan di Pemakaman Muslim

Alangkah baiknya bila seorang musim yang meninggal, dikuburkan di pemakaman khusus muslim. Apabila tidak ada, serta waktu menguburkan jenazah yang harus dilakukan segera dianggap tidak masalah. Selama proses penguburannya masih sesuai syariat Islam.

> Waktu Menguburkan Jenazah

Mengenai waktu menguburkan jenazah perlu diperhatikan pula, karena bisa berdampak pada proses pemakaman serta ketersediaan warga yang membantu menguburkan. Beberapa waktu yang sebaiknya dihindari ketika menguburkan jenazah:

- Matahari terbit hingga naik.
- Matahari berada di tengah-tengah.
- Matahari hampir terbenam atau benar-benar terbenam.

> Adab Membawa dan Mengiringi Jenazah

1. Mengiringi dengan Khusyuk

Ketika mengiringi jenazah ke pemakaman, sebaiknya dilakukan dengan khusyuk dan khidmat tidak diselingi dengan bercanda.

Sebagai hari terakhir bagi keluarga, kerabat, tetangga, serta teman mendampingi jenazah menuju peristirahatan terakhirnya. Selain menjaga ucapan duniawi yang kurang penting, sebaiknya memperbanyak shalawat Nabi dan memikirkan tentang kematian.

2. Adab Pengiring Jenazah

Apabila diiringi dengan berjalan kaki, maka berjalanlah di sekitar keranda. Sementara ketika mengiringi jenazah dengan kendaraan, tentunya mobil jenazah berada paling depan diikuti rombongan yang lain.

Ketika ada kendaraan lain yang hendak lewat, sebaiknya mendahulukan iringan jenazah untuk lewat terlebih dahulu.

3. Adab Masuk Kuburan

Para pelayat dan pengiring jenazah tidak dianjurkan untuk duduk sebelum jenazah diturunkan dari para pembawanya. Adab selanjutnya, membaca salam seperti yang telah diajarkan oleh Rasulullah SAW :

ASSALAMU ALAIKUM YA AHLAD DIYAR MINAL MUKMININ WA MUSLIMIN,WA INNA INSYA ALLAHU BIKUM LA HIQUN, NASALULLAHI LANA WALAKUMUL 'AFYAH.

Artinya: " Semoga keselamatan tercurah kepada kalian, wahai penghuni kubur, dari (golongan) orang-orang beriman dan orang-orang Islam. Kami insya Allah akan menyusul kalian, saya meminta keselamatan untuk kami dan kalian."

> Memasukkan Jenazah ke Lubang Kubur

Bagi jenazah perempuan, dikhususkan untuk membentangkan kain di atas lubang kubur. Ketika memasukkan jenazah ke dalam lubang, yang melakukan sebaiknya dua atau tiga orang laki-laki yang paling dekat dengan keluarga jenazah semasa hidupnya.

Selain itu orang-orang yang memasukkan jenazah, diusahakan oleh mereka yang ketika malam harinya tidak junub. Cara meletakkan jenazah dengan mendahulukan kepala, kemudian meluruskan kakinya.

Ketika meletakkannya di lubang kubur, disunahkan membaca :

BISMILLAHI WA 'ALA SUNNATI RASULILLAHI SHALLALLHU 'ALAIHI WA SALLAMA

Artinya : Dengan nama Allah dan atas agama Rasulullah" .

Tata cara mengubur jenazah membaca doa ini, sesuai sunnah Rasulullah seperti yang disebutkan dalam hadis riwayat Imam Abu Dawud :

Dari sahabat Abdullah bin Umar, bahwa bila Rasulullah meletakkan jenazah di dalam kubur, beliau membaca Bismillahi wa ala sunnati Rasulillahi shallallhu 'alaihi wa sallama."

> Posisi Jenazah

Posisi jenazah di dalam lubang kubur, wajib dimiringkan ke sebelah kanan atau menghadap arah kiblat. Jika jenazah tidak dihadapkan ke arah kiblat namun terlanjur diurug tanah, maka harus menggali lagi dan menghadapkan jenazah ke arah kiblat.

Setelah jenazah diletakkan secara perlahan di dasar lubang, disunahkan untuk melepas ikatan talinya, dimulai dari kepala dan membuka kain, pipi serta jari-jari kaki harus menempel pada tanah.

Wilayah Indonesia, arah kiblatnya cenderung ke barat. Sehingga posisi kepala selalu di utara. Bila posisi kepala ada di sebelah selatan, maka untuk menghadapkannya ke arah kiblat harus memiringkan tubuh jenazah ke sisi kiri.
'''),
    Entry('Tata Cara Menguburkan Jenazah Ringkas Sesuai Syariat', content: '''
1. Memperdalam lubang kubur, supaya tidak tercium bau jenazah dan tidak dimakan oleh binatang pemakan bangkai.

2. Meletakkan jenazah di tepi lubang atau liang kubur sebelah kiblat, lalu ditaruh papan kayu atau semacamnya dengan posisi agak miring, supaya jenazah tidak langsung tertimpa tanah.

3. Kemudian di atasnya ditaruh semacam bata posisi mendatar untuk menahan tanah timbunan, sehingga tidak mengenai jenazah langsung. Khusus kondisi tanah gembur seperti yang telah dijelaskan sebelumnya.

4. Meletakkan jenazah dengan memasukkan kepala jenazah dari arah kaki kubur, atau dari posisi selatan jika di Indonesia.

5. Letakkan jenazah posisi miring ke kanan menghadap kiblat dengan menopang tubuh menggunakan batu atau papan kayu, supaya jenazah tidak kembali terlentang.

6. Para ulama menyarankan untuk meletakkan tanah di bawah pipi jenazah sebelah kanan setelah kain kafan dan semua tali dibuka, pipi menempel langsung ke tanah.

7. Ketika memasukkan jenazah ke liang kubur dan meletakkannya dianjurkan membaca doa berikut :

"BISMILLAHI WA'ALAA MILLATI ROSUULILLAAH"

Artinya: "Dengan nama Allah dan atas agama Rasulullah." (HR. At-Tirmidzi dan Abu Daud), atau doa seperti di atas tadi.

8. Khusus jenazah perempuan, disarankan untuk membentangkan kain di atas kuburnya pada waktu dimasukkan ke liang kubur. Sedangkan untuk mayat laki-laki tidak dianjurkan.

9. Jenazah perempuan sebaiknya yang mengurus adalah laki-laki yang tidak dalam keadaan junub atau tidak menyetubuhi istri mereka pada malam sebelumnya.

10. Setelah jenazah diletakkan di lubang kubur, disarankan untuk menaburkan tanah tiga kali dari arah kepala mayit, baru kemudian ditimbuni tanah.

11. Membaca doa setelah selesai menguburkan jenazah.

Doa Sesudah Menguburkan Jenazah

"ALLAHUMMAGHFIR LAHU WARHAMHU, WA'AAFIHI WA'FU 'ANHU, WA AKRIM NUZULAHU, WA WASSI'MADKHALAHU, WAGHSILHU BIL-MA'I WATSTSALJI WAL-BARADI, WANAQQOHI MINAL KHOTOYA KAMAAYUNAQQOTTSAUBU ABYADHU MINADANASI, WAABDILHU DAARON KHOIRON IN DAARIHI, WAAHLANKHOIRON MIN AHLIHI, WAZAUJAN KHOIRON MINZAUJIHI, WAQIHI FITNATAL QOBRI WA'ADAABINNAR

Artinya: "Ya Allah, ampunilah dia, belas kasihanilah dia, hapuskanlah dan ampunilah dosa-dosanya, muliakan tempatnya (ialah surga) dan luaskanlah kuburannya. Basuhkanlah kesalahan-kesalahannya sampai bersih sebagaimana bersihnya kain putih dari kotoran. Gantikanlah rumah lebih baik daripada rumahnya yang dulu, keluarganya lebih baik daripada keluarganya yang sulit; dan masukkanlah ia ke dalam surga dan jauhkanlah ia dari siksa kubur dan siksa api neraka."

Itulah beberapa tata cara menguburkan jenazah sesuai syariat Islam yang patut diketahui, guna menjalankan sunnah Nabi SAW dengan tepat. Kematian memang tidak dapat diterka, sebagai saksi hidup proses mengurusi jenazah, alangkah baiknya mulai mempersiapkan diri untuk hari kelak.

Dan tiada seorangpun yang dapat mengetahui dengan pasti apa yang akan diusahakannya besok, dan tiada seorangpun yang mengetahui di bumi mana dia akan mati. Sesungguhnya Allah Maha Mengetahui lagi Maha Teliti. (QS. Luqman : 34)
'''),
    Entry('Sumber', content: '''
https://m.merdeka.com/trending/tata-cara-menguburkan-jenazah-sesuai-syariat-islam-kln.html
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Menguburkan', content: '''
Menguburkan jenazah merupakan prosesi tahap akhir dalam mengurusi jenazah. Menguburkan jenazah akan membangkitkan kesadaran umat muslim dalam melaksanakan kewajiban beragama maupun bersosial.

Selain itu, melihat jenazah akan mengingatkan manusia bahwa kehidupan tidak ada yang abadi. Kematian menjadi suratan takdir tanda berakhir perjalanan kehidupan seseorang di dunia, untuk menjalani dunia lain.
'''),
    Entry('Berikut tata cara menguburkan jenazah sesuai syariat Islam dari berbagai sumber:', content: '''
Mempersiapkan Lubang Kubur

Tata cara menguburkan jenazah tentunya diawali dengan mempersiapkan lubang kuburnya. Beberapa hal penting yang perlu diperhatikan dalam membuat lubang kubur sesuai syariat Islam sebagai berikut :

> Lubang Harus Dalam

Menurut ajaran Islam, kedalaman lubang kubur setinggi orang yang berdiri di dalam dengan tangan melambai ke atas. Kemudian lebar dengan ukuran satu dzira atau satu hasta lebih satu jengkal, setara 50 centimeter.

Galilah lubang di tanah yang kuat dan dalam supaya ketika jenazah mulai membusuk, bau jasadnya tidak tercium oleh binatang pemakan bangkai. Serta aman dari longsor akibat aliran hujan.

> Bentuk Lubang

Tahap tata cara menguburkan jenazah dengan memperhatikan bentuk lubang kuburnya. Buatlah panjang yang cukup untuk jenazah, tentu melebihi tinggi badannya.

Apabila tanahnya keras, disunahkan untuk membuat liang lahat di dalam lubang kubur. Liang lahat ialah lubang yang dibuat di dinding kubur sebelah kiblat, seukuran yang cukup untuk meletakkan jenazah.

Jenazah ditaruh di liang lahat tersebut, kemudian ditutup menggunakan batu pipih. Lalu urug dengan tanah. Di Indonesia, sebagian besar masyarakat menggunakan papan kayu sebagai ganti batu pipih, supaya tanahnya tidak runtuh menimpa jenazah.

Sedangkan bila tanahnya gembur, disunahkan untuk membuat semacam lubang lagi di dasar kubur dengan ukuran dapat menampung jenazah. Jenazah diletakkan pada lubang tersebut, kemudian bagian atasnya ditutup dengan batu pipih atau papan kayu, lalu diurug dengan tanah.

> Menguburkan di Pemakaman Muslim

Alangkah baiknya bila seorang musim yang meninggal, dikuburkan di pemakaman khusus muslim. Apabila tidak ada, serta waktu menguburkan jenazah yang harus dilakukan segera dianggap tidak masalah. Selama proses penguburannya masih sesuai syariat Islam.

> Waktu Menguburkan Jenazah

Mengenai waktu menguburkan jenazah perlu diperhatikan pula, karena bisa berdampak pada proses pemakaman serta ketersediaan warga yang membantu menguburkan. Beberapa waktu yang sebaiknya dihindari ketika menguburkan jenazah:

- Matahari terbit hingga naik.
- Matahari berada di tengah-tengah.
- Matahari hampir terbenam atau benar-benar terbenam.

> Adab Membawa dan Mengiringi Jenazah

1. Mengiringi dengan Khusyuk

Ketika mengiringi jenazah ke pemakaman, sebaiknya dilakukan dengan khusyuk dan khidmat tidak diselingi dengan bercanda.

Sebagai hari terakhir bagi keluarga, kerabat, tetangga, serta teman mendampingi jenazah menuju peristirahatan terakhirnya. Selain menjaga ucapan duniawi yang kurang penting, sebaiknya memperbanyak shalawat Nabi dan memikirkan tentang kematian.

2. Adab Pengiring Jenazah

Apabila diiringi dengan berjalan kaki, maka berjalanlah di sekitar keranda. Sementara ketika mengiringi jenazah dengan kendaraan, tentunya mobil jenazah berada paling depan diikuti rombongan yang lain.

Ketika ada kendaraan lain yang hendak lewat, sebaiknya mendahulukan iringan jenazah untuk lewat terlebih dahulu.

3. Adab Masuk Kuburan

Para pelayat dan pengiring jenazah tidak dianjurkan untuk duduk sebelum jenazah diturunkan dari para pembawanya. Adab selanjutnya, membaca salam seperti yang telah diajarkan oleh Rasulullah SAW :

ASSALAMU ALAIKUM YA AHLAD DIYAR MINAL MUKMININ WA MUSLIMIN,WA INNA INSYA ALLAHU BIKUM LA HIQUN, NASALULLAHI LANA WALAKUMUL 'AFYAH.

Artinya: " Semoga keselamatan tercurah kepada kalian, wahai penghuni kubur, dari (golongan) orang-orang beriman dan orang-orang Islam. Kami insya Allah akan menyusul kalian, saya meminta keselamatan untuk kami dan kalian."

> Memasukkan Jenazah ke Lubang Kubur

Bagi jenazah perempuan, dikhususkan untuk membentangkan kain di atas lubang kubur. Ketika memasukkan jenazah ke dalam lubang, yang melakukan sebaiknya dua atau tiga orang laki-laki yang paling dekat dengan keluarga jenazah semasa hidupnya.

Selain itu orang-orang yang memasukkan jenazah, diusahakan oleh mereka yang ketika malam harinya tidak junub. Cara meletakkan jenazah dengan mendahulukan kepala, kemudian meluruskan kakinya.

Ketika meletakkannya di lubang kubur, disunahkan membaca :

BISMILLAHI WA 'ALA SUNNATI RASULILLAHI SHALLALLHU 'ALAIHI WA SALLAMA

Artinya : Dengan nama Allah dan atas agama Rasulullah" .

Tata cara mengubur jenazah membaca doa ini, sesuai sunnah Rasulullah seperti yang disebutkan dalam hadis riwayat Imam Abu Dawud :

Dari sahabat Abdullah bin Umar, bahwa bila Rasulullah meletakkan jenazah di dalam kubur, beliau membaca Bismillahi wa ala sunnati Rasulillahi shallallhu 'alaihi wa sallama."

> Posisi Jenazah

Posisi jenazah di dalam lubang kubur, wajib dimiringkan ke sebelah kanan atau menghadap arah kiblat. Jika jenazah tidak dihadapkan ke arah kiblat namun terlanjur diurug tanah, maka harus menggali lagi dan menghadapkan jenazah ke arah kiblat.

Setelah jenazah diletakkan secara perlahan di dasar lubang, disunahkan untuk melepas ikatan talinya, dimulai dari kepala dan membuka kain, pipi serta jari-jari kaki harus menempel pada tanah.

Wilayah Indonesia, arah kiblatnya cenderung ke barat. Sehingga posisi kepala selalu di utara. Bila posisi kepala ada di sebelah selatan, maka untuk menghadapkannya ke arah kiblat harus memiringkan tubuh jenazah ke sisi kiri.
'''),
    Entry('Tata Cara Menguburkan Jenazah Ringkas Sesuai Syariat', content: '''
1. Memperdalam lubang kubur, supaya tidak tercium bau jenazah dan tidak dimakan oleh binatang pemakan bangkai.

2. Meletakkan jenazah di tepi lubang atau liang kubur sebelah kiblat, lalu ditaruh papan kayu atau semacamnya dengan posisi agak miring, supaya jenazah tidak langsung tertimpa tanah.

3. Kemudian di atasnya ditaruh semacam bata posisi mendatar untuk menahan tanah timbunan, sehingga tidak mengenai jenazah langsung. Khusus kondisi tanah gembur seperti yang telah dijelaskan sebelumnya.

4. Meletakkan jenazah dengan memasukkan kepala jenazah dari arah kaki kubur, atau dari posisi selatan jika di Indonesia.

5. Letakkan jenazah posisi miring ke kanan menghadap kiblat dengan menopang tubuh menggunakan batu atau papan kayu, supaya jenazah tidak kembali terlentang.

6. Para ulama menyarankan untuk meletakkan tanah di bawah pipi jenazah sebelah kanan setelah kain kafan dan semua tali dibuka, pipi menempel langsung ke tanah.

7. Ketika memasukkan jenazah ke liang kubur dan meletakkannya dianjurkan membaca doa berikut :

"BISMILLAHI WA'ALAA MILLATI ROSUULILLAAH"

Artinya: "Dengan nama Allah dan atas agama Rasulullah." (HR. At-Tirmidzi dan Abu Daud), atau doa seperti di atas tadi.

8. Khusus jenazah perempuan, disarankan untuk membentangkan kain di atas kuburnya pada waktu dimasukkan ke liang kubur. Sedangkan untuk mayat laki-laki tidak dianjurkan.

9. Jenazah perempuan sebaiknya yang mengurus adalah laki-laki yang tidak dalam keadaan junub atau tidak menyetubuhi istri mereka pada malam sebelumnya.

10. Setelah jenazah diletakkan di lubang kubur, disarankan untuk menaburkan tanah tiga kali dari arah kepala mayit, baru kemudian ditimbuni tanah.

11. Membaca doa setelah selesai menguburkan jenazah.

Doa Sesudah Menguburkan Jenazah

"ALLAHUMMAGHFIR LAHU WARHAMHU, WA'AAFIHI WA'FU 'ANHU, WA AKRIM NUZULAHU, WA WASSI'MADKHALAHU, WAGHSILHU BIL-MA'I WATSTSALJI WAL-BARADI, WANAQQOHI MINAL KHOTOYA KAMAAYUNAQQOTTSAUBU ABYADHU MINADANASI, WAABDILHU DAARON KHOIRON IN DAARIHI, WAAHLANKHOIRON MIN AHLIHI, WAZAUJAN KHOIRON MINZAUJIHI, WAQIHI FITNATAL QOBRI WA'ADAABINNAR

Artinya: "Ya Allah, ampunilah dia, belas kasihanilah dia, hapuskanlah dan ampunilah dosa-dosanya, muliakan tempatnya (ialah surga) dan luaskanlah kuburannya. Basuhkanlah kesalahan-kesalahannya sampai bersih sebagaimana bersihnya kain putih dari kotoran. Gantikanlah rumah lebih baik daripada rumahnya yang dulu, keluarganya lebih baik daripada keluarganya yang sulit; dan masukkanlah ia ke dalam surga dan jauhkanlah ia dari siksa kubur dan siksa api neraka."

Itulah beberapa tata cara menguburkan jenazah sesuai syariat Islam yang patut diketahui, guna menjalankan sunnah Nabi SAW dengan tepat. Kematian memang tidak dapat diterka, sebagai saksi hidup proses mengurusi jenazah, alangkah baiknya mulai mempersiapkan diri untuk hari kelak.

Dan tiada seorangpun yang dapat mengetahui dengan pasti apa yang akan diusahakannya besok, dan tiada seorangpun yang mengetahui di bumi mana dia akan mati. Sesungguhnya Allah Maha Mengetahui lagi Maha Teliti. (QS. Luqman : 34)
'''),
    Entry('Sumber', content: '''
https://m.merdeka.com/trending/tata-cara-menguburkan-jenazah-sesuai-syariat-islam-kln.html
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
        context.bloc<PageBloc>().add(GoToMateriJenazahPage());
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
            Center(
                child: Text(
                  "Menguburkan",
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
