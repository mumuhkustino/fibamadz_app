part of 'pages.dart';

class MateriThaharahMandiBesarPage extends StatefulWidget {
  @override
  _MateriThaharahMandiBesarPageState createState() =>
      _MateriThaharahMandiBesarPageState();
}

class _MateriThaharahMandiBesarPageState
    extends State<MateriThaharahMandiBesarPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText = '';
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('', content: '''
Macam-macam Mandi Wajib yaitu:
1.       Junub
2.       Haid
3.       Nifas
4.       Orang Islam yang meninggal dunia.

Keempat hal ini telah disepakati semua ulama mazhab.'''),
    Entry('Hambali : ', content: '''
Menambah satu hal lagi, yaitu: Ketika orang kafir memeluk agama Islam.
      '''),
    Entry('Syafi’i dan Imamiyah : ', content: '''
Kalau orang kafir itu masuk Islam dalam keadaan junub, maka ia wajib mandi karena. junubnya, bukan Islamnya. Dari itu, kalau pada waktu masuk Islam ia tidak dalam keadaan junub, ia tidak diwajibkan mandi.
      '''),
    Entry('Hanafi : ', content: '''
la tidak diwajibkan mandi, baik junub maupun tidak (Ibnu Qudamah, Al-Mughni, Jilid I, hal. 207).
      '''),
    Entry('Imamiyah : ', content: '''
Menambah dua mandi lagi dari empat macam di atas, yaitu: Mandi istihadhah, dan mandi ketika menyentuh mayat.

Mereka (Imamiyah) mewajibkan mandi bagi yang menyentuh mayat yang telah dingin, dan mayat tersebut belum dimandikan. Keterangan lebih rinci akan dijelaskan nanti.
      '''),
    Entry('', content: '''Dari keterangan di atas jelaslah bahwa jumlah mandi wajib itu sebanyak empat, Dari keterangan di atas jelaslah bahwa jumlah mandi wajib itu sebanyak empat,'''),
    Entry('Mandi Junub', children: [
      Entry('', content: '''Junub mewajibkan mandi itu ada dua, yaitu:'''),
      Entry('Keluar mani, baik dalam keadaan tidur maupun bangun', children: [
        Entry('Imamiyah dan Syafi’i : ', content: '''
Kalau mani itu keluar maka ia wajib mandi, tak ada bedanya, baik keluar karena syahwat maupun tidak.
      '''),
        Entry('Hanafi, Maliki dan Hambali : ', content: '''
Tidak diwajibkan mandi kecuali kalau pada waktu keluarnya itu merasakan nikmat. Kalau mani itu keluar karena dipukul, dingin, atau karena sakit bukan karena syahwat, maka ia tidak diwajibkan mandi. Tapi kalau mani sudah terpisah dari suibi lelaki atau dari tulang dada wanita dan mani belum sampai pindah keluar (pada yang lain), maka ia tidak diwajibkan mandi, kecuali menurut Hambali.
      '''),
      ]),
      Entry('(Masalah)', children: [
        Entry('', content: '''Kalau orang yang tidur telah sadar (bangun), lalu ia melihat basah, tetapi ia tidak mengetahui apakah yang basah itu mani atau madzi.'''),
        Entry('Hanafi : ', content: '''
Wajib mandi.
      '''),
        Entry('Syafi’i dan Imamiyah : ', content: '''
Tidak wajib, karena suci meyakinkan, sedangkan hadas diragukan. 
      '''),
        Entry('Hambali : ', content: '''
Kalau sebelum tidur ia telah memikirkan hal-hal yang nikmat (berpikir tentang yang porno-pent), maka ia tidak diwajibkan mandi, tapi kalau sebelum tidur tidak ada sebab (gejala) yang menimbulkan kenikmatan, maka ia diwajibkan mandi, karena basah yang tidak jelas itu.
      '''),
      ]),
      Entry('Bertemunya dua kemaluan (bersetubuh)', children: [
        Entry('', content: '''
Bertemunya dua kemaluan (bersetubuh), yaitu memasukkan ke¬pala zakar atau sebagian dari hasyafah (kepala zakar) ke dalam faraj (kemaluan) atau anus, maka semua ulama mazhab sepakat dengan mewajibkan mandi, sekalipun belum keluar mani.

Hanya mereka berbeda pendapat tentang beberapa syarat; apakah kalau tidak dimasukkan, yakni sekedar saling sentuhan antara dua kemaluan itu, diwajibkan mandi atau tidak?'''),
        Entry('Hanafi : ', content: '''
Wajibnya mandi itu dengan beberapa syarat; yaitu:  

Pertama, baliqh. Kalau yang baligh itu hanya yang disetubuhi, sedangkan yang menyetubuhi tidak, atau sebaliknya, maka yang mandi itu hanya yang baligh saja, dan kalau keduanya sama-sama kecil, maka keduanya tidak wajibkan mandi.
Kedua, harus tidak ada batas (aling-aling) yang dapat mencegah timbulnya kehangatan.
Ketiga, orang yang disetubuhi adalah orang yang masih hidup. Maka kalau memasukkan zakarnya kepada binatang atau kepada orang yang telah meninggal, maka ia tidak diwajibkan mandi.
      '''),
        Entry('Imamiyah dan Syafi’i : ', content: '''
Sekalipun kepala zakar itu tidak masuk atau sebagiannya saja juga belum masuk, maka ia sudah cukup diwajibkannya mandi, tak ada bedanya baik baligh maupun tidak, yang menyetubuhi maupun yang disetubuhi ada balas (aling-aling) maupun tidak, baik terpaksa maupun karena suka, baik yang disetubuhi itu masih hidup maupun sudah meninggal, baik pada binatang maupun pada manusia.
      '''),
        Entry('Hambali dan Maliki : ', content: '''
Bagi yang menyetubuhi maupun yang disetubuhi itu wajib mandi, kalau tidak ada batas (aling-aling) yang dapat mencegah kenikmatan, tak ada bedanya baik pada binatang maupun pada manusia, baik yang disetubuhi itu masih hidup maupun yang sudah meniggal.
      '''),
        Entry('Maliki : ', content: '''
Bagi yang menyetubuhi itu wajib mandi kalau ia telah mukallaf dan juga orang yang disetubu¬hi. Bagi orang yang disetubuhi wajib mandi, kalau yang menyetu¬buhi. Bagi orang yang disetubuhi wajib mandi, kalau yang menyetubuhinya sudah baligh, tapi kalau belum baligh atau masih kecil, maka ia tidak diwajibkan mandi kalau belum sampai keluar mani.
      '''),
        Entry('Hambali : ', content: '''
Mensyaratkan bahwa lelaki yang menyetu¬buhi itu umurnya tidak kurang dari sepuluh tahun, bagi wanita yang disetubuhi itu tidak kurang dari sembilan tahun.
      '''),
      ]),
    ]),
    Entry('Sesuatu Yang Mewajibkan Mandi Junub', children: [
      Entry('', content: '''
Semua perbuatan yang mewajibkan wudhu pada dasarnya mewajibkan mandi junub, seperti shalat, thawaf, dan menyentuh Al-Qur’an, lebih dari itu yaitu berdiam di masjid.'''),
      Entry('Semua ulama mazhab sepakat', content: '''
Semua ulama mazhab sepakat bahwa bagi orang junub tidak boleh berdiam di masjid, hanya berbeda pendapat tentang boleh tidaknya kalau ia lewat di dalamnya, sebagaimana kalau ia masuk dari satu pintu ke pintu lainnya.
      '''),
      Entry('Maliki dan Hanafi : ', content: '''
Tidak boleh kecuali karena sangat darurat (penting).
      '''),
      Entry('Syafi’i dan Hanafi : ', content: '''
Boleh kalau hanya lewat saja, asal jangan berdiam.
      '''),
      Entry('Imamiyah : ', content: '''
: Tidak boleh berdiam dan melewati kalau di Masjidil Haram dan Masjid Rasulullah Shallallahu ‘Alaihi wa ‘Alihi wa Sallam (Masjid Nabawi di Madinah), tetapi kalau selain dua masjid tersebut boleh melewatinya, tapi kalau berdiam, tetap tidak boleh di masjid mana saja, berdasarkan keterangan ayat 43 surat An-Nisa’: “(jangan pula) hampiri masjid sedang kamu dalam keadaan junub, terkecuali sekedar berlalu saja”. Maksud ayat tersebut di atas, dilarang mendekati masjid-masjid yang dijadikan tempat shalat, kecuali kalau ia hanya melewatinya saja. Ayat tersebut mengecualikan dua masjid, yaitu Masjidil Haram dan Masjid Nabawi, karena ada dalil khusus yang menunjukkannya berbeda (pengecualian).
      '''),
    ]),
    Entry('Sedangkan membaca Al-Qur’an', children: [
      Entry('Maliki : ', content: '''
Bagi orang yang junub diharamkan membaca sesuatu yang dari Al-Qur’an, kecuali sebentar dengan maksud untuk memelihara (menjaga) dan menjadikannya sebagai dalil (bukti). Pendapat ini hampir sama dengan pendapat Hambali.
      '''),
      Entry('Hanafi : ', content: '''
Bagi orang yang junub tidak boleh membacanya, kecuali kalau ia jadi guru mengaji Al-Qur’an yang menyampaikannya (men-talqin; mengajarnya) kata perkata.
      '''),
      Entry('Syafi’i : ', content: '''
Bahkan satu huruf pun bagi orang yang junub tetap di¬haramkan, kecuali hanya untuk dzikir (mengingat), seperti menyebutnya pada waktu makan.
      '''),
      Entry('Imamiyah : ', content: '''
Bagi orang yang junub itu tidak diharamkan kecuali membaca Surat Al-Azaim yang empat walau hanya sebagiannya, yaitu: Iqra, Al Najm, Hamim Al Sajadah, dan Alif lam Mim Tanzil. Kalau selain empat di atas boleh membacanya, hanya tetap dimakruhkan kalau sampai lebih dari tujuh ayat, dan bila sampai lebih dari tujuh puluh ayat, maka sudah termasuk makruh mu’akkad. Imamiyah menambahkan bahwa pada waktu berpuasa pada bulan Ramadhan dan pada waktu menggantinya (mengqadha ‘nya), tidak sah puasa orang yang berpuasa itu kalau masuk waktu pagi dalam keadaan junub, baik sengaja maupun tidak. Sedangkan kalau ia tidur siang atau malarn, lalu masuk waktu pagi dalam keadaan “mimpi” (junub), maka tidak menjadikan puasanya batal. Dalam masalah ini,  Imamiyah berbeda dengan mazhab-mazhab yang lain.
      '''),
    ]),
    Entry('Hal-hal Yang Wajib Dalam Mandi Junub', content: '''
Dalam mandi junub diwajibkan apa yang diwajibkan dalam wudhu, baik dari segi ke muthlak-an air sucinya serta badan harus suci terlebih dahulu, juga tidak ada sesuatu yang dapat mencegah sampainya ke kulit, sebagaimana yang telah dijelaskan dalam bab wudhu. Diwajibkan juga berniat, Kecuali Hanafi yang menolak niat ini. 

Alasannya: Hanafi tidak menganggap niat itu sebagai syarat sahnya mandi. Empat mazhab tidak mewajibkan dalam mandi junub itu dengan cara-cara khusus, hanya mereka mewajibkan untuk meratakan air ke seluruh badan. Mereka tidak menjelaskan apakah harus dari atas atau sebaliknya. 

Hanafi: Menambahkan ia harus berkumur-kumur dan menghirup air ke dalam hidup lalu dihembuskan. Mereka (Hanafi): Sunnah bila pertama memulai dengan menyiram air dari kepala, tubuh sebelah kanan, kemudian tubuh sebelah kiri.

Syafi’i dan Maliki: Disunnah kan untuk memulai dari bagian atas badan sebelum pada bagian bawah, selain faraj (kemaluan). la (faraj) disunnahkan lebih dahulu dari semua anggota badan yang lain.

Hambali: Disunnahkan mendahulukan yang kanan dari yang kiri. 

Imamiyah: Membagi mandi junub ke dalam dua bagian, yaitu: Tertib dan Irtimas Tertib ialah orang yang mandi harus menyiramkan air pada tubuhnya dengan satu siraman. Maka dalam hal ini, ia wajib memulai dari atas, kemudian pada bagian tubuh yang kanan, lalu pada yang kiri. Bila hal itu tidak terlaksana, atau mendahulukan yang terakhir atau mengakhirkan yang seharusnya didahulukan, maka mandinya batal. Irtimas ialah menceburkan semua tubuhnya ke dalam air satu kali (menyelam). Maka kalau ada sebagian tubuh yang tidak tenggelam, itu tidak cukup (tidak sah) Imamiyah mengatakan bahwa semua jenis mandi tidak memadai sebagai pengganti dari wudhu, kecuali mandi junub. Karena mandi junub sudah termasuk wudhu di dalamnya. 

Empat mazhab: Tidak membedakan antara mandi junub dengan mandi-mandi lainnya, karena tidak cukupnya syarat-syarat yang ada dalam wudhu.
      '''),
  ];

  // DATA YANG DAPAT BERUBAH
  final List<Entry> dataText = <Entry>[
    Entry('', content: '''
Macam-macam Mandi Wajib yaitu:
1.       Junub
2.       Haid
3.       Nifas
4.       Orang Islam yang meninggal dunia.

Keempat hal ini telah disepakati semua ulama mazhab.'''),
    Entry('Hambali : ', content: '''
Menambah satu hal lagi, yaitu: Ketika orang kafir memeluk agama Islam.
      '''),
    Entry('Syafi’i dan Imamiyah : ', content: '''
Kalau orang kafir itu masuk Islam dalam keadaan junub, maka ia wajib mandi karena. junubnya, bukan Islamnya. Dari itu, kalau pada waktu masuk Islam ia tidak dalam keadaan junub, ia tidak diwajibkan mandi.
      '''),
    Entry('Hanafi : ', content: '''
la tidak diwajibkan mandi, baik junub maupun tidak (Ibnu Qudamah, Al-Mughni, Jilid I, hal. 207).
      '''),
    Entry('Imamiyah : ', content: '''
Menambah dua mandi lagi dari empat macam di atas, yaitu: Mandi istihadhah, dan mandi ketika menyentuh mayat.

Mereka (Imamiyah) mewajibkan mandi bagi yang menyentuh mayat yang telah dingin, dan mayat tersebut belum dimandikan. Keterangan lebih rinci akan dijelaskan nanti.
      '''),
    Entry('', content: '''Dari keterangan di atas jelaslah bahwa jumlah mandi wajib itu sebanyak empat, Dari keterangan di atas jelaslah bahwa jumlah mandi wajib itu sebanyak empat,'''),
    Entry('Mandi Junub', children: [
      Entry('', content: '''Junub mewajibkan mandi itu ada dua, yaitu:'''),
      Entry('Keluar mani, baik dalam keadaan tidur maupun bangun', children: [
        Entry('Imamiyah dan Syafi’i : ', content: '''
Kalau mani itu keluar maka ia wajib mandi, tak ada bedanya, baik keluar karena syahwat maupun tidak.
      '''),
        Entry('Hanafi, Maliki dan Hambali : ', content: '''
Tidak diwajibkan mandi kecuali kalau pada waktu keluarnya itu merasakan nikmat. Kalau mani itu keluar karena dipukul, dingin, atau karena sakit bukan karena syahwat, maka ia tidak diwajibkan mandi. Tapi kalau mani sudah terpisah dari suibi lelaki atau dari tulang dada wanita dan mani belum sampai pindah keluar (pada yang lain), maka ia tidak diwajibkan mandi, kecuali menurut Hambali.
      '''),
      ]),
      Entry('(Masalah)', children: [
        Entry('', content: '''Kalau orang yang tidur telah sadar (bangun), lalu ia melihat basah, tetapi ia tidak mengetahui apakah yang basah itu mani atau madzi.'''),
        Entry('Hanafi : ', content: '''
Wajib mandi.
      '''),
        Entry('Syafi’i dan Imamiyah : ', content: '''
Tidak wajib, karena suci meyakinkan, sedangkan hadas diragukan. 
      '''),
        Entry('Hambali : ', content: '''
Kalau sebelum tidur ia telah memikirkan hal-hal yang nikmat (berpikir tentang yang porno-pent), maka ia tidak diwajibkan mandi, tapi kalau sebelum tidur tidak ada sebab (gejala) yang menimbulkan kenikmatan, maka ia diwajibkan mandi, karena basah yang tidak jelas itu.
      '''),
      ]),
      Entry('Bertemunya dua kemaluan (bersetubuh)', children: [
        Entry('', content: '''
Bertemunya dua kemaluan (bersetubuh), yaitu memasukkan ke¬pala zakar atau sebagian dari hasyafah (kepala zakar) ke dalam faraj (kemaluan) atau anus, maka semua ulama mazhab sepakat dengan mewajibkan mandi, sekalipun belum keluar mani.

Hanya mereka berbeda pendapat tentang beberapa syarat; apakah kalau tidak dimasukkan, yakni sekedar saling sentuhan antara dua kemaluan itu, diwajibkan mandi atau tidak?'''),
        Entry('Hanafi : ', content: '''
Wajibnya mandi itu dengan beberapa syarat; yaitu:  

Pertama, baliqh. Kalau yang baligh itu hanya yang disetubuhi, sedangkan yang menyetubuhi tidak, atau sebaliknya, maka yang mandi itu hanya yang baligh saja, dan kalau keduanya sama-sama kecil, maka keduanya tidak wajibkan mandi.
Kedua, harus tidak ada batas (aling-aling) yang dapat mencegah timbulnya kehangatan.
Ketiga, orang yang disetubuhi adalah orang yang masih hidup. Maka kalau memasukkan zakarnya kepada binatang atau kepada orang yang telah meninggal, maka ia tidak diwajibkan mandi.
      '''),
        Entry('Imamiyah dan Syafi’i : ', content: '''
Sekalipun kepala zakar itu tidak masuk atau sebagiannya saja juga belum masuk, maka ia sudah cukup diwajibkannya mandi, tak ada bedanya baik baligh maupun tidak, yang menyetubuhi maupun yang disetubuhi ada balas (aling-aling) maupun tidak, baik terpaksa maupun karena suka, baik yang disetubuhi itu masih hidup maupun sudah meninggal, baik pada binatang maupun pada manusia.
      '''),
        Entry('Hambali dan Maliki : ', content: '''
Bagi yang menyetubuhi maupun yang disetubuhi itu wajib mandi, kalau tidak ada batas (aling-aling) yang dapat mencegah kenikmatan, tak ada bedanya baik pada binatang maupun pada manusia, baik yang disetubuhi itu masih hidup maupun yang sudah meniggal.
      '''),
        Entry('Maliki : ', content: '''
Bagi yang menyetubuhi itu wajib mandi kalau ia telah mukallaf dan juga orang yang disetubu¬hi. Bagi orang yang disetubuhi wajib mandi, kalau yang menyetu¬buhi. Bagi orang yang disetubuhi wajib mandi, kalau yang menyetubuhinya sudah baligh, tapi kalau belum baligh atau masih kecil, maka ia tidak diwajibkan mandi kalau belum sampai keluar mani.
      '''),
        Entry('Hambali : ', content: '''
Mensyaratkan bahwa lelaki yang menyetu¬buhi itu umurnya tidak kurang dari sepuluh tahun, bagi wanita yang disetubuhi itu tidak kurang dari sembilan tahun.
      '''),
      ]),
    ]),
    Entry('Sesuatu Yang Mewajibkan Mandi Junub', children: [
      Entry('', content: '''
Semua perbuatan yang mewajibkan wudhu pada dasarnya mewajibkan mandi junub, seperti shalat, thawaf, dan menyentuh Al-Qur’an, lebih dari itu yaitu berdiam di masjid.'''),
      Entry('Semua ulama mazhab sepakat', content: '''
Semua ulama mazhab sepakat bahwa bagi orang junub tidak boleh berdiam di masjid, hanya berbeda pendapat tentang boleh tidaknya kalau ia lewat di dalamnya, sebagaimana kalau ia masuk dari satu pintu ke pintu lainnya.
      '''),
      Entry('Maliki dan Hanafi : ', content: '''
Tidak boleh kecuali karena sangat darurat (penting).
      '''),
      Entry('Syafi’i dan Hanafi : ', content: '''
Boleh kalau hanya lewat saja, asal jangan berdiam.
      '''),
      Entry('Imamiyah : ', content: '''
: Tidak boleh berdiam dan melewati kalau di Masjidil Haram dan Masjid Rasulullah Shallallahu ‘Alaihi wa ‘Alihi wa Sallam (Masjid Nabawi di Madinah), tetapi kalau selain dua masjid tersebut boleh melewatinya, tapi kalau berdiam, tetap tidak boleh di masjid mana saja, berdasarkan keterangan ayat 43 surat An-Nisa’: “(jangan pula) hampiri masjid sedang kamu dalam keadaan junub, terkecuali sekedar berlalu saja”. Maksud ayat tersebut di atas, dilarang mendekati masjid-masjid yang dijadikan tempat shalat, kecuali kalau ia hanya melewatinya saja. Ayat tersebut mengecualikan dua masjid, yaitu Masjidil Haram dan Masjid Nabawi, karena ada dalil khusus yang menunjukkannya berbeda (pengecualian).
      '''),
    ]),
    Entry('Sedangkan membaca Al-Qur’an', children: [
      Entry('Maliki : ', content: '''
Bagi orang yang junub diharamkan membaca sesuatu yang dari Al-Qur’an, kecuali sebentar dengan maksud untuk memelihara (menjaga) dan menjadikannya sebagai dalil (bukti). Pendapat ini hampir sama dengan pendapat Hambali.
      '''),
      Entry('Hanafi : ', content: '''
Bagi orang yang junub tidak boleh membacanya, kecuali kalau ia jadi guru mengaji Al-Qur’an yang menyampaikannya (men-talqin; mengajarnya) kata perkata.
      '''),
      Entry('Syafi’i : ', content: '''
Bahkan satu huruf pun bagi orang yang junub tetap di¬haramkan, kecuali hanya untuk dzikir (mengingat), seperti menyebutnya pada waktu makan.
      '''),
      Entry('Imamiyah : ', content: '''
Bagi orang yang junub itu tidak diharamkan kecuali membaca Surat Al-Azaim yang empat walau hanya sebagiannya, yaitu: Iqra, Al Najm, Hamim Al Sajadah, dan Alif lam Mim Tanzil. Kalau selain empat di atas boleh membacanya, hanya tetap dimakruhkan kalau sampai lebih dari tujuh ayat, dan bila sampai lebih dari tujuh puluh ayat, maka sudah termasuk makruh mu’akkad. Imamiyah menambahkan bahwa pada waktu berpuasa pada bulan Ramadhan dan pada waktu menggantinya (mengqadha ‘nya), tidak sah puasa orang yang berpuasa itu kalau masuk waktu pagi dalam keadaan junub, baik sengaja maupun tidak. Sedangkan kalau ia tidur siang atau malarn, lalu masuk waktu pagi dalam keadaan “mimpi” (junub), maka tidak menjadikan puasanya batal. Dalam masalah ini,  Imamiyah berbeda dengan mazhab-mazhab yang lain.
      '''),
    ]),
    Entry('Hal-hal Yang Wajib Dalam Mandi Junub', content: '''
Dalam mandi junub diwajibkan apa yang diwajibkan dalam wudhu, baik dari segi ke muthlak-an air sucinya serta badan harus suci terlebih dahulu, juga tidak ada sesuatu yang dapat mencegah sampainya ke kulit, sebagaimana yang telah dijelaskan dalam bab wudhu. Diwajibkan juga berniat, Kecuali Hanafi yang menolak niat ini. 

Alasannya: Hanafi tidak menganggap niat itu sebagai syarat sahnya mandi. Empat mazhab tidak mewajibkan dalam mandi junub itu dengan cara-cara khusus, hanya mereka mewajibkan untuk meratakan air ke seluruh badan. Mereka tidak menjelaskan apakah harus dari atas atau sebaliknya. 

Hanafi: Menambahkan ia harus berkumur-kumur dan menghirup air ke dalam hidup lalu dihembuskan. Mereka (Hanafi): Sunnah bila pertama memulai dengan menyiram air dari kepala, tubuh sebelah kanan, kemudian tubuh sebelah kiri.

Syafi’i dan Maliki: Disunnah kan untuk memulai dari bagian atas badan sebelum pada bagian bawah, selain faraj (kemaluan). la (faraj) disunnahkan lebih dahulu dari semua anggota badan yang lain.

Hambali: Disunnahkan mendahulukan yang kanan dari yang kiri. 

Imamiyah: Membagi mandi junub ke dalam dua bagian, yaitu: Tertib dan Irtimas Tertib ialah orang yang mandi harus menyiramkan air pada tubuhnya dengan satu siraman. Maka dalam hal ini, ia wajib memulai dari atas, kemudian pada bagian tubuh yang kanan, lalu pada yang kiri. Bila hal itu tidak terlaksana, atau mendahulukan yang terakhir atau mengakhirkan yang seharusnya didahulukan, maka mandinya batal. Irtimas ialah menceburkan semua tubuhnya ke dalam air satu kali (menyelam). Maka kalau ada sebagian tubuh yang tidak tenggelam, itu tidak cukup (tidak sah) Imamiyah mengatakan bahwa semua jenis mandi tidak memadai sebagai pengganti dari wudhu, kecuali mandi junub. Karena mandi junub sudah termasuk wudhu di dalamnya. 

Empat mazhab: Tidak membedakan antara mandi junub dengan mandi-mandi lainnya, karena tidak cukupnya syarat-syarat yang ada dalam wudhu.
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
                  // SUBTITLE MANDI BESAR
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Mandi",
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
