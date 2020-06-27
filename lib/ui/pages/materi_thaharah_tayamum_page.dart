part of 'pages.dart';

class MateriThaharahTayamumPage extends StatefulWidget {
  @override
  _MateriThaharahTayamumPageState createState() =>
      _MateriThaharahTayamumPageState();
}

class _MateriThaharahTayamumPageState extends State<MateriThaharahTayamumPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  final List<Entry> text = <Entry>[
    Entry('Pengertian Tayammum', content: '''
Kami mulai pembahasan ini dengan mengemukakan pengertian tayammum. Tayammum secara bahasa diartikan sebagai Al Qosdu (القَصْدُ) yang berarti maksud. Sedangkan secara istilah dalam syari’at adalah sebuah peribadatan kepada Allah berupa mengusap wajah dan kedua tangan dengan menggunakan sho’id yang bersih. Sho’id adalah seluruh permukaan bumi yang dapat digunakan untuk bertayammum baik yang terdapat tanah di atasnya ataupun tidak.
'''),
    Entry('Dalil Disyari’atkannya Tayammum', content: '''
Tayammum disyari’atkan dalam islam berdasarkan dalil Al Qur’an, As Sunnah dan Ijma’ (konsensus) kaum muslimin. Adapun dalil dari Al Qur’an adalah firman Allah ‘Azza wa Jalla,

وَإِنْ كُنْتُمْ مَرْضَى أَوْ عَلَى سَفَرٍ أَوْ جَاءَ أَحَدٌ مِنْكُمْ مِنَ الْغَائِطِ أَوْ لَامَسْتُمُ النِّسَاءَ فَلَمْ تَجِدُوا مَاءً فَتَيَمَّمُوا صَعِيدًا طَيِّبًا فَامْسَحُوا بِوُجُوهِكُمْ وَأَيْدِيكُمْ مِنْهُ

“Dan jika kamu sakit atau dalam perjalanan atau kembali dari tempat buang air atau berhubungan badan dengan perempuan, lalu kamu tidak memperoleh air, maka bertayammumlah dengan permukaan bumi yang baik (bersih); sapulah mukamu dan tanganmu dengan tanah itu”. (QS. Al Maidah [5] : 6).

Adapun dalil dari As Sunnah adalah sabda Rasulullah shollallahu ‘alaihi was sallam dari sahabat Hudzaifah Ibnul Yaman rodhiyallahu ‘anhu,

« وَجُعِلَتْ تُرْبَتُهَا لَنَا طَهُورًا إِذَا لَمْ نَجِدِ الْمَاءَ »

“Dijadikan bagi kami (ummat Nabi Muhammad shollallahu ‘alaihi was sallam ) permukaan bumi sebagai thohur/sesuatu yang digunakan untuk besuci (tayammum) jika kami tidak menjumpai air”.
'''),
    Entry('Media yang dapat Digunakan untuk Tayammum', content: '''
Media yang dapat digunakan untuk bertayammum adalah seluruh permukaan bumi yang bersih baik itu berupa pasir, bebatuan, tanah yang berair, lembab ataupun kering. Hal ini berdasarkan hadits Nabi shollallahu ‘alaihi was sallam dari sahabat Hudzaifah Ibnul Yaman rodhiyallahu ‘anhu di atas dan secara khusus,

جُعِلَتِ الأَرْضُ كُلُّهَا لِى وَلأُمَّتِى مَسْجِداً وَطَهُوراً

“Dijadikan (permukaan, pent.) bumi seluruhnya bagiku (Nabi shollallahu ‘alaihi was sallam) dan ummatku sebagai tempat untuk sujud dan sesuatu yang digunakan untuk bersuci”.

Jika ada orang yang mengatakan bukankah dalam sebuah hadits Hudzaifah ibnul Yaman Nabi mengatakan tanah?! Maka kita katakan sebagaimana yang dikatakan oleh Ash Shon’ani rohimahullah, “Penyebutan sebagian anggota lafadz umum bukanlah pengkhususan”. Hal ini merupakan pendapat Al Auzaa’i, Sufyan Ats Tsauri Imam Malik, Imam Abu Hanifah demikian juga hal ini merupakan pendapat Al Amir Ashon’ani, Syaikh Al Albani, Syaikh Abullah Alu Bassaam –rohimahumullah-, Syaikh DR. Sholeh bin Fauzan Al Fauzan dan Syaikh DR. Abdul Adzim bin Badawiy Al Kholafiy hafidzahumallah.
'''),
    Entry('Keadaan yang  Dapat Menyebabkan Seseorang Bersuci  dengan Tayammum',
        content: '''
Syaikh Dr. Sholeh bin Fauzan Al Fauzan hafidzahullah menyebutkan beberapa keadaan yang dapat menyebabkan seseorang bersuci dengan tayammum,
- Jika tidak ada air baik dalam keadaan safar/dalam perjalanan ataupun tidak.
- Terdapat air (dalam jumlah terbatas pent.) bersamaan dengan adanya kebutuhan lain yang memerlukan air tersebut semisal untuk minum dan memasak.
- Adanya kekhawatiran jika bersuci dengan air akan membahayakan badan atau semakin lama sembuh dari sakit.
- Ketidakmapuan menggunakan air untuk berwudhu dikarenakan sakit dan tidak mampu bergerak untuk mengambil air wudhu dan tidak adanya orang yang mampu membantu untuk berwudhu bersamaan dengan kekhawatiran habisnya waktu sholat.
- Khawatir kedinginan jika bersuci dengan air dan tidak adanya yang dapat menghangatkan air tersebut.
'''),
    Entry('Tata Cara Tayammum Nabi shallallahu ‘alaihi was sallam', content: '''
Tata cara tayammum Nabi shollallahu ‘alaihi was sallam dijelaskan hadits ‘Ammar bin Yasir rodhiyallahu ‘anhu,

بَعَثَنِى رَسُولُ اللَّهِ – صلى الله عليه وسلم – فِى حَاجَةٍ فَأَجْنَبْتُ ، فَلَمْ أَجِدِ الْمَاءَ ، فَتَمَرَّغْتُ فِى الصَّعِيدِ كَمَا تَمَرَّغُ الدَّابَّةُ ، فَذَكَرْتُ ذَلِكَ لِلنَّبِىِّ – صلى الله عليه وسلم – فَقَالَ « إِنَّمَا كَانَ يَكْفِيكَ أَنْ تَصْنَعَ هَكَذَا » . فَضَرَبَ بِكَفِّهِ ضَرْبَةً عَلَى الأَرْضِ ثُمَّ نَفَضَهَا ، ثُمَّ مَسَحَ بِهَا ظَهْرَ كَفِّهِ بِشِمَالِهِ ، أَوْ ظَهْرَ شِمَالِهِ بِكَفِّهِ ، ثُمَّ مَسَحَ بِهِمَا وَجْهَهُ

Rasulullah shallallahu ‘alaihi was sallam mengutusku untuk suatu keperluan, kemudian aku mengalami junub dan aku tidak menemukan air. Maka aku berguling-guling di tanah sebagaimana layaknya hewan yang berguling-guling di tanah. Kemudian aku ceritakan hal tersebut kepada Nabi shallallahu ‘alaihi was sallam. Lantas beliau mengatakan, “Sesungguhnya cukuplah engkau melakukannya seperti ini”. Seraya beliau memukulkan telapak tangannya ke permukaan bumi sekali pukulan lalu meniupnya. Kemudian beliau mengusap punggung telapak tangan (kanan)nya dengan tangan kirinya dan mengusap punggung telapak tangan (kiri)nya dengan tangan kanannya, lalu beliau mengusap wajahnya dengan kedua tangannya.

Dan dalam salah satu lafadz riwayat Bukhori,

وَمَسَحَ وَجْهَهُ وَكَفَّيْهِ وَاحِدَةً

“Dan beliau mengusap wajahnya dan kedua telapak tangannya dengan sekali usapan”.

Berdasarkan hadits di atas kita dapat simpulkan bahwa tata cara tayammum beliau shallallahu ‘alaihi was sallam adalah sebagai berikut.

- Memukulkan kedua telapak tangan ke permukaan bumi dengan sekali pukulan kemudian meniupnya.
- Kemudian menyapu punggung telapak tangan kanan dengan tangan kiri dan sebaliknya.
- Kemudian menyapu wajah dengan dua telapak tangan.
- Semua usapan baik ketika mengusap telapak tangan dan wajah dilakukan sekali usapan saja.
- Bagian tangan yang diusap adalah bagian telapak tangan sampai pergelangan tangan saja atau dengan kata lain tidak sampai siku seperti pada saat wudhu.
- Tayammum dapat menghilangkan hadats besar semisal janabah, demikian juga untuk hadats kecil.
- Tidak wajibnya urut/tertib dalam tayammum.
'''),
    Entry('Pembatal Tayamum', content: '''
Pembatal tayammum sebagaimana pembatal wudhu. Demikian juga tayammum tidak dibolehkan lagi apa bila telah ditemukan air bagi orang yang bertayammum karena ketidakadaan air dan telah adanya kemampuan menggunakan air atau tidak sakit lagi  bagi orang yang bertayammum karena ketidakmampuan menggunakan air. Akan tetapi shalat atau ibadah lainnya yang telah ia kerjakan sebelumnya sah dan tidak perlu mengulanginya. Hal ini berdasarkan hadits Nabi shallallahu ‘alaihi was sallam dari sahabat Abu Sa’id Al Khudri radhiyallahu ‘anhu,

خَرَجَ رَجُلَانِ فِي سَفَرٍ ، فَحَضَرَتْ الصَّلَاةُ – وَلَيْسَ مَعَهُمَا مَاءٌ – فَتَيَمَّمَا صَعِيدًا طَيِّبًا ، فَصَلَّيَا ، ثُمَّ وَجَدَا الْمَاءَ فِي الْوَقْتِ ، فَأَعَادَ أَحَدُهُمَا الصَّلَاةَ وَالْوُضُوءَ ، وَلَمْ يُعِدْ الْآخَرُ ، ثُمَّ أَتَيَا رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَذَكَرَا ذَلِكَ لَهُ ، فَقَالَ لِلَّذِي لَمْ يُعِدْ : أَصَبْت السُّنَّةَ وَأَجْزَأَتْك صَلَاتُك وَقَالَ لِلْآخَرِ : لَك الْأَجْرُ مَرَّتَيْنِ

Dua orang lelaki keluar untuk safar. Kemudian tibalah waktu shalat dan tidak ada air di sekitar mereka. Kemudian keduanya bertayammum dengan permukaan bumi yang suci lalu keduanya shalat. Setelah itu keduanya menemukan air sedangkan saat itu masih dalam waktu yang dibolehkan shalat yang telah mereka kerjakan tadi. Lalu salah seorang dari mereka berwudhu dan mengulangi shalat sedangkan yang lainnya tidak mengulangi shalatnya. Keduanya lalu menemui Nabi shallallahu ‘alaihi was sallam dan menceritakan yang mereka alami. Maka beliau shallallahu ‘alaihi was sallam mengatakan kepada orang yang tidak mengulang shalatnya, “Apa yang kamu lakukan telah sesuai dengan sunnah dan kamu telah mendapatkan pahala shalatmu”. Beliau mengatakan kepada yang mengulangi shalatnya,  “Untukmu dua pahala”.

Juga hadits Nabi shollallahu ‘alaihi was sallam dari sahabat Abu Huroiroh rodhiyallahu ‘anhu,

الصَّعِيدُ وُضُوءُ الْمُسْلِمِ ، وَإِنْ لَمْ يَجِدْ الْمَاءَ عَشْرَ سِنِينَ.فَإِذَا وَجَدَ الْمَاءَ فَلْيَتَّقِ اللَّهَ وَلْيُمِسَّهُ بَشَرَتَهُ

“Seluruh permukaan bumi (tayammum) merupakan wudhu bagi seluruh muslim jika ia tidak menemukan air selama sepuluh tahun (kiasan bukan pembatasan angka), apabila ia telah menemukannya hendaklah ia bertaqwa kepada Allah dan menggunakannya sebagai alat untuk besuci”.
'''),
    Entry('Di Antara Hikmah Disyari’atkannya Tayammum', children: <Entry>[
      Entry('Hikmah dan Tujuan', content: '''
Sebagai penutup kami sampaikan hikmah dan tujuan disyari’atkannya tayyamum adalah untuk menyucikan diri kita dan agar kita bersyukur dengan syari’at ini serta tidaklah sama sekali untuk  memberatkan kita, sebagaimana akhir firman Allah dalam surat Al Maidah ayat 6,

مَا يُرِيدُ اللَّهُ لِيَجْعَلَ عَلَيْكُمْ مِنْ حَرَجٍ وَلَكِنْ يُرِيدُ لِيُطَهِّرَكُمْ وَلِيُتِمَّ نِعْمَتَهُ عَلَيْكُمْ لَعَلَّكُمْ تَشْكُرُونَ

“Allah tidak hendak menyulitkan kamu, tetapi Dia hendak menyucikan kamu dan menyempurnakan nikmatNya bagimu, supaya kamu bersyukur.” (QS. Al Maidah: 6).                                  
'''),
      Entry(
          'Abul Faroj Ibnul Jauziy rohimahullah mengatakan ada empat penafsiran ahli tafsir tentang nikmat apa yang Allah maksudkan dalam ayat ini,',
          content: '''
Pertama, nikmat berupa diampuninya dosa-dosa.

Kedua, nikmat berupa hidayah kepada iman, sempurnanya agama, ini merupakan pendapat Ibnu Zaid rohimahullah.

Ketiga, nikmat berupa keringanan untuk tayammum, ini merupakan pendapat Maqotil dan Sulaiman.

Keempat, nikmat berupa penjelasan hukum syari’at, ini merupakan pendapat sebagian ahli tafsir.

Demikianlah akhir tulisan ini mudah-mudahan menjadi tambahan ‘amal bagi penulis dan tambahan ilmu bagi pembaca sekalian. Allahumma Amiin.
'''),
    ]),
    Entry('Sumber', content: '''
https://muslim.or.id/1918-panduan-tata-cara-tayammum.html
''')
  ];

  @override
  void initState() {
    data.addAll(text);
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
                            var entries = filterSearchResults(text, searchText);
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
            // SUBTITLE TAYAMUM
            Center(
                child: Text(
              "Tayamum",
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
