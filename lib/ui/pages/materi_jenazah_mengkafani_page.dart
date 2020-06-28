part of 'pages.dart';

class MateriJenazahMengkafaniPage extends StatefulWidget {
  @override
  _MateriJenazahMengkafaniPageState createState() => _MateriJenazahMengkafaniPageState();
}

class _MateriJenazahMengkafaniPageState extends State<MateriJenazahMengkafaniPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Mengkafani', content: '''
Salah satu dari empat kewajiban orang yang masih hidup terhadap seorang yang telah meninggal adalah mengafani. Ini dilakukan setelah mayit atau jenazah dimandikan dan sebelum dishalati. 

Meski terlihat sederhana namun mengafani mayit bukanlah hal yang setiap orang bisa melakukannya. Pada umumnya pekerjaan ini diserahkan oleh ahli waris mayit kepada seorang yang profesinya lazim disebut dengan Lebe di satu daerah atau Modin di daerah yang lain. 

Lalu bagaimana semestinya mengafani mayit dilakukan? Dr. Musthafa Al-Khin dalam kitabnya al-Fiqhul Manhaji ‘ala Madzahib al-Imam asy-Syafi’i menjelaskan tentang hal ini sebagai berikut: (Baca juga: Tata Cara Memandikan Jenazah) 

Mengafani mayit paling sedikit adalah membungkusnya dengan kain yang dapat menutupi seluruh anggota badan dan menutup kepala bila si mayit bukan orang yang sedang ihram. 

Sedangkan cara mengafani mayit secara sempurna adalah sebagai berikut: 

Bila mayitnya seorang laki-laki ia dikafani dengan menggunakan tiga lembar kain putih dimana masing-masing kain tersebut berukuran cukup lebar dengan panjang sesuai panjang tubuh si mayit dan dengan lebar yang sekiranya bisa membungkus seluruh tubuh si mayit. Dimakruhkan mengafani mayit dengan menggunakan kain selain warna putih sebagaimana juga dimakruhkan menggunakan semacam gamis dan menutup kepalanya dengan semacam surban. 

Berdasarkan hadits riwayat Imam Muslim dari Sayidatina Aisyah, beliau berkata:
 كُفِّنَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فِي ثَلَاثَةِ أَثْوَابٍ بِيضٍ سَحُولِيَّةٍ، مِنْ كُرْسُفٍ، لَيْسَ فِيهَا قَمِيصٌ، وَلَا عِمَامَةٌ Artinya: “Rasulullah shallallâhu ‘alaihi wa sallam dikafani dengan menggunakan tiga kain putih sahuliyah dari Kursuf, tidak ada dalam tiga kain itu gamis dan surban.” 

Sahuliyah adalah kain putih yang bersih yang hanya dibuat dari bahan katun. 

Juga sebuah hadits riwayat Imam Turmudzi dari sahabat Ibnu Abas, bahwa Rasulullah bersabda: البَسُوا مِنْ ثِيَابِكُمُ البَيَاضَ، فَإِنَّهَا مِنْ خَيْرِ ثِيَابِكُمْ، وَكَفِّنُوا فِيهَا مَوْتَاكُمْ 

Artinya: “Pakailah pakaianmu yang berwarna putih, karena itu sebaik-baik pakaian kalian, dan kafani mayit kalian dengannya.” 

Adapun bila yang meninggal orang perempuan maka disunahkan mengafaninya dengan menggunakan lima kain putih. Kelima kain itu berupa satu helai sarung yang menutupi bagian pusar hingga anggota paling bawah, khimar atau tudung yang menutupi bagian kepala, gamis yang menutupi bagian atas hingga di bawahnya sarung, dan lembar kain yang bisa membungkus seluruh jasad mayit. (Baca juga: Empat Perlakuan kepada Orang yang Baru Saja Meninggal) 

Hal ini didasarkan pada sebuah hadits riwayat Abu Dawud dimana Rasul memerintahkan agar anak perempuannya, Umi Kulsum, dikafani secara demikian. 

Cara mengafani mayit sebagaimana di atas itu diperuntukkan bagi mayit yang tidak sedang berihram. Bila si mayit adalah orang yang sedang berihram maka bagian kepala wajib dibuka bila mayitnya laki-laki dan bagian wajah wajib dibuka bila perempuan. 

Juga diwajibkan kain kafan yang digunakan adalah dari jenis kain yang ketika masih hidup diperbolehkan untuk menggunakannya. Karenanya jenazah laki-laki tidak diperbolehkan dikafani dengan menggunakan kain sutera sebab ketika masih hidup ia juga dilarang memakainya. Seyogyanya pula pada bagian-bagian yang berlubang dan pada anggota sujud diberi kapas yang diberi kapur barus dan diikatkan tali dari potongan kain yang nantinya akan dilepas di kuburan. Wallahu a’lam. (Yazid Muttaqin)
'''),
    Entry('Sumber', content: '''
