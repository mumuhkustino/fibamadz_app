part of 'pages.dart';

class MateriJenazahMemandikanPage extends StatefulWidget {
  @override
  _MateriJenazahMemandikanPageState createState() => _MateriJenazahMemandikanPageState();
}

class _MateriJenazahMemandikanPageState extends State<MateriJenazahMemandikanPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText = '';
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('', content: '''
Hal-hal yang berhubungan dengan proses memandikan jenazah

Air merupakan satu-satunya alat yang dapat digunakan untuk memandikan jenazah, dengan syarat airnya suci dan mensucikan.

Apabila jenazah tidak memungkinkan untuk dimandikan maka harus ditayamumi, seperti jenazah  yang terbakar yang apabila terkena air akan semakin mempercepat rusaknya anggota tubuh jenazah.

Hukum memandikan jenazah wajib dan niat memandikannya sunah, adapun mewudlui jenazah hukumnya sunah, tapi niat mewudluinya wajib.

Jika jenazah mengeluarkan najis (kotoran) setelah dimandikan, maka cukup dibersihkan najis (kotoran)nya saja dan tidak wajib mengulangi mandinya.

Paling sedikitnya memandikan jenazah adalah satu kali basuhan yang airnya merata keseluruh anggota badan jenazah, selebihnya basuhan pertama hukumnya sunah.

Mayat yang matinya sebab tenggelam di air yang suci mensucikan tetap wajib untuk dimandikan, karena kewajiban memandikan belum gugur sebelum dilaksanakan oleh mukallaf.

Bagi orang yang memandikan jenazah  tidak boleh melihat atau memegang aurat jenazah, kecuali jika dua telapak tangannya dibungkus.

Orang laki-laki tidak boleh memandikan jenazah perempuan, begitu juga sebaliknya, kecuali jika status keduanya adalah suami istri.

Orang laki-laki boleh memandikan jenazah  perempuan yang masih kecil, begitu juga sebaliknya. Sedangkan batasan kecil sama dengan yang ada dalam bab wudlu, yaitu anak laki-laki dan perempuan dibawah lima tahun, namun sebagian Ulama memberikan batasan bahwa dikatakan kecil bila secara akal normal anak tersebut belum bisa menimbulkan syahwat (rangsangan), baik anak laki-laki maupun perempuan.

Seorang wanita yang sedang haidl, nifas atau hadats besar diperbolehkan memandikan jenazah, karena motif dari memandikan jenazah  bukan ibadah, tapi semata-mata hanya untuk membersihkan.

Jenazahnya anak laki-laki yang belum dikhitan dan dibawah kuncup dzakarnya terdapat sesuatu (yang dihukumi najis), maka menurut Imam Ibnu hajar wajib ditayamumi, karena sebagai ganti dari najis (di bawah kuncup) yang tidak bisa dibersihkan, kemudian dimandikan. Sedangkan menurut Imam Romli anak tersebut tidak ditayamumi, karena syaratnya tayamum semua anggota badan harus suci, karena tidak mungkin untuk disucikan, sehingga anak tersebut dikubur tanpa dishalati, sebab syaratnya dishalati harus disucikan terlebih dahulu.

Rambut atau kuku jenazah yang panjang tidak boleh dipotong, bahkan jika ketika dimandikan ada yang rontok, wajib disertakan untuk dikafani dan dikuburkan.

Apabila jenazahnya laki-laki dan tidak ditemukan orang laki-laki untuk memandikan, maka tidak boleh dimandikan, melainkan harus ditayamumi, begitu juga ketika terjadi pada perempuan.

Basuhan yang terakhir sunah dicampur dengan kapur barus, dengan tujuan supaya harum dan supaya jasadnya tidak cepat rusak.

Orang yang telah memandikan jenazah disunahkan untuk mandi, bahkan sebagian Ulama menghukumi wajib.

Ketika jenazahnya laki-laki yang belum dikhitan, apakah wajib dikhitan? Ada beberapa komentar Ulama dalam menjawab masalah ini, diantaranya adalah:

1.      Wajib dikhitan secara mutlak, baik kecil atau sudah besar. 
2.      Wajib dikhitan apabila sudah besar, dan  tidak dikhitan kalau masih kecil.
3.      Tidak dikhitan secara mutlak, baik kecil atau sudah besar, karena khitan adalah memotong, sedangkan anggotangya jenazah tidak boleh dipotong, meskipun khitan hukumnya wajib, akan tetapi kewajiban tersebut gugur setelah ia meninggal dunia.
'''),
  ];
  final List<Entry> dataText = <Entry>[
    Entry('', content: '''
Hal-hal yang berhubungan dengan proses memandikan jenazah

Air merupakan satu-satunya alat yang dapat digunakan untuk memandikan jenazah, dengan syarat airnya suci dan mensucikan.

Apabila jenazah tidak memungkinkan untuk dimandikan maka harus ditayamumi, seperti jenazah  yang terbakar yang apabila terkena air akan semakin mempercepat rusaknya anggota tubuh jenazah.

Hukum memandikan jenazah wajib dan niat memandikannya sunah, adapun mewudlui jenazah hukumnya sunah, tapi niat mewudluinya wajib.

Jika jenazah mengeluarkan najis (kotoran) setelah dimandikan, maka cukup dibersihkan najis (kotoran)nya saja dan tidak wajib mengulangi mandinya.

Paling sedikitnya memandikan jenazah adalah satu kali basuhan yang airnya merata keseluruh anggota badan jenazah, selebihnya basuhan pertama hukumnya sunah.

Mayat yang matinya sebab tenggelam di air yang suci mensucikan tetap wajib untuk dimandikan, karena kewajiban memandikan belum gugur sebelum dilaksanakan oleh mukallaf.

Bagi orang yang memandikan jenazah  tidak boleh melihat atau memegang aurat jenazah, kecuali jika dua telapak tangannya dibungkus.

Orang laki-laki tidak boleh memandikan jenazah perempuan, begitu juga sebaliknya, kecuali jika status keduanya adalah suami istri.

Orang laki-laki boleh memandikan jenazah  perempuan yang masih kecil, begitu juga sebaliknya. Sedangkan batasan kecil sama dengan yang ada dalam bab wudlu, yaitu anak laki-laki dan perempuan dibawah lima tahun, namun sebagian Ulama memberikan batasan bahwa dikatakan kecil bila secara akal normal anak tersebut belum bisa menimbulkan syahwat (rangsangan), baik anak laki-laki maupun perempuan.

Seorang wanita yang sedang haidl, nifas atau hadats besar diperbolehkan memandikan jenazah, karena motif dari memandikan jenazah  bukan ibadah, tapi semata-mata hanya untuk membersihkan.

Jenazahnya anak laki-laki yang belum dikhitan dan dibawah kuncup dzakarnya terdapat sesuatu (yang dihukumi najis), maka menurut Imam Ibnu hajar wajib ditayamumi, karena sebagai ganti dari najis (di bawah kuncup) yang tidak bisa dibersihkan, kemudian dimandikan. Sedangkan menurut Imam Romli anak tersebut tidak ditayamumi, karena syaratnya tayamum semua anggota badan harus suci, karena tidak mungkin untuk disucikan, sehingga anak tersebut dikubur tanpa dishalati, sebab syaratnya dishalati harus disucikan terlebih dahulu.

Rambut atau kuku jenazah yang panjang tidak boleh dipotong, bahkan jika ketika dimandikan ada yang rontok, wajib disertakan untuk dikafani dan dikuburkan.

Apabila jenazahnya laki-laki dan tidak ditemukan orang laki-laki untuk memandikan, maka tidak boleh dimandikan, melainkan harus ditayamumi, begitu juga ketika terjadi pada perempuan.

Basuhan yang terakhir sunah dicampur dengan kapur barus, dengan tujuan supaya harum dan supaya jasadnya tidak cepat rusak.

Orang yang telah memandikan jenazah disunahkan untuk mandi, bahkan sebagian Ulama menghukumi wajib.

Ketika jenazahnya laki-laki yang belum dikhitan, apakah wajib dikhitan? Ada beberapa komentar Ulama dalam menjawab masalah ini, diantaranya adalah:

1.      Wajib dikhitan secara mutlak, baik kecil atau sudah besar. 
2.      Wajib dikhitan apabila sudah besar, dan  tidak dikhitan kalau masih kecil.
3.      Tidak dikhitan secara mutlak, baik kecil atau sudah besar, karena khitan adalah memotong, sedangkan anggotangya jenazah tidak boleh dipotong, meskipun khitan hukumnya wajib, akan tetapi kewajiban tersebut gugur setelah ia meninggal dunia.'''),
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
                  // SUBTITLE MEMANDIKAN
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Memandikan",
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
