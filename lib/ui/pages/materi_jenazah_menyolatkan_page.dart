part of 'pages.dart';

class MateriJenazahMenyolatkanPage extends StatefulWidget {
  @override
  _MateriJenazahMenyolatkanPageState createState() => _MateriJenazahMenyolatkanPageState();
}

class _MateriJenazahMenyolatkanPageState extends State<MateriJenazahMenyolatkanPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Versi Imam Hanafi', children: [
      Entry('Rukun-rukun shalat jenazah', content: '''
  Berdiri bagi yang mampu;
  Niat ketika takbirotul ihrom;
  Membaca takbir empat kali;
  Salam setelah takbir keempat.
      '''),
      Entry('Tata cara shalat jenazah', content: '''
  Berdiri di tempat yang lurus dengan dada jenazah (laki-laki atau perempuan), tata cara ini berlaku bagi Imam dan orang yang shalat sendiri;
  Takbir pertama, dilanjutkan dengan membaca tsana’ (pujian) kepada Allah SWT seperti lafadz : سبحان الله وبحمدك الخ , bukan dengan membaca Fatihah. Karena menurut Imam Hanafi membaca Fatihah dalam shalat jenazah itu tidak wajib, karena tidak ada tendensi dari Al Qur’an dan hadits yang mewajibkan baca Fatihah ketika shalat jenazah. Namun bacaan fatihah itu dapat mencukupi bacaan tsana’ (pujian) jika diniati;
  Takbir kedua, kemudian membaca Shalawat Nabi Muhammad, seperti: اللهم صل على محمّد.    
  Takbir ketiga, kemudian membaca do’a yang berhubungan dengan akhirat dan yang bermanfaat bagi mayat, bagi orang yang shalat dan bagi seluruh umat Islam. Tidak ada batasan tertentu di dalam lafadz do’a, yang penting do’a yang mengandung makna-makna di atas, tetapi yang lebih utama menggunakan do’anya Nabi Muhammad yang berbunyi :

اللَّهُمَّ اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ وَأَكْرِمْ نُزُلَهُ وَوَسِّعْ مَدْخَلَهُ وَاغْسِلْهُ بِمَاءٍ وَثَلْجٍ وَبَرَدٍ وَنَقِّهِ مِنْ الْخَطَايَا كَمَا يُنَقَّى الثَّوْبُ الْأَبْيَضُ مِنْ الدَّنَسِ وَأَبْدِلْهُ دَارًا خَيْرًا مِنْ دَارِهِ وَأَهْلًا خَيْرًا مِنْ أَهْلِهِ وَزَوْجًا خَيْرًا مِنْ زَوْجِهِ وَأَدْخِلْهُ الْجَنَّةَ وَأَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَعَذَابِ النَّارِ (رواه مسلم  والترمذى والنسائ)

Artinya: “Ya Allah, ampunilah dosa mayat ini, limpahkanlah rahmat kepadanya, maafkanlah kesalahannya, muliakanlah tempatnya, luaskanlah kuburnya, bersihkanlah dia dengan air salju dan air yang sejuk, bersihkan dia dari segala kesalahan sebagaimana baju putih yang dibersihkan dari kotoran, gantilah rumahnya dengan rumah yang lebih baik, dan keluarga yang lebih baik gantilah suami atau istri yang lebih baik, masukkanlah ia ke sorga, dan hindarkanlah dia dari siksa kubur dan siksa neraka”. (HR. Imam Muslim, Turmudzi dan Nasa’i)

  Takbir keempat, dilanjutkan dengan mengucapkan salam السـلام عليكم ورحمــة الله وبركاتــه (tanpa membaca do’a terlebih dahulu). Namun sebagian Ulama Hanafiyah berpendapat bahwa setelah takbir keempat dan sebelum salam disunahkan membaca do’a :

رَبَّنَا آَتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآَخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ

Artinya :  "Wahai tuhanku berikanlah Kami kebaikan di dunia dan akhirat dan jagalah dari api neraka"

Menurut Imam Hanafi, dalam menshalati jenazah itu lebih utama untuk mendahulukan para penguasa, baik penguasa pusat ataupun penguasa daerah setempat. Tendensi Beliau adalah kisah dari Sahabat Ali yang berbunyi :

إِنَّ الْحُسَيْنَ بْنَ عَلِيٍّ قَدَّمَ سَعِيْدَ بْنَ العَاصِ لَمَّا مَاتَ الْحَسَنُ وَقَالَ لَوْ لاَ السُّنَّةُ لَمَا قَدَّمْتُكَ وَكَانَ سَعِيْدٌ وَلِيًّا بِالْمَدِيْنَةِ وَهُوَ الَّذِى يُسَمَّى فِى هَذِهِ الزَّمَانِ النَّائِبَ.

Artinya: “Sesungguhnya Husein bin Ali mendahulukan (menyuruh) Sa’îd bin ‘Ash untuk menshalati jenazah Hasan, dan Husein berkata: “Jika bukan merupakan kesunahan niscaya saya tidak mendahulukan kamu (untuk menshalatinya)”, dan ketika itu Sa’îd bin  ‘Ash menjabat sebagai penguasa di Madinah, yang menurut istilah sekarang disebut Naib”.

Pendapat ini, ditentang oleh Abu Yusûf (ashab Hanafi), Beliau menyatakan bahwa yang lebih utama untuk menshalati jenazah terlebih dahulu adalah walinya dari jenazah tersebut, karena menurut Beliau hukum jenazah mempunyai kesamaan dengan nikah, sementara dalam masalah nikah  itu dijelaskan bahwa yang lebih berhak untuk menjadi wali nikah adalah wali yang lebih dekat nasabnya, apabila tidak ada maka bisa pindah ke wali yang lebih jauh nasabnya, dan jika tidak mempunyai wali maka yang berhak untuk menjadi walinya adalah penguasa. Jadi, urutan orang yang lebih utama untuk didahulukan dalam menshalati jenazah adalah sama dengan urutan orang yang berhak untuk didahulukan menjadi wali nikah.
      '''),
    ]),
    Entry('Versi Imam Maliki', children: [
      Entry('Rukun-Rukun Shalat Jenazah', content: '''
  Berdiri bagi yang mampu;
  Niat ketika takbirotul ihrom;
  Membaca takbir empat kali;
  Membaca do’a;
  Membaca salam.
      '''),
      Entry('Tata Cara Shalat Jenazah', content: '''
  Apabila jenazahnya laki-laki, maka Mushalli (orang yang menshalati) berdiri di tempat yang lurus dengan tengah badan jenazah. Sedangkan Apabila jenazahnya perempuan, maka Mushalli berdiri di tempat yang lurus dengan pundak jenazah. Tata cara ini berlaku bagi Imam dan orang yang shalat sendiri;
  Niat, dalam shalat jenazah tidak wajib menentukan jenazah laki-laki atau perempuan dan tidak wajib niat fardlu, tetapi cukup dengan semisal:

أُصَلِّى عَلَى هَذِهِ الْجَنَازَةِ اللهُ أَكْبَرُ.

  Membaca takbir sebanyak empat kali;
  Takbir pertama, disertai dengan mengangkat tangan, kemudian membaca do’a;
  Takbir kedua, dengan tanpa mengangkat tangan, kemudian membaca do’a;
  Takbir ketiga dengan tanpa mengangkat tangan, kemudian membaca do’a;
  Takbir keempat,  dengan tanpa mengangkan tangankemudian salam satu kali;

Paling sedikitnya do’a yang harus dibaca dalam shalat jenazah adalah "اللّهم اغفر له" dan menurut Imam Mâliki bacaan Fatihah dalam shalat jenazah tidak diwajibkan, sedangkan hadits yang menyatakan kewajiban membaca Fatihah di dalam shalat, oleh Beliau diarahkan pada selain shalat jenazah. Hadits tersebut adalah :

قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ لاَ صَلاَةَ لِمَنْ لَمْ يَقْرَأْ بِفَاتِحَةِ الْكِتَابِ  (متفق عليه)

Artinya: Nabi bersabda: "Tidak dianggap shalat yang sah bagi orang yang tidak membaca Fatihah di dalam shalatnya”. (HR. Bukhôri-Muslim)
      '''),
    ]),
    Entry('Versi Imam Syâfi\'i', children: [
      Entry('Rukun-Rukun Shalat Jenazah', content: '''
  Berdiri bagi yang mampu;
  Niat ketika takbirotul ihrom;
  Membaca takbir empat kali;
  Membaca Fatihah;
  Membaca shalawat pada Nabi Muhammad SAW;
  Membaca do’a untuk mayit;
  Salam satu kali.
      '''),
      Entry('Tata Cara Shalat Jenazah', content: '''
  Jenazah laki-laki: Mushalli (orang yang menshalati) berdiri di tempat yang lurus dengan tengah kepala jenazah, dan bila jenazahnya perempuan: Mushalli berdiri di tempat yang lurus dengan pantatnya jenazah, tata cara ini berlaku bagi Imam dan orang yang shalat sendiri;
  Niat atau menyengaja shalat jenazah dan harus menentukan kefardluan (Syâfi'iyah), namun Imam Syâfi'i sendiri tidak mengharuskan penentuan mayit hadir.
Takbir pertama, kemudian membaca Fatihah. Imam Syâfi'i mewajibkan membaca Fatihah dalam shalat jenazah karena bertendensi pada hadits Nabi yang diriwayatkan Imam Ibnu Mâjah dan Hâkim :

رُوِىَ عَنْ جَابِرٍ أَنَّهُ قَالَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَبَّرَ عَلَى الْمَيِّتِ أَرْبَعًا , وَقَرَأَ بَعْدَ التَّكْبِيرَةِ الْأُولَى بِأُمِّ الْقُرْآنِ  (رواه الشافعى والحاكم والبيهقى)

Artinya: Diriwayatkan dari sahabat Jâbir RA, Ia berkata: "Sesungguhnya ketika Rasulullah menshalati mayit, Beliau takbir sebanyak empat kali dan setelah takbir pertama Beliau membaca Fatihah”. (HR. Imam Syâfi'i, Hâkim dan Imam Baihaqi) 

  Takbir kedua, kemudian membaca shalawat kepada Nabi Muhammad. Hukum membaca shalawat kepada Nabi adalah wajib, karena berdasarkan hadits yang diriwayatkan Imam Ibnu Mâjah dan Hâkim:

إِنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا صَلَاةَ لِمَنْ لَمْ يُصَلِّ عَلَى نَبِيِّهِ (رواه إبن ماجه والحــــــاكم)

Artinya: Nabi bersabda: “Tidak dianggap sah shalatnya seseorang yang tidak membaca shalawat kepada Nabinya”. (HR. Ibnu Mâjah dan Hâkim)

  Takbir ketiga, kemudian membaca do’a untuk almarhum, dan do’a tersebut hukumnya wajib, karena bertendensi pada hadits Nabi yang diriwayatkan oleh Imam Abu Dâwud :

رَوَى أَبُوْهُرَيْرَةَ أَنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ إذَا صَلَّيْتُمْ عَلَى مَوْتَاكُمْ فَأَخْلِصُوا لَهُمْ الدُّعَاءَ (رواه أبو داود)

Artinya: Abu Hurairah meriwayatkan bahwa Nabi pernah bersabda: “Apabila kalian menshalati jenazah, maka bacalah do’a dengan ikhlas”. (HR. Abu Dâwud dan Ibnu Mâjah)

Do’a dalam shalat jenazah tidak terikat dengan lafadz tertentu, diantara contoh do’a adalah :

اللَّهُمَّ اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ

Artinya: "Ya Allah, ampunilah dosa jenazah ini, limpahkanlah rahmatmu padanya dan ampunilah kesalahannya”.

  Takbir keempat, kemudian salam satu kali. Salam hukumnya wajib karena berdasrkan hadits Nabi yang diriwayatkan oleh Imam Syâfi'i, Baihaqi dan Ibnu Mâjah :

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ مِفْتَاحُ الصَّلاَةِ الطَّهُوْرُ وَتَحْرِيْمُهَا التَّكْبِيْرُ وَتَحْلِيْلُهَا السَّلاَمُ  (رواه الشافعى والبيهقى وابن ماحه)

Artinya: "Kunci (alat pembuka) shalat adalah bersuci, dan penyebab diharamkannya (sesuatu yang halal di luar shalat) adalah takbirotul ihrom, dan penyebab dihalalkannya kembali (sesuatu yang diharamkan ketika shalat) adalah salam". (HR. Imam Syâfi'i, Baihaqi dan Ibnu Mâjah)
      '''),
      Entry('', content: '''Catatan :
Membaca do’a setelah takbir keempat hukumnya tidak wajib, karena Ulama Syâfi'iyah dalam sebagian kitab menyebutkan do’a, dan dalam kitabnya yang lain tidak menyebutkan.'''),
      Entry('Shalat Jenazah Di Masjid', content: '''
Imam Syâfi'i berpendapat bahwa hukum menshalati jenazah di masjid adalah mubah (boleh), karena berdasarkan hadits yang diriwayatkan Imam Muslim :

إِنَّ عَائِشَةَ رَضِىَ اللهُ عَنْهَا أَمَرَتْ بِجَنَازَةِ سَعْدِ ابْنِ أَبِيْ وَقَّاصِ رَضِىَ اللهُ عَنْهُ أَنْ تُدْخَلَ المَْسْجِدَ لِيُصَلِّىَ عَلَيْهَا فَأَنْكَرَ عَلَيْهَا ذَلِكَ فَقَالَتْ مَا أَسْرَعُ مَا نَسِيَ النَّاسُ مَا صَلَّى رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ سُهَيْلَ بْنَ بَيْضَاءَ وَأَخِيْهِ اِلَّا فِى الْمَسْجِدِ (رواه مسلم)

Artinya: Aisyah memerintahkan supaya jenazahnya Sa’d bin Abi Waqash dibawa masuk masjid untuk dishalati di dalam masjid, ternyata tindakan Aisyah diingkari (oleh warga), lalu Aisyah berkata: "Apa yang menyebabkan kalian mudah lupa, Nabi menshalati jenazahnya Suhail bin Baidlo’ dan saudaranya di dalam masjid”. (HR. Muslim)
      '''),
    ]),
    Entry('Versi Imam Hambali', children: [
      Entry('Rukun-Rukun Shalat Jenazah', content: '''
  Berdiri bagi yang mampu;
  Niat ketika takbirotul ihrom;
  Membaca takbir empat kali;
  Membaca shalawat pada Nabi Muhammad SAW;
  Membaca Fatihah;
  Membaca do’a untuk mayat;
  Salam satu kali.
      '''),
      Entry('Tata Cara Shalat Jenazah : ', content: '''
  Apabila jenazahnya laki-laki, maka Mushalli berdiri di tempat yang lurus dengan tengah kepala jenazah, sedangkan apabila perempuan, maka Mushalli berdiri di tempat yang lurus dengan tengah badan jenazah. Tata cara ini berlaku bagi Imam dan orang yang shalat sendiri. Tendensi keterangan ini adalah :

إنَّ أَنَسًا صَلَّى عَلَى رَجُلٍ فَقَامَ عِنْدَ رَأْسِهِ ثُمَّ صَلَّى عَلَى امْرَأَةٍ حِيَالَ وَسَطِ السَّرِيرِ فَقَالَ لَهُ الْعَلَاءُ بْنُ زِيَادٍ : هَكَذَا رَأَيْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم قَامَ عَلَى اْلمَرْأَةِ مَقَامَكَ مِنْهَا وَالرَّجُلِ مَقَامَكَ مِنْهُ قَالَ نَعَمْ (حديث حسن)

Artinya: Sesungguhnya sahabat Anas menshalati jenazah seorang laki-laki dan Beliau berdiri lurus dengan kepala jenazah, dan berdiri lurus dengan tengah badan jenazah ketika jenazah perempuan, kemudian Ala’ bin ziyad bertanya :"Apakah seperti itu kamu melihat Rasulullah menshalati jenazah?"  Sahabat Anas menjawab: " Ya". (Hadits Hasan)

Niat, sedangkan tata cara niat dalam shalat jenazah sama dengan shalat yang lain. Dalil pijakan kewajiban niat dalam shalat jenazah adalah hadits Nabi yang diriwayatkan Imam Bukhôri - Muslim :

إِنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ إِنَّمَا الأَعْمَالُ بِالنِّيَاتِ وَإِنَّمَا لِكُلِّ إمْرِئٍ مَانَوَى (متفق عليه)

Artinya: Nabi bersabda "Sesungguhnya sahnya amal tergantung pada niat, dan seseorang akan mendapatkan atas apa yang ia niati”. (HR. Bukhôri-Muslim)

  Takbir pertama, kemudian membaca Fatihah. Membaca Fatihah merupakan rukun shalat jenazah, alasannya karena setiap shalat yang wajib dikerjakan dengan berdiri, maka wajib untuk membaca Fatihah, dan berdasarkan hadits Nabi yang diriwayatkan Imam Bukhôri - Muslim:

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ لاَ صَلاَةَ لِمَنْ لَمْ يَقْرَأْ بِفَاتِحَةِ الْكِتَابِ ( متفق عليه)  
وَصَلَّى ابْنُ عَبَّاسٍ عَلَى جَنَازَةٍ فَقَرَأَ بِأُمِّ اْلقُرْآنِ.

Artinya: Nabi bersabda: "Tidak dianggap shalat yang sah bagi orang yang tidak membaca Fatihah di dalam shalatnya”. (HR. Bukhôri-Muslim). Dan Ibnu Abbas membaca Fatihah ketika shalat jenazah.

  Takbir kedua, kemudian membaca shalawat pada Nabi Muhammad SAW. Dalil membaca shalawat adalah hadits yang diriwayatkan Imam Syâfi'i :

رَوَى أَبُوْ أُمَامَةَ بْنُ سَهْلٍ عَنْ رَجُلٍ مِنْ أَصْحَابِ النَّبِىِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَنَّ السُّنَّةَ فِي الصَّلَاةِ عَلَى الْجِنَازَةِ أَنْ يُكَبِّرَ الْإِمَامُ ثُمَّ يَقْرَأَ بِفَاتِحَةِ الْكِتَابِ بَعْدَ التَّكْبِيرَةِ الْأُولَى سِرًّا فِي نَفْسِهِ , ثُمَّ يُصَلِّيَ عَلَى النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ وَيُخْلِصَ الدُّعَاءَ لِلْجِنَازَةِ (رواه الشافعى)

Artinya: "Abu Umamah meriwayatkan haditsnya salah satu sahabat Nabi, bahwa sesungguhnya tata cara shalat jenazah adalah takbirotul ihrom, kemudian membaca Fatihah setelah takbir tersebut, membaca shalawat kepada Nabi, lalu mendo’akan jenazah". (HR. Imam Syâfi'i)

  Takbir ketiga, kemudian membaca do’a untuk jenazah, karena tujuan utama dari shalat jenazah adalah mendo’akan jenazah, dan berdasarkan hadits Nabi yang diriwayatkan oleh Abu Dâwud :

إِنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ إِذَا صَلَّيْتُمْ عَلَى الْمَيِِّتِ فَأَخْلِصُوْا الدُّعَاءَ (رواه ابوداود)

Artinya: Nabi bersabda "Apabila kalian shalat jenazah, maka berdo’alah denagn ikhlas (untuk jenazah yang kamu shalati)” (HR. Abu Dâwud)

Takbir keempat, kemudian mengucapkan salam satu kali. Perlu diketahui bahwa hukum mengucapakan salam setelah takbir ke empat ini adalah wajib. Karena berdasarkan hadits Nabi yang diriwayatkan Imam Syâfi'i, Baihaqi dan Ibnu Mâjah :

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ مِفْتَاحُ الصَّلاَةِ الطَّهُوْرُ وَتَحْرِيْمُهَا التَّكْبِيْرُ وَتَحْلِيْلُهَا السَّلاَمُ  (رواه الشافعى والبيهقى وابن ماحه)

Artinya: "Kunci (alat pembuka) shalat adalah bersuci, dan penyebab diharamkannya (sesuatu yang halal di luar shalat) adalah takbirotul ihrom, dan penyebab dihalalkannya kembali (sesuatu yang diharamkan ketika shalat) adalah salam". (HR. Imam Syâfi'i, Baihaqi dan Ibnu Mâjah).
      '''),
      Entry('', content: '''Catatan :
Imam Hanafi, Mâliki, Syâfi'i dan Hambali sepakat bahwa takbir yang dilakukan pada shalat jenazah adalah empat kali. Kesepakatan ini berdasarkan pada hadits Nabi yang diriwayatkan oleh ImamBukhôri-Muslim :

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَبَّرَ عَلَى النَّجَاشِى أَرْبَعًا (متفق عليه)

Artinya: Sesungguhnya Nabi membaca takbir empat kali ketika menshalati jenazahnya raja Najasyi. (HR. Bukhôri-Muslim)'''),
    ]),
    Entry('Shalat jenazah gha\'ib (tidak ada)', children: [
      Entry('', content: '''Shalat gha'ib adalah shalat jenazah yang dilakukan pada suatu tempat yang keberadaan jenazah tidak dalam wilayah tersebut. Adapun hukum melaksanakannya masih dipertentangkan oleh para Ulama sebagaimana keterangan berikut :'''),
      Entry('Versi Imam Hanafi dan Imam Maliki', content: '''
Keduanya menyatakan bahwa shalat gha'ib hukumnya tidak boleh, karena syaratnya shalat jenazah, mayat harus hadir ditempat menshalatinya. Sedangkan hadits yang menceritakan "Nabi pernah menshalati Raja Najasyi padahal jenazahnya tidak hadir", merupakan khusûsiah (ketertentuan) bagi Nabi. Sedangkan Imam Hanafi dan Imam Mâliki memperbolehkan menshalati jenazah  di atas kubur (gha'ib) terhadap mayat yang belum dishalati dan terlanjur telah dikubur adalah karena dalam kondisi terpaksa (dlarurat).
      '''),
      Entry('Versi Imam Syâfi\'i dan Imam Hambali', content: '''
  Keduanya menyatakan bahwa shalat gha'ib diperbolehkan dengan syarat jenazah yang hendak dishalati berada di luar wilayah (desa atau kota) mushalli, meskipun jaraknya dekat. Tendensi pernyataan ini adalah hadits yang diriwayatkan ImamBukhori Muslim :
  رَوَى أَبُوْهُرَيْرَةَ اَنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَعَى النَّجَاشِيَّ لِأَصْحَابِهِ يَوْمَ مَاتَ وَخَرَجَ بِهِمْ اِلَى الْمُصَلِّى وَصَفَّ بِهِمْ وَكَبَّّرَ أَرْبَعًا  (متفق عليه)
  Artinya: Abu Hurairah meriwayatkan: “Sesungguhnya Nabi dan para sahabatnya keluar ke musholla untuk menshalati Raja Najasyi (gha'ib), Beliau menata barisan Sahabatnya dan membaca takbir empat kali”. (HR. Bukhori-Muslim)
      '''),
    ]),
    Entry('Mengulangi shalat jenazah', children: [
      Entry('Versi Imam Hananfi dan Imam Mâliki', content: '''
Keduanya berpendapat bahwa mengulangi shalat jenazah hukumnya di perinici menjdi dua, yaitu :

1.      Makruh, apabila shalat jenazah yang pertama dilakukan secara berjamaah;
2.      Sunah, apabila shalat jenazah yang pertama dilakukan sendiri (tidak berjamaah).
      '''),
      Entry('Versi Imam Syâfi\'i dan Imam Hambali', content: '''
Keduanya berpendapat menshalati jenazah yang telah dishalati hukumnya sunah apabila mushalli (orang yang shalat) belum mengikuti shalat yang pertama, baik shalat yang pertama dilakukan dengan jama'ah atau tidak, dan jenazahnya belum di kubur.
      '''),
    ]),
    Entry('Menshalati orang kafir (non Muslim)', content: '''
Semua Ulama sepakat bahwa menshalati jenazahnya orang kafir hukumnya haram dan tidak sah, karena berdasarkan firman Allah surat At Taubah : 84 :

قَالَ اللهُ تَعَالَى وَلَا تُصَلِّ عَلَى أَحَدٍ مِنْهُمْ مَاتَ أَبَدًا وَلَا تَقُمْ عَلَى قَبْرِهِ إِنَّهُمْ كَفَرُوا بِاللَّهِ وَرَسُولِهِ وَمَاتُوا وَهُمْ فَاسِقُونَ    (التوبة : 84)

Artinya: Allah berfirman “Janganlah kamu menshalati (jenazah) seorang yang mati diantara mereka, dan janganlah kamu berdiri (mendo’akan) di kuburnya. Sesungguhnya mereka telah kafir kepada Allah dan Rasul-Nya dan mereka mati dalam keadaan fasik. (QS. At Taubah : 84)

Dan firman Allah surat At Taubah : 113 :

قَالَ اللهُ تَعَالَى مَا كَانَ لِلنَّبِيِّ وَالَّذِينَ آَمَنُوا أَنْ يَسْتَغْفِرُوا لِلْمُشْرِكِينَ وَلَوْ كَانُوا أُولِي قُرْبَى   (التوبة : 113)

Artinya: Allah berfirman "Tidak sepantasnya bagi Nabi dan orang-orang yang beriman untuk memintakan ampunan (kepada Allah) bagi orang-orang musyrik (kafir) meski ada hubungan kerabat”. (QS. At Taubah : 113)
      '''),
    Entry('Memindahkan jenazah', children: [
      Entry('Versi Imam Hanafi', content: '''
Boleh memindahkan jenazah dari daerah tempat meninggalnya dengan dua syarat :

1.	Sebelum dikubur, atau setelah dikubur tapi di tanah milik orang lain dan pemilik tanah meminta supaya mayatnya diambil;
2.	Jenazahnya belum berubah, seperti bau busuk.
      '''),
      Entry('Versi Imam Maliki', content: '''
Boleh memindahkan jenazah dari daerah tempat meninggalnya sebelum dikubur atau setelahnya dengan tiga syarat :

1.	Jenazah belum rontok dan proses pemindahan tidak mengakibatkan rontoknya sebagian anggotanya;
2.	Tidak merusak kehormatan jenazah, seperti dipindah dengan cara yang tidak manusiawi;
3.	pemindahannya karena unsur maslahah (kebaikan), seperti longsornya tanah atau dikumpulkan dengan makam keluarganya.
      '''),
      Entry('Versi Imam Syâfi\'i', content: '''
Memindah jenazah dari daerah tempat ia meninggal hukumnya sebagai berikut :

  1.      Sebelum dikubur : haram, meskipun tidak berubah seperti bau kecuali bau yang sudah menjadi watak mayat tersebut dan tidak berubah dari bau tersebut dan meskipun sudah dimandikan, dikafani, dan dishalati.
  2.      Setelah dikubur : haram, kecuali dlarurat, seperti dikubur di tanah milik orang lain yang tidak diizini pemiliknya.
      '''),
      Entry('Versi Imam Hambali', content: '''
Memindahkan jenazah dari daerah tempatnya meninggal hukumnya boleh secara mutlak (sebelum atau sesudah dikubur) dengan syarat:

1.	Dipindahkan karena ada maslahah (tujuan baik), seperti dipindahkan di daerah pekuburan orang-orang Shaleh;
2.	Belum berubah, seperti bau busuk.
      '''),
    ]),
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Versi Imam Hanafi', children: [
      Entry('Rukun-rukun shalat jenazah', content: '''
  Berdiri bagi yang mampu;
  Niat ketika takbirotul ihrom;
  Membaca takbir empat kali;
  Salam setelah takbir keempat.
      '''),
      Entry('Tata cara shalat jenazah', content: '''
  Berdiri di tempat yang lurus dengan dada jenazah (laki-laki atau perempuan), tata cara ini berlaku bagi Imam dan orang yang shalat sendiri;
  Takbir pertama, dilanjutkan dengan membaca tsana’ (pujian) kepada Allah SWT seperti lafadz : سبحان الله وبحمدك الخ , bukan dengan membaca Fatihah. Karena menurut Imam Hanafi membaca Fatihah dalam shalat jenazah itu tidak wajib, karena tidak ada tendensi dari Al Qur’an dan hadits yang mewajibkan baca Fatihah ketika shalat jenazah. Namun bacaan fatihah itu dapat mencukupi bacaan tsana’ (pujian) jika diniati;
  Takbir kedua, kemudian membaca Shalawat Nabi Muhammad, seperti: اللهم صل على محمّد.    
  Takbir ketiga, kemudian membaca do’a yang berhubungan dengan akhirat dan yang bermanfaat bagi mayat, bagi orang yang shalat dan bagi seluruh umat Islam. Tidak ada batasan tertentu di dalam lafadz do’a, yang penting do’a yang mengandung makna-makna di atas, tetapi yang lebih utama menggunakan do’anya Nabi Muhammad yang berbunyi :

اللَّهُمَّ اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ وَأَكْرِمْ نُزُلَهُ وَوَسِّعْ مَدْخَلَهُ وَاغْسِلْهُ بِمَاءٍ وَثَلْجٍ وَبَرَدٍ وَنَقِّهِ مِنْ الْخَطَايَا كَمَا يُنَقَّى الثَّوْبُ الْأَبْيَضُ مِنْ الدَّنَسِ وَأَبْدِلْهُ دَارًا خَيْرًا مِنْ دَارِهِ وَأَهْلًا خَيْرًا مِنْ أَهْلِهِ وَزَوْجًا خَيْرًا مِنْ زَوْجِهِ وَأَدْخِلْهُ الْجَنَّةَ وَأَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَعَذَابِ النَّارِ (رواه مسلم  والترمذى والنسائ)

Artinya: “Ya Allah, ampunilah dosa mayat ini, limpahkanlah rahmat kepadanya, maafkanlah kesalahannya, muliakanlah tempatnya, luaskanlah kuburnya, bersihkanlah dia dengan air salju dan air yang sejuk, bersihkan dia dari segala kesalahan sebagaimana baju putih yang dibersihkan dari kotoran, gantilah rumahnya dengan rumah yang lebih baik, dan keluarga yang lebih baik gantilah suami atau istri yang lebih baik, masukkanlah ia ke sorga, dan hindarkanlah dia dari siksa kubur dan siksa neraka”. (HR. Imam Muslim, Turmudzi dan Nasa’i)

  Takbir keempat, dilanjutkan dengan mengucapkan salam السـلام عليكم ورحمــة الله وبركاتــه (tanpa membaca do’a terlebih dahulu). Namun sebagian Ulama Hanafiyah berpendapat bahwa setelah takbir keempat dan sebelum salam disunahkan membaca do’a :

رَبَّنَا آَتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآَخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ

Artinya :  "Wahai tuhanku berikanlah Kami kebaikan di dunia dan akhirat dan jagalah dari api neraka"

Menurut Imam Hanafi, dalam menshalati jenazah itu lebih utama untuk mendahulukan para penguasa, baik penguasa pusat ataupun penguasa daerah setempat. Tendensi Beliau adalah kisah dari Sahabat Ali yang berbunyi :

إِنَّ الْحُسَيْنَ بْنَ عَلِيٍّ قَدَّمَ سَعِيْدَ بْنَ العَاصِ لَمَّا مَاتَ الْحَسَنُ وَقَالَ لَوْ لاَ السُّنَّةُ لَمَا قَدَّمْتُكَ وَكَانَ سَعِيْدٌ وَلِيًّا بِالْمَدِيْنَةِ وَهُوَ الَّذِى يُسَمَّى فِى هَذِهِ الزَّمَانِ النَّائِبَ.

Artinya: “Sesungguhnya Husein bin Ali mendahulukan (menyuruh) Sa’îd bin ‘Ash untuk menshalati jenazah Hasan, dan Husein berkata: “Jika bukan merupakan kesunahan niscaya saya tidak mendahulukan kamu (untuk menshalatinya)”, dan ketika itu Sa’îd bin  ‘Ash menjabat sebagai penguasa di Madinah, yang menurut istilah sekarang disebut Naib”.

Pendapat ini, ditentang oleh Abu Yusûf (ashab Hanafi), Beliau menyatakan bahwa yang lebih utama untuk menshalati jenazah terlebih dahulu adalah walinya dari jenazah tersebut, karena menurut Beliau hukum jenazah mempunyai kesamaan dengan nikah, sementara dalam masalah nikah  itu dijelaskan bahwa yang lebih berhak untuk menjadi wali nikah adalah wali yang lebih dekat nasabnya, apabila tidak ada maka bisa pindah ke wali yang lebih jauh nasabnya, dan jika tidak mempunyai wali maka yang berhak untuk menjadi walinya adalah penguasa. Jadi, urutan orang yang lebih utama untuk didahulukan dalam menshalati jenazah adalah sama dengan urutan orang yang berhak untuk didahulukan menjadi wali nikah.
      '''),
    ]),
    Entry('Versi Imam Maliki', children: [
      Entry('Rukun-Rukun Shalat Jenazah', content: '''
  Berdiri bagi yang mampu;
  Niat ketika takbirotul ihrom;
  Membaca takbir empat kali;
  Membaca do’a;
  Membaca salam.
      '''),
      Entry('Tata Cara Shalat Jenazah', content: '''
  Apabila jenazahnya laki-laki, maka Mushalli (orang yang menshalati) berdiri di tempat yang lurus dengan tengah badan jenazah. Sedangkan Apabila jenazahnya perempuan, maka Mushalli berdiri di tempat yang lurus dengan pundak jenazah. Tata cara ini berlaku bagi Imam dan orang yang shalat sendiri;
  Niat, dalam shalat jenazah tidak wajib menentukan jenazah laki-laki atau perempuan dan tidak wajib niat fardlu, tetapi cukup dengan semisal:

أُصَلِّى عَلَى هَذِهِ الْجَنَازَةِ اللهُ أَكْبَرُ.

  Membaca takbir sebanyak empat kali;
  Takbir pertama, disertai dengan mengangkat tangan, kemudian membaca do’a;
  Takbir kedua, dengan tanpa mengangkat tangan, kemudian membaca do’a;
  Takbir ketiga dengan tanpa mengangkat tangan, kemudian membaca do’a;
  Takbir keempat,  dengan tanpa mengangkan tangankemudian salam satu kali;

Paling sedikitnya do’a yang harus dibaca dalam shalat jenazah adalah "اللّهم اغفر له" dan menurut Imam Mâliki bacaan Fatihah dalam shalat jenazah tidak diwajibkan, sedangkan hadits yang menyatakan kewajiban membaca Fatihah di dalam shalat, oleh Beliau diarahkan pada selain shalat jenazah. Hadits tersebut adalah :

قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ لاَ صَلاَةَ لِمَنْ لَمْ يَقْرَأْ بِفَاتِحَةِ الْكِتَابِ  (متفق عليه)

Artinya: Nabi bersabda: "Tidak dianggap shalat yang sah bagi orang yang tidak membaca Fatihah di dalam shalatnya”. (HR. Bukhôri-Muslim)
      '''),
    ]),
    Entry('Versi Imam Syâfi\'i', children: [
      Entry('Rukun-Rukun Shalat Jenazah', content: '''
  Berdiri bagi yang mampu;
  Niat ketika takbirotul ihrom;
  Membaca takbir empat kali;
  Membaca Fatihah;
  Membaca shalawat pada Nabi Muhammad SAW;
  Membaca do’a untuk mayit;
  Salam satu kali.
      '''),
      Entry('Tata Cara Shalat Jenazah', content: '''
  Jenazah laki-laki: Mushalli (orang yang menshalati) berdiri di tempat yang lurus dengan tengah kepala jenazah, dan bila jenazahnya perempuan: Mushalli berdiri di tempat yang lurus dengan pantatnya jenazah, tata cara ini berlaku bagi Imam dan orang yang shalat sendiri;
  Niat atau menyengaja shalat jenazah dan harus menentukan kefardluan (Syâfi'iyah), namun Imam Syâfi'i sendiri tidak mengharuskan penentuan mayit hadir.
Takbir pertama, kemudian membaca Fatihah. Imam Syâfi'i mewajibkan membaca Fatihah dalam shalat jenazah karena bertendensi pada hadits Nabi yang diriwayatkan Imam Ibnu Mâjah dan Hâkim :

رُوِىَ عَنْ جَابِرٍ أَنَّهُ قَالَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَبَّرَ عَلَى الْمَيِّتِ أَرْبَعًا , وَقَرَأَ بَعْدَ التَّكْبِيرَةِ الْأُولَى بِأُمِّ الْقُرْآنِ  (رواه الشافعى والحاكم والبيهقى)

Artinya: Diriwayatkan dari sahabat Jâbir RA, Ia berkata: "Sesungguhnya ketika Rasulullah menshalati mayit, Beliau takbir sebanyak empat kali dan setelah takbir pertama Beliau membaca Fatihah”. (HR. Imam Syâfi'i, Hâkim dan Imam Baihaqi) 

  Takbir kedua, kemudian membaca shalawat kepada Nabi Muhammad. Hukum membaca shalawat kepada Nabi adalah wajib, karena berdasarkan hadits yang diriwayatkan Imam Ibnu Mâjah dan Hâkim:

إِنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا صَلَاةَ لِمَنْ لَمْ يُصَلِّ عَلَى نَبِيِّهِ (رواه إبن ماجه والحــــــاكم)

Artinya: Nabi bersabda: “Tidak dianggap sah shalatnya seseorang yang tidak membaca shalawat kepada Nabinya”. (HR. Ibnu Mâjah dan Hâkim)

  Takbir ketiga, kemudian membaca do’a untuk almarhum, dan do’a tersebut hukumnya wajib, karena bertendensi pada hadits Nabi yang diriwayatkan oleh Imam Abu Dâwud :

رَوَى أَبُوْهُرَيْرَةَ أَنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ إذَا صَلَّيْتُمْ عَلَى مَوْتَاكُمْ فَأَخْلِصُوا لَهُمْ الدُّعَاءَ (رواه أبو داود)

Artinya: Abu Hurairah meriwayatkan bahwa Nabi pernah bersabda: “Apabila kalian menshalati jenazah, maka bacalah do’a dengan ikhlas”. (HR. Abu Dâwud dan Ibnu Mâjah)

Do’a dalam shalat jenazah tidak terikat dengan lafadz tertentu, diantara contoh do’a adalah :

اللَّهُمَّ اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ

Artinya: "Ya Allah, ampunilah dosa jenazah ini, limpahkanlah rahmatmu padanya dan ampunilah kesalahannya”.

  Takbir keempat, kemudian salam satu kali. Salam hukumnya wajib karena berdasrkan hadits Nabi yang diriwayatkan oleh Imam Syâfi'i, Baihaqi dan Ibnu Mâjah :

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ مِفْتَاحُ الصَّلاَةِ الطَّهُوْرُ وَتَحْرِيْمُهَا التَّكْبِيْرُ وَتَحْلِيْلُهَا السَّلاَمُ  (رواه الشافعى والبيهقى وابن ماحه)

Artinya: "Kunci (alat pembuka) shalat adalah bersuci, dan penyebab diharamkannya (sesuatu yang halal di luar shalat) adalah takbirotul ihrom, dan penyebab dihalalkannya kembali (sesuatu yang diharamkan ketika shalat) adalah salam". (HR. Imam Syâfi'i, Baihaqi dan Ibnu Mâjah)
      '''),
      Entry('', content: '''Catatan :
Membaca do’a setelah takbir keempat hukumnya tidak wajib, karena Ulama Syâfi'iyah dalam sebagian kitab menyebutkan do’a, dan dalam kitabnya yang lain tidak menyebutkan.'''),
      Entry('Shalat Jenazah Di Masjid', content: '''
Imam Syâfi'i berpendapat bahwa hukum menshalati jenazah di masjid adalah mubah (boleh), karena berdasarkan hadits yang diriwayatkan Imam Muslim :

إِنَّ عَائِشَةَ رَضِىَ اللهُ عَنْهَا أَمَرَتْ بِجَنَازَةِ سَعْدِ ابْنِ أَبِيْ وَقَّاصِ رَضِىَ اللهُ عَنْهُ أَنْ تُدْخَلَ المَْسْجِدَ لِيُصَلِّىَ عَلَيْهَا فَأَنْكَرَ عَلَيْهَا ذَلِكَ فَقَالَتْ مَا أَسْرَعُ مَا نَسِيَ النَّاسُ مَا صَلَّى رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ سُهَيْلَ بْنَ بَيْضَاءَ وَأَخِيْهِ اِلَّا فِى الْمَسْجِدِ (رواه مسلم)

Artinya: Aisyah memerintahkan supaya jenazahnya Sa’d bin Abi Waqash dibawa masuk masjid untuk dishalati di dalam masjid, ternyata tindakan Aisyah diingkari (oleh warga), lalu Aisyah berkata: "Apa yang menyebabkan kalian mudah lupa, Nabi menshalati jenazahnya Suhail bin Baidlo’ dan saudaranya di dalam masjid”. (HR. Muslim)
      '''),
    ]),
    Entry('Versi Imam Hambali', children: [
      Entry('Rukun-Rukun Shalat Jenazah', content: '''
  Berdiri bagi yang mampu;
  Niat ketika takbirotul ihrom;
  Membaca takbir empat kali;
  Membaca shalawat pada Nabi Muhammad SAW;
  Membaca Fatihah;
  Membaca do’a untuk mayat;
  Salam satu kali.
      '''),
      Entry('Tata Cara Shalat Jenazah : ', content: '''
  Apabila jenazahnya laki-laki, maka Mushalli berdiri di tempat yang lurus dengan tengah kepala jenazah, sedangkan apabila perempuan, maka Mushalli berdiri di tempat yang lurus dengan tengah badan jenazah. Tata cara ini berlaku bagi Imam dan orang yang shalat sendiri. Tendensi keterangan ini adalah :

إنَّ أَنَسًا صَلَّى عَلَى رَجُلٍ فَقَامَ عِنْدَ رَأْسِهِ ثُمَّ صَلَّى عَلَى امْرَأَةٍ حِيَالَ وَسَطِ السَّرِيرِ فَقَالَ لَهُ الْعَلَاءُ بْنُ زِيَادٍ : هَكَذَا رَأَيْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم قَامَ عَلَى اْلمَرْأَةِ مَقَامَكَ مِنْهَا وَالرَّجُلِ مَقَامَكَ مِنْهُ قَالَ نَعَمْ (حديث حسن)

Artinya: Sesungguhnya sahabat Anas menshalati jenazah seorang laki-laki dan Beliau berdiri lurus dengan kepala jenazah, dan berdiri lurus dengan tengah badan jenazah ketika jenazah perempuan, kemudian Ala’ bin ziyad bertanya :"Apakah seperti itu kamu melihat Rasulullah menshalati jenazah?"  Sahabat Anas menjawab: " Ya". (Hadits Hasan)

Niat, sedangkan tata cara niat dalam shalat jenazah sama dengan shalat yang lain. Dalil pijakan kewajiban niat dalam shalat jenazah adalah hadits Nabi yang diriwayatkan Imam Bukhôri - Muslim :

إِنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ إِنَّمَا الأَعْمَالُ بِالنِّيَاتِ وَإِنَّمَا لِكُلِّ إمْرِئٍ مَانَوَى (متفق عليه)

Artinya: Nabi bersabda "Sesungguhnya sahnya amal tergantung pada niat, dan seseorang akan mendapatkan atas apa yang ia niati”. (HR. Bukhôri-Muslim)

  Takbir pertama, kemudian membaca Fatihah. Membaca Fatihah merupakan rukun shalat jenazah, alasannya karena setiap shalat yang wajib dikerjakan dengan berdiri, maka wajib untuk membaca Fatihah, dan berdasarkan hadits Nabi yang diriwayatkan Imam Bukhôri - Muslim:

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ لاَ صَلاَةَ لِمَنْ لَمْ يَقْرَأْ بِفَاتِحَةِ الْكِتَابِ ( متفق عليه)  
وَصَلَّى ابْنُ عَبَّاسٍ عَلَى جَنَازَةٍ فَقَرَأَ بِأُمِّ اْلقُرْآنِ.

Artinya: Nabi bersabda: "Tidak dianggap shalat yang sah bagi orang yang tidak membaca Fatihah di dalam shalatnya”. (HR. Bukhôri-Muslim). Dan Ibnu Abbas membaca Fatihah ketika shalat jenazah.

  Takbir kedua, kemudian membaca shalawat pada Nabi Muhammad SAW. Dalil membaca shalawat adalah hadits yang diriwayatkan Imam Syâfi'i :

رَوَى أَبُوْ أُمَامَةَ بْنُ سَهْلٍ عَنْ رَجُلٍ مِنْ أَصْحَابِ النَّبِىِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَنَّ السُّنَّةَ فِي الصَّلَاةِ عَلَى الْجِنَازَةِ أَنْ يُكَبِّرَ الْإِمَامُ ثُمَّ يَقْرَأَ بِفَاتِحَةِ الْكِتَابِ بَعْدَ التَّكْبِيرَةِ الْأُولَى سِرًّا فِي نَفْسِهِ , ثُمَّ يُصَلِّيَ عَلَى النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ وَيُخْلِصَ الدُّعَاءَ لِلْجِنَازَةِ (رواه الشافعى)

Artinya: "Abu Umamah meriwayatkan haditsnya salah satu sahabat Nabi, bahwa sesungguhnya tata cara shalat jenazah adalah takbirotul ihrom, kemudian membaca Fatihah setelah takbir tersebut, membaca shalawat kepada Nabi, lalu mendo’akan jenazah". (HR. Imam Syâfi'i)

  Takbir ketiga, kemudian membaca do’a untuk jenazah, karena tujuan utama dari shalat jenazah adalah mendo’akan jenazah, dan berdasarkan hadits Nabi yang diriwayatkan oleh Abu Dâwud :

إِنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ إِذَا صَلَّيْتُمْ عَلَى الْمَيِِّتِ فَأَخْلِصُوْا الدُّعَاءَ (رواه ابوداود)

Artinya: Nabi bersabda "Apabila kalian shalat jenazah, maka berdo’alah denagn ikhlas (untuk jenazah yang kamu shalati)” (HR. Abu Dâwud)

Takbir keempat, kemudian mengucapkan salam satu kali. Perlu diketahui bahwa hukum mengucapakan salam setelah takbir ke empat ini adalah wajib. Karena berdasarkan hadits Nabi yang diriwayatkan Imam Syâfi'i, Baihaqi dan Ibnu Mâjah :

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ مِفْتَاحُ الصَّلاَةِ الطَّهُوْرُ وَتَحْرِيْمُهَا التَّكْبِيْرُ وَتَحْلِيْلُهَا السَّلاَمُ  (رواه الشافعى والبيهقى وابن ماحه)

Artinya: "Kunci (alat pembuka) shalat adalah bersuci, dan penyebab diharamkannya (sesuatu yang halal di luar shalat) adalah takbirotul ihrom, dan penyebab dihalalkannya kembali (sesuatu yang diharamkan ketika shalat) adalah salam". (HR. Imam Syâfi'i, Baihaqi dan Ibnu Mâjah).
      '''),
      Entry('', content: '''Catatan :
Imam Hanafi, Mâliki, Syâfi'i dan Hambali sepakat bahwa takbir yang dilakukan pada shalat jenazah adalah empat kali. Kesepakatan ini berdasarkan pada hadits Nabi yang diriwayatkan oleh ImamBukhôri-Muslim :

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَبَّرَ عَلَى النَّجَاشِى أَرْبَعًا (متفق عليه)

Artinya: Sesungguhnya Nabi membaca takbir empat kali ketika menshalati jenazahnya raja Najasyi. (HR. Bukhôri-Muslim)'''),
    ]),
    Entry('Shalat jenazah gha\'ib (tidak ada)', children: [
      Entry('', content: '''Shalat gha'ib adalah shalat jenazah yang dilakukan pada suatu tempat yang keberadaan jenazah tidak dalam wilayah tersebut. Adapun hukum melaksanakannya masih dipertentangkan oleh para Ulama sebagaimana keterangan berikut :'''),
      Entry('Versi Imam Hanafi dan Imam Maliki', content: '''
Keduanya menyatakan bahwa shalat gha'ib hukumnya tidak boleh, karena syaratnya shalat jenazah, mayat harus hadir ditempat menshalatinya. Sedangkan hadits yang menceritakan "Nabi pernah menshalati Raja Najasyi padahal jenazahnya tidak hadir", merupakan khusûsiah (ketertentuan) bagi Nabi. Sedangkan Imam Hanafi dan Imam Mâliki memperbolehkan menshalati jenazah  di atas kubur (gha'ib) terhadap mayat yang belum dishalati dan terlanjur telah dikubur adalah karena dalam kondisi terpaksa (dlarurat).
      '''),
      Entry('Versi Imam Syâfi\'i dan Imam Hambali', content: '''
  Keduanya menyatakan bahwa shalat gha'ib diperbolehkan dengan syarat jenazah yang hendak dishalati berada di luar wilayah (desa atau kota) mushalli, meskipun jaraknya dekat. Tendensi pernyataan ini adalah hadits yang diriwayatkan ImamBukhori Muslim :
  رَوَى أَبُوْهُرَيْرَةَ اَنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَعَى النَّجَاشِيَّ لِأَصْحَابِهِ يَوْمَ مَاتَ وَخَرَجَ بِهِمْ اِلَى الْمُصَلِّى وَصَفَّ بِهِمْ وَكَبَّّرَ أَرْبَعًا  (متفق عليه)
  Artinya: Abu Hurairah meriwayatkan: “Sesungguhnya Nabi dan para sahabatnya keluar ke musholla untuk menshalati Raja Najasyi (gha'ib), Beliau menata barisan Sahabatnya dan membaca takbir empat kali”. (HR. Bukhori-Muslim)
      '''),
    ]),
    Entry('Mengulangi shalat jenazah', children: [
      Entry('Versi Imam Hananfi dan Imam Mâliki', content: '''
Keduanya berpendapat bahwa mengulangi shalat jenazah hukumnya di perinici menjdi dua, yaitu :

1.      Makruh, apabila shalat jenazah yang pertama dilakukan secara berjamaah;
2.      Sunah, apabila shalat jenazah yang pertama dilakukan sendiri (tidak berjamaah).
      '''),
      Entry('Versi Imam Syâfi\'i dan Imam Hambali', content: '''
Keduanya berpendapat menshalati jenazah yang telah dishalati hukumnya sunah apabila mushalli (orang yang shalat) belum mengikuti shalat yang pertama, baik shalat yang pertama dilakukan dengan jama'ah atau tidak, dan jenazahnya belum di kubur.
      '''),
    ]),
    Entry('Menshalati orang kafir (non Muslim)', content: '''
Semua Ulama sepakat bahwa menshalati jenazahnya orang kafir hukumnya haram dan tidak sah, karena berdasarkan firman Allah surat At Taubah : 84 :

قَالَ اللهُ تَعَالَى وَلَا تُصَلِّ عَلَى أَحَدٍ مِنْهُمْ مَاتَ أَبَدًا وَلَا تَقُمْ عَلَى قَبْرِهِ إِنَّهُمْ كَفَرُوا بِاللَّهِ وَرَسُولِهِ وَمَاتُوا وَهُمْ فَاسِقُونَ    (التوبة : 84)

Artinya: Allah berfirman “Janganlah kamu menshalati (jenazah) seorang yang mati diantara mereka, dan janganlah kamu berdiri (mendo’akan) di kuburnya. Sesungguhnya mereka telah kafir kepada Allah dan Rasul-Nya dan mereka mati dalam keadaan fasik. (QS. At Taubah : 84)

Dan firman Allah surat At Taubah : 113 :

قَالَ اللهُ تَعَالَى مَا كَانَ لِلنَّبِيِّ وَالَّذِينَ آَمَنُوا أَنْ يَسْتَغْفِرُوا لِلْمُشْرِكِينَ وَلَوْ كَانُوا أُولِي قُرْبَى   (التوبة : 113)

Artinya: Allah berfirman "Tidak sepantasnya bagi Nabi dan orang-orang yang beriman untuk memintakan ampunan (kepada Allah) bagi orang-orang musyrik (kafir) meski ada hubungan kerabat”. (QS. At Taubah : 113)
      '''),
    Entry('Memindahkan jenazah', children: [
      Entry('Versi Imam Hanafi', content: '''
Boleh memindahkan jenazah dari daerah tempat meninggalnya dengan dua syarat :

1.	Sebelum dikubur, atau setelah dikubur tapi di tanah milik orang lain dan pemilik tanah meminta supaya mayatnya diambil;
2.	Jenazahnya belum berubah, seperti bau busuk.
      '''),
      Entry('Versi Imam Maliki', content: '''
Boleh memindahkan jenazah dari daerah tempat meninggalnya sebelum dikubur atau setelahnya dengan tiga syarat :

1.	Jenazah belum rontok dan proses pemindahan tidak mengakibatkan rontoknya sebagian anggotanya;
2.	Tidak merusak kehormatan jenazah, seperti dipindah dengan cara yang tidak manusiawi;
3.	pemindahannya karena unsur maslahah (kebaikan), seperti longsornya tanah atau dikumpulkan dengan makam keluarganya.
      '''),
      Entry('Versi Imam Syâfi\'i', content: '''
Memindah jenazah dari daerah tempat ia meninggal hukumnya sebagai berikut :

  1.      Sebelum dikubur : haram, meskipun tidak berubah seperti bau kecuali bau yang sudah menjadi watak mayat tersebut dan tidak berubah dari bau tersebut dan meskipun sudah dimandikan, dikafani, dan dishalati.
  2.      Setelah dikubur : haram, kecuali dlarurat, seperti dikubur di tanah milik orang lain yang tidak diizini pemiliknya.
      '''),
      Entry('Versi Imam Hambali', content: '''
Memindahkan jenazah dari daerah tempatnya meninggal hukumnya boleh secara mutlak (sebelum atau sesudah dikubur) dengan syarat:

1.	Dipindahkan karena ada maslahah (tujuan baik), seperti dipindahkan di daerah pekuburan orang-orang Shaleh;
2.	Belum berubah, seperti bau busuk.
      '''),
    ]),
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
                  // SUBTITLE MENYOLATKAN
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Menyolatkan",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )),
                  )
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