https://islam.nu.or.id/post/read/85423/tata-cara-mengafani-jenazah-dalam-islam
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Mengkafani', content: '''
Salah satu dari empat kewajiban orang yang masih hidup terhadap seorang yang telah meninggal adalah mengafani. Ini dilakukan setelah mayit atau jenazah dimandikan dan sebelum dishalati. 

Meski terlihat sederhana namun mengafani mayit bukanlah hal yang setiap orang bisa melakukannya. Pada umumnya pekerjaan ini diserahkan oleh ahli waris mayit kepada seorang yang profesinya lazim disebut dengan Lebe di satu daerah atau Modin di daerah yang lain. 

Lalu bagaimana semestinya mengafani mayit dilakukan? Dr. Musthafa Al-Khin dalam kitabnya al-Fiqhul Manhaji ‘ala Madzahib al-Imam asy-Syafi’i menjelaskan tentang hal ini sebagai berikut: (Baca juga: Tata Cara Memandikan Jenazah) 

Mengafani mayit paling sedikit adalah membungkusnya dengan kain yang dapat menutupi seluruh anggota badan dan menutup kepala bila si mayit bukan orang yang sedang ihram. 

Sedangkan cara mengafani mayit secara sempurna adalah sebagai berikut: 

Bila mayitnya seorang laki-laki ia dikafani dengan menggunakan tiga lembar kain putih dimana masing-masing kain tersebut berukuran cukup lebar dengan panjang sesuai panjang tubuh si mayit dan dengan lebar yang sekiranya bisa membungkus seluruh tubuh si mayit. Dimakruhkan mengafani mayit dengan menggunakan kain selain warna putih sebagaimana juga dimakruhkan menggunakan semacam gamis dan menutup kepalanya dengan semacam surban. 

Berdasarkan hadits riwayat Imam Muslim dari Sayidatina Aisyah, beliau berkata:
 كُفِّنَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فِي ثَلَاثَةِ أَثْوَابٍ بِيضٍ سَحُولِيَّةٍ، مِنْ كُرْسُفٍ، لَيْسَ فِيهَا قَمِيصٌ، وَلَا عِمَامَةٌ Artinya: “Rasulullah shallallâhu ‘alaihi wa sallam dikafani dengan menggunakan tiga kain putih sahuliyah dari Kursuf, tidak ada dalam tiga kain itu gamis dan surban.” 

Sahuliyah adalah kain putih yang bersih yang hanya dibuat dari bahan katun. 

Juga sebuah hadits riwayat Imam Turmudzi dari sahabat Ibnu Abas, bahwa Rasulullah bersabda: البَسُوا مِنْ ثِيَابِكُمُ البَيَاضَ، فَإِنَّهَا مِنْ خَيْرِ ثِيَابِكُمْ، وَكَفِّنُوا فِيهَا مَوْتَاكُمْ 

Artinya: “Pakailah pakaianmu yang berwarna putih, karena itu sebaik-baik pakaian kalian, dan kafani mayit kalian dengannya.” 

Adapun bila yang meninggal orang perempuan maka disunahkan mengafaninya dengan menggunakan lima kain putih. Kelima kain itu berupa satu helai sarung yang menutupi bagian pusar hingga anggota paling bawah, khimar atau tudung yang menutupi bagian kepala, gamis yang menutupi bagian atas hingga di bawahnya sarung, dan lembar kain yang bisa membungkus seluruh jasad mayit. (Baca juga: Empat Perlakuan kepada Orang yang Baru Saja Meninggal) 

Hal ini didasarkan pada sebuah hadits riwayat Abu Dawud dimana Rasul memerintahkan agar anak perempuannya, Umi Kulsum, dikafani secara demikian. 

Cara mengafani mayit sebagaimana di atas itu diperuntukkan bagi mayit yang tidak sedang berihram. Bila si mayit adalah orang yang sedang berihram maka bagian kepala wajib dibuka bila mayitnya laki-laki dan bagian wajah wajib dibuka bila perempuan. 

Juga diwajibkan kain kafan yang digunakan adalah dari jenis kain yang ketika masih hidup diperbolehkan untuk menggunakannya. Karenanya jenazah laki-laki tidak diperbolehkan dikafani dengan menggunakan kain sutera sebab ketika masih hidup ia juga dilarang memakainya. Seyogyanya pula pada bagian-bagian yang berlubang dan pada anggota sujud diberi kapas yang diberi kapur barus dan diikatkan tali dari potongan kain yang nantinya akan dilepas di kuburan. Wallahu a’lam. (Yazid Muttaqin)
'''),
    Entry('Sumber', content: '''
https://islam.nu.or.id/post/read/85423/tata-cara-mengafani-jenazah-dalam-islam
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
            // SUBTITLE MENGKAFANI
            Center(
                child: Text(
                  "Mengkafani",
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
