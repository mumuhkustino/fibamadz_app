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
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('', content: '''
Pengertian Tayamum secara lughat (etimologi) yaitu menyengaja, sedangkan secara syara' (terminologi) adalah mendatangkan debu kewajah dan dua tangan dengan syarat dan rukun tertentu. Sedangkan dasar tayamum adalah firman Allah surat Al Mâ-idah : 6 :

قَالَ اللهُ تَعَالَى وَإِنْ كُنْتُمْ مَرْضَى أَوْ عَلَى سَفَرٍ أَوْ جَاءَ أَحَدٌ مِنْكُمْ مِنَ الْغَائِطِ أَوْ لاَمَسْتُمُ النِّسَاءَ فَلَمْ تَجِدُوا مَاءً فَتَيَمَّمُوا صَعِيدًا طَيِّبًا فَامْسَحُوا بِوُجُوهِكُمْ وَأَيْدِيكُمْ       (المائدة : 6)

Artinya: Allah berfirman "Kalau kamu sedang sakit atau ketika bepergian atau dari jamban atau menyentuh perempuan, lalu kamu tidak menemukan air, maka tayamumlah dengan debu yang suci, kemudian usaplah wajah dan tangan kamu (dengan debu tersebut)"                 (QS. Al Mâ-idah : 6)

Dan berdasarkan hadits Nabi yang diriwayatkan oleh Imam Muslim :

قَالَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ جُعِلَتْ لَنَا الأَرْضُ كُلُّهَا مَسْجِدًا وَتُرْبَتُهَا طَهُوْرًا     (رواه مسلم) 

Artinya: Nabi bersabda "Bumi dijadikan untuk-Ku sebagai masjid dan debunya dapat mensucikan".               (HR. Muslim)

Tayamum merupakan pengganti wudlu atau mandi ketika seseorang dalam keadaan udzur, baik udzurnya dari segi hissi (kasat mata), seperti tidak ada air ketika hendak wudlu atau mandi, atau udzur  syar'i, seperti sakit yang menurut prediksi dokter akan bertambah parah atau semakin lama sembuhnya atau berbahaya bila terkena air.'''),
    Entry('Hal-hal yang memperbolehkan tayamum', children: [
      Entry('Versi Imam Hanafi', content: '''
1.      Tidak ada air;
2.      Adanya udzur, seperti sakit atau lainnya.
      '''),
      Entry('Versi Imam Mâliki', content: '''
1.      Tidak ada air;
2.      Adanya udzur, seperti sakit atau yang lainnya;
3.      Ada air sedikit tapi untuk minum hewan, meskipun anjing.
      '''),
      Entry('Versi Imam Syâfi\'i', content: '''
1.      Tidak ada air;
2.      Ada air sedikit untuk minum hewan yang dimulyakan syara' seperti kambing;
3.      Tidak bisa menggunakan air karena sakit.
      '''),
      Entry('Versi Imam Hambali', content: '''
1.      Tidak ada air;
2.      Ada udzur, sakit atau yang lainnya;
3.      Mencari air setelah masuknya waktu shalat dan tidak menemukan.
      '''),
    ]),
    Entry('Rukun-rukun tayamun', children: [
      Entry('Versi Imam Hanafi', content: '''
1.      Niat ketika mengusap wajah;
2.      Mengusap wajah sampai rata;
3.      Mengusap kedua tangan sampai siku-siku.

Imam Hanafi berpendapat bahwa semua jenis yang termasuk bagian bumi, seperti : debu, pasir, batu atau lainnya dapat digunakan tayamum. Beliau juga mewajibkan niat di dalam tayamum, karena dzatiyah debu ('ain al-turâb) tidak dapat mensucikan, sehingga butuh penguat yaitu niat. Beda halnya dengan air, menurut Imam Hanafi, bersuci menggunakan air tidak perlu niat, karena dzatnya air bisa mensucikan, sehingga tidak perlu tambahan niat. Namun sebagian Ulama Hanafiyah, yaitu Imam Zufar berpendapat bahwa tayamum tidak harus niat, karena tayamum merupakan pengganti wudlu, padahal antara pengganti dengan yang  diganti tidak boleh berbeda, maka kalau wudlu tidak harus niat, tayamum pun sama. Kedua pendapat tersebut sama-sama mewajibkan mengusap wajah dan dua tangan, karena mereka bertendensi pada hadits yang diriwayatkan Imam Hâkim dan Dâruqutni :

اِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ التَّيَمُّمُ ضَرْبَتَانِ ضَرْبَةٌ لِلْوَجْهِ وَضَرْبَةٌ لِلْيَدَيْنِ     (رواه الحاكم والدارقطني)

Artinya: Nabi bersabda  "Tayamum adalah dua pengambilan debu, pengambilan pertama untuk mengusap muka dan pengambilan kedua untuk mengusap kedua tangan". (HR. Hâkim dan Dâruqutni)
      '''),
      Entry('Versi Imam Mâliki', content: '''
1.      Niat ketika mengusap wajah;
2.      Mengusap muka sampai rata;
3.      Mengusap telapak tangan sampai pergelangan tangan;
4.      Mualah (terus menerus).
      '''),
      Entry('Versi Imam Syâfi\'i', content: '''
1.      Niat saat mengambil debu sampai mengusap sebagian muka;
2.      Mengusap wajah sampai rata;
3.      Mengusap dua tangan sampai siku-siku;
4.      Tartib (mendahulukan anggota yang seharusnya diawal dan mengakhirkan anggota yang seharusnya akhir).
      '''),
      Entry('Versi Imam Hambali', content: '''
1.      Niat ketika mengusap muka;
2.      Mengusap muka sampai rata;
3.      Mengusap tangan sampai pergelangan tangan.

Imam Hambali sependapat dengan Imam Syâfi'i dan Imam Mâliki, yaitu satu tayamum hanya dapat digunakan untuk satu shalat fardlu, dan tidak boleh diniati rof' al-hadats (menghilangkan hadats). Namun sebagian  Ulama madzhab Hambali menyatakan kalau tayamum boleh diniati rof' al-hadats (menghilangkan hadats), karena tayamum merupakan pengganti wudlu dan memiliki konsekuensi hukum yang sama dengan wudlu, yaitu dapat menghilangkan hadats dan satu tayamum dapat digunakan untuk melakukan beberapa shalat fardlu. Kendati Imam Hambali ada kesamaan pendapat dengan Imam Syâfi'i dan Imam Mâliki dalam hal ini, tetapi Beliau hanya mengharuskan mengusap kedua tangan sampai pergelangan tangan saja sama dengan Mâliki, berbeda dengan Syâfi'i dalam permasalahan ini.
      '''),
    ]),
    Entry('Niat Tayamum', children: [
      Entry('Versi Imam Hanafi', content: '''
Lafadh niat tayamum yaitu :

نَوَيْتُ التَّيَمُّمَ لِرَفْعِ الْحَدَثِ الأَصْغَرِ  /الأَكْبَرِ للهِ تَعَالَى

Artinya: "Saya niat tayamum untuk menghilangkan hadats kecil/besar karena Allah SWT"

Imam Hanafi memperbolehkan tayamum dengan niat menghilangkan hadats (rof' al-hadats), karena tayamum merupakan pengganti wudlu atau mandi, sedangkan wudlu atau mandi bisa menghilangkan hadats, begitu juga tayamum dapat menghilangkan hadats sebagaimana wudlu, maka satu kali tayamum boleh untuk melakukan shalat fardlu berulangkali dan untuk ibadah lainnya, dari hal-hal (ibadah) yang disyaratkan harus suci. Pendapat ini berdasarkan  firman Allah surat Al Mâ-idah ayat : 6 :

قَالَ اللهُ تَعَالَى... فَلَمْ تَجِدُوا مَاءً فَتَيَمَّمُوا صَعِيدًا طَيِّبًا فَامْسَحُوا بِوُجُوهِكُمْ وَأَيْدِيكُمْ  (المائدة : 6)

Artinya : Allah berfirman "Ketika kamu tidak menemukan air, maka tayamumlah dengan debu yang suci dan usaplah wajah dan kedua tangan kamu".          (QS. Al Mâ-idah : 6)

Dan hadits Nabi yang diriwayatkan Imam Muslim :

اِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ جُعِلَتْ لَنَا الأَرْضُ كُلُّهَا مَسْجِدًا وَتُرْبَتُهَا طَهُورًا اَيْ مُطَهِّرًا  (رواه مسلم)

Artinya : Nabi bersabda  "Bumi dijadikan untuk saya sebagai masjid dan debunya bisa mensucikan" (HR. Muslim)
      '''),
      Entry('Versi Imam Mâliki', content: '''
Lafadh niat tayamum yaitu :

نَوَيْتُ التَيَمُّمَ ِلاسْتِبَاحَةِ الصَّلاَةِ الْمَفْرُوْضَةِ للهِ تَعَالَى

Artinya:" Saya niat tayamum supaya diperbolehkan shalat fardlu, karena Allah SWT".

Imam Mâliki berpendapat bahwa tayamum tidak bisa menghilangkan hadats sehingga tidak boleh diniati rof' al-hadats  (menghilangkan hadats), dan tayamum satu kali hanya dapat digunakan shalat fardlu satu kali dan shalat sunah beberapa kali.

Beliau menyatakan bahwa batas tangan yang wajib diusap dalam tayamum hanya sampai pergelangan tangan. Pendapat ini berdasarkan  hadits Nabi yang di riwayatkan oleh Imam Bukhôri dan Muslim :

إِنَّ عَمَّارَ إبْنَ يَاسِرٍ قَالَ لِعُمَرَ إبْنِ الْخَطَّابِ رَضِيَ اللهُ عَنْهُمَا أَمَا تَذْكُرُ يَا أَمِيْرَ الْمُؤْمِنِينَ إِذْ أَنَا وَأَنْتَ فِي سَرِيَّةٍ فَأَجْنَبْنَا فَلَمْ نــَجِدِ الْمَاءَ فَأَمَّا أَنْتَ فَلَمْ تُصَلِّ وَأَمَّا أَنَا فَتَمَرَّغْتُ فِي التُّرَابِ كَمَا تَتَـمَرَّغ ُ الدَابَّةُ فَصَلَّيْتُ فَأَتَيْنَا رَسُولَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَقَالَ إِنَّمَا كَانَ يَكْفِيْكَ ضَرْبَةٌ لِلْوَجْهِ وَضَرْبَةٌ لِلْيَدَيْنِ  (رواه بخاري ومسلم)

Artinya : Suatu ketika sahabat Amar bin Yasir berkata terhadap Umar bin Khotob : "Ingatlah wahai pemimpin umat mu'min, ketika kita berada di golongannya prajurit, kita junûb dan tidak menemukan air, lalu kamu tidak melaksanakan shalat, dan aku berguling di debu sebagaimana bergulingnya hewan, kemudian aku shalat", Lalu keduanya datang kepada Nabi untuk menyampaikan permasalahannya, Nabi bersabda "Tayamum cukup dengan dua pengambilan debu, pengambilan pertama untuk mengusap wajah dan pengambilan kedua untuk mengusap tangan sampai pergelangan tangan". (HR. Bukhôri-Muslim)

Menurut konsep Imam Mâliki, muwâlah (terus menerus tanpa ada pemisah lama) antara mengusap anggota satu dengan yang lain, dan antara tayamum dengan shalat, merupakan rukun tayamum. Pendapat ini berdasarkan  firman Allah surat Al Mâ-idah ayat : 6 :

... فَلَمْ تَجِدُوا مَاءً فَتَيَمَّمُوا صَعِيدًا طَيِّبًا فَامْسَحُوا بِوُجُوهِكُمْ وَأَيْدِيكُمْ  (المائدة: 6)

Beliau lebih memfokuskan pada lafadh فتيمموا  yang berupa sîghot amr (kalimat perintah), dan konsekuensi dari sighot amr harus dilaksanakan segera (muwâlah).
      '''),
      Entry('Versi Imam Syâfi\'i', content: '''
Lafadh niat tayamum yaitu :

نَوَيْتُ التَّيَمُّمَ لاِسْتِبَاحَةِ الصَّلاَةِ الْمَفْرُوْضَةِ للهِ تَعَالَى

Artinya: "Saya niat tayamum supaya diperbolehkan melakukan shalat, karena Allah SWT ".

Imam Syâfi'i tidak memperbolehkan tayamum diniati rof' al-hadats (menghilangkan hadats), sebab tayamum tidak dapat menghilangkan hadats hanya saja lantaran tayamum diperbolehkan melakukan hal – hal yang sebelumnya dilarang seperti shalat, dan satu tayamum hanya dapat digunakan untuk satu shalat fardlu dan beberapa shalat sunah. Pendapat ini senada dengan pendapatnya Imam Mâlik.

Niat tayamum harus bersamaan dengan memulai menempelkan tangan pada debu sampai mengusap muka, meskipun ketika mengangkat tangan tidak ada niatnya, hal ini disebabkan karena dalam tayamum terdapat dua permulaan, yaitu :

- Permulaan nisbi (permulaan yang disandarkan pada permulaan hakiki), yaitu ketika mulai memegang debu (naql al-turâb),
- Permulaan hakîkat (permulaan yang sebenarnya), yaitu ketika mengusap wajah.

sehingga niat tayamum tadi disyaratkan harus bersamaan dengan juz (bagian) dari dua permulaan di atas.
      '''),
    ]),
    Entry('Hal-hal yang membatalkan tayamum', content: '''
Secara umum madzhab empat (Hanafi, Mâliki, Syâfi'i, Hambali) tidak ada perbedaan pendapat pada penyebab batalnya tayamum, yaitu setiap hal yang membatalkan wudlu juga membatalkan tayamum, karena tayamum merupakan ganti dari wudlu. Namum diantara mereka terdapat sedikit perbedaan pendapat, diantaranya : Imam Hambali menyatakan bahwa salah satu penyebab batalnya tayamum adalah melihat air secara mutlak (sebelum shalat, sedang shalat, sesudah shalat), tapi menurut Imam Syâfi'i diperinci : Bila shalat yang dilakukan dengan tayamum tidak wajib diulangi ketika ada air, maka tayamum tidak batal dengan sebab melihat air secara mutlak (sebelum, sedang, maupun sesudah shalat), seperti tayamum karena sakit, tapi bila shalat yang dilakukan wajib diulangi ketika ada air, maka jika melihat air sebelum atau sedang shalat, tayamumnya batal.
      '''),
    Entry('Hal-hal yang diharamkan sebab hadats kecil', content: '''
1.      Shalat (fardlu dan sunah);
2.      Thawâf (fardlu dan sunah);
3.      Menyentuh atau membawa Al Qur’an.

Keterangan :

  Shalat

Orang yang berhadats kecil (tidak punya wudlu) diharamkan melakukan shalat, karena berdasarkan hadits yang diriwayatkan Imam Bukhôri dan Muslim yang berbunyi :

قَالَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ لاَ يَقْبَلُ اللهُ صَلاَةَ أَحَدِكُمْ إِذَا أَحْدَثَ حَتَّى يَتَوَضَّأَ  (رواه البخاري ومسلم)

Artinya: Nabi bersabda  "Allah tidak akan menerima shalatnya seseorang yang berhadats sehingga ia berwudlu". (HR.  Bukhôri-Muslim)

Redaksi hadits tersebut, memungkinkan untuk diartikan dengan dua kefahaman, yaitu :

1.      Shalatnya orang yang hadats itu tetap sah, namun tidak akan diterima
2.      Shalatnya orang yang hadats itu tidak sah, sehingga tidak akan diterima

Dalam hal ini, Ulama empat madzhab sepakat (ijma’) bahwa arti dari hadits tersebut adalah shalatnya seseorang yang berhadats tidak sah, yang konsekuensi shalatnya juga tidak akan diterima.

  Thawâf

Thawâf harus dilakukan dalam kondisi suci (tidak hadats), tendensi ketentuan ini adalah hadits yang diriwayatkan Imam Muslim yang berbunyi :

اِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ لِتَأْخُذُوا عَنَِّي مَنَاسِكَكُمْ  (رواه مسلم)

Artinya: Nabi bersabda "Lakukanlah ibadah kamu sesuai dengan tata cara yang aku lakukan".  (HR.  Bukhôri-Muslim)

Dari keterangan hadits tersebut di atas segala bentuk ibadah yang kita lakukan seperti wudlu, shalat, Thawâf dan lainnya harus sesuai dengan yang dilakukan Nabi, sehingga Thawâf harus dilaksanakan dalam kondisi suci (tidak hadats), karena Nabi selalu melaksanakan Thawâf dalam kondisi suci.

Dan berdasarkan hadits Nabi yang diriwayatkan oleh Imam Hâkim :

اِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ الطَّوَافُ بِمَنْزِلَةِ الصَّلاَةِ إِلاَّ أَنَّ اللهَ قَدْ أَحَلَّ فِيْهِ الْمَنْطِقَ فَمَنْ نَطَقَ فَلاَ يَنْطِقُ إِلاَّ بِخَيْرٍ  (رواه الحاكم)

Artinya: Nabi bersabda  "Thawâf sama dengan shalat, hanya saja Allah memperbolehkan berbicara dalam Thawâf, barang siapa yang hendak bicara dalam Thawâf maka ucapkanlah kata-kata yang baik". (HR. Hâkim)
      '''),
  ];
  // DATA YANG BERUBAH
  final List<Entry> dataText = <Entry>[
    Entry('', content: '''
Pengertian Tayamum secara lughat (etimologi) yaitu menyengaja, sedangkan secara syara' (terminologi) adalah mendatangkan debu kewajah dan dua tangan dengan syarat dan rukun tertentu. Sedangkan dasar tayamum adalah firman Allah surat Al Mâ-idah : 6 :

قَالَ اللهُ تَعَالَى وَإِنْ كُنْتُمْ مَرْضَى أَوْ عَلَى سَفَرٍ أَوْ جَاءَ أَحَدٌ مِنْكُمْ مِنَ الْغَائِطِ أَوْ لاَمَسْتُمُ النِّسَاءَ فَلَمْ تَجِدُوا مَاءً فَتَيَمَّمُوا صَعِيدًا طَيِّبًا فَامْسَحُوا بِوُجُوهِكُمْ وَأَيْدِيكُمْ       (المائدة : 6)

Artinya: Allah berfirman "Kalau kamu sedang sakit atau ketika bepergian atau dari jamban atau menyentuh perempuan, lalu kamu tidak menemukan air, maka tayamumlah dengan debu yang suci, kemudian usaplah wajah dan tangan kamu (dengan debu tersebut)"                 (QS. Al Mâ-idah : 6)

Dan berdasarkan hadits Nabi yang diriwayatkan oleh Imam Muslim :

قَالَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ جُعِلَتْ لَنَا الأَرْضُ كُلُّهَا مَسْجِدًا وَتُرْبَتُهَا طَهُوْرًا     (رواه مسلم) 

Artinya: Nabi bersabda "Bumi dijadikan untuk-Ku sebagai masjid dan debunya dapat mensucikan".               (HR. Muslim)

Tayamum merupakan pengganti wudlu atau mandi ketika seseorang dalam keadaan udzur, baik udzurnya dari segi hissi (kasat mata), seperti tidak ada air ketika hendak wudlu atau mandi, atau udzur  syar'i, seperti sakit yang menurut prediksi dokter akan bertambah parah atau semakin lama sembuhnya atau berbahaya bila terkena air.'''),
    Entry('Hal-hal yang memperbolehkan tayamum', children: [
      Entry('Versi Imam Hanafi', content: '''
1.      Tidak ada air;
2.      Adanya udzur, seperti sakit atau lainnya.
      '''),
      Entry('Versi Imam Mâliki', content: '''
1.      Tidak ada air;
2.      Adanya udzur, seperti sakit atau yang lainnya;
3.      Ada air sedikit tapi untuk minum hewan, meskipun anjing.
      '''),
      Entry('Versi Imam Syâfi\'i', content: '''
1.      Tidak ada air;
2.      Ada air sedikit untuk minum hewan yang dimulyakan syara' seperti kambing;
3.      Tidak bisa menggunakan air karena sakit.
      '''),
      Entry('Versi Imam Hambali', content: '''
1.      Tidak ada air;
2.      Ada udzur, sakit atau yang lainnya;
3.      Mencari air setelah masuknya waktu shalat dan tidak menemukan.
      '''),
    ]),
    Entry('Rukun-rukun tayamun', children: [
      Entry('Versi Imam Hanafi', content: '''
1.      Niat ketika mengusap wajah;
2.      Mengusap wajah sampai rata;
3.      Mengusap kedua tangan sampai siku-siku.

Imam Hanafi berpendapat bahwa semua jenis yang termasuk bagian bumi, seperti : debu, pasir, batu atau lainnya dapat digunakan tayamum. Beliau juga mewajibkan niat di dalam tayamum, karena dzatiyah debu ('ain al-turâb) tidak dapat mensucikan, sehingga butuh penguat yaitu niat. Beda halnya dengan air, menurut Imam Hanafi, bersuci menggunakan air tidak perlu niat, karena dzatnya air bisa mensucikan, sehingga tidak perlu tambahan niat. Namun sebagian Ulama Hanafiyah, yaitu Imam Zufar berpendapat bahwa tayamum tidak harus niat, karena tayamum merupakan pengganti wudlu, padahal antara pengganti dengan yang  diganti tidak boleh berbeda, maka kalau wudlu tidak harus niat, tayamum pun sama. Kedua pendapat tersebut sama-sama mewajibkan mengusap wajah dan dua tangan, karena mereka bertendensi pada hadits yang diriwayatkan Imam Hâkim dan Dâruqutni :

اِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ التَّيَمُّمُ ضَرْبَتَانِ ضَرْبَةٌ لِلْوَجْهِ وَضَرْبَةٌ لِلْيَدَيْنِ     (رواه الحاكم والدارقطني)

Artinya: Nabi bersabda  "Tayamum adalah dua pengambilan debu, pengambilan pertama untuk mengusap muka dan pengambilan kedua untuk mengusap kedua tangan". (HR. Hâkim dan Dâruqutni)
      '''),
      Entry('Versi Imam Mâliki', content: '''
1.      Niat ketika mengusap wajah;
2.      Mengusap muka sampai rata;
3.      Mengusap telapak tangan sampai pergelangan tangan;
4.      Mualah (terus menerus).
      '''),
      Entry('Versi Imam Syâfi\'i', content: '''
1.      Niat saat mengambil debu sampai mengusap sebagian muka;
2.      Mengusap wajah sampai rata;
3.      Mengusap dua tangan sampai siku-siku;
4.      Tartib (mendahulukan anggota yang seharusnya diawal dan mengakhirkan anggota yang seharusnya akhir).
      '''),
      Entry('Versi Imam Hambali', content: '''
1.      Niat ketika mengusap muka;
2.      Mengusap muka sampai rata;
3.      Mengusap tangan sampai pergelangan tangan.

Imam Hambali sependapat dengan Imam Syâfi'i dan Imam Mâliki, yaitu satu tayamum hanya dapat digunakan untuk satu shalat fardlu, dan tidak boleh diniati rof' al-hadats (menghilangkan hadats). Namun sebagian  Ulama madzhab Hambali menyatakan kalau tayamum boleh diniati rof' al-hadats (menghilangkan hadats), karena tayamum merupakan pengganti wudlu dan memiliki konsekuensi hukum yang sama dengan wudlu, yaitu dapat menghilangkan hadats dan satu tayamum dapat digunakan untuk melakukan beberapa shalat fardlu. Kendati Imam Hambali ada kesamaan pendapat dengan Imam Syâfi'i dan Imam Mâliki dalam hal ini, tetapi Beliau hanya mengharuskan mengusap kedua tangan sampai pergelangan tangan saja sama dengan Mâliki, berbeda dengan Syâfi'i dalam permasalahan ini.
      '''),
    ]),
    Entry('Niat Tayamum', children: [
      Entry('Versi Imam Hanafi', content: '''
Lafadh niat tayamum yaitu :

نَوَيْتُ التَّيَمُّمَ لِرَفْعِ الْحَدَثِ الأَصْغَرِ  /الأَكْبَرِ للهِ تَعَالَى

Artinya: "Saya niat tayamum untuk menghilangkan hadats kecil/besar karena Allah SWT"

Imam Hanafi memperbolehkan tayamum dengan niat menghilangkan hadats (rof' al-hadats), karena tayamum merupakan pengganti wudlu atau mandi, sedangkan wudlu atau mandi bisa menghilangkan hadats, begitu juga tayamum dapat menghilangkan hadats sebagaimana wudlu, maka satu kali tayamum boleh untuk melakukan shalat fardlu berulangkali dan untuk ibadah lainnya, dari hal-hal (ibadah) yang disyaratkan harus suci. Pendapat ini berdasarkan  firman Allah surat Al Mâ-idah ayat : 6 :

قَالَ اللهُ تَعَالَى... فَلَمْ تَجِدُوا مَاءً فَتَيَمَّمُوا صَعِيدًا طَيِّبًا فَامْسَحُوا بِوُجُوهِكُمْ وَأَيْدِيكُمْ  (المائدة : 6)

Artinya : Allah berfirman "Ketika kamu tidak menemukan air, maka tayamumlah dengan debu yang suci dan usaplah wajah dan kedua tangan kamu".          (QS. Al Mâ-idah : 6)

Dan hadits Nabi yang diriwayatkan Imam Muslim :

اِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ جُعِلَتْ لَنَا الأَرْضُ كُلُّهَا مَسْجِدًا وَتُرْبَتُهَا طَهُورًا اَيْ مُطَهِّرًا  (رواه مسلم)

Artinya : Nabi bersabda  "Bumi dijadikan untuk saya sebagai masjid dan debunya bisa mensucikan" (HR. Muslim)
      '''),
      Entry('Versi Imam Mâliki', content: '''
Lafadh niat tayamum yaitu :

نَوَيْتُ التَيَمُّمَ ِلاسْتِبَاحَةِ الصَّلاَةِ الْمَفْرُوْضَةِ للهِ تَعَالَى

Artinya:" Saya niat tayamum supaya diperbolehkan shalat fardlu, karena Allah SWT".

Imam Mâliki berpendapat bahwa tayamum tidak bisa menghilangkan hadats sehingga tidak boleh diniati rof' al-hadats  (menghilangkan hadats), dan tayamum satu kali hanya dapat digunakan shalat fardlu satu kali dan shalat sunah beberapa kali.

Beliau menyatakan bahwa batas tangan yang wajib diusap dalam tayamum hanya sampai pergelangan tangan. Pendapat ini berdasarkan  hadits Nabi yang di riwayatkan oleh Imam Bukhôri dan Muslim :

إِنَّ عَمَّارَ إبْنَ يَاسِرٍ قَالَ لِعُمَرَ إبْنِ الْخَطَّابِ رَضِيَ اللهُ عَنْهُمَا أَمَا تَذْكُرُ يَا أَمِيْرَ الْمُؤْمِنِينَ إِذْ أَنَا وَأَنْتَ فِي سَرِيَّةٍ فَأَجْنَبْنَا فَلَمْ نــَجِدِ الْمَاءَ فَأَمَّا أَنْتَ فَلَمْ تُصَلِّ وَأَمَّا أَنَا فَتَمَرَّغْتُ فِي التُّرَابِ كَمَا تَتَـمَرَّغ ُ الدَابَّةُ فَصَلَّيْتُ فَأَتَيْنَا رَسُولَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَقَالَ إِنَّمَا كَانَ يَكْفِيْكَ ضَرْبَةٌ لِلْوَجْهِ وَضَرْبَةٌ لِلْيَدَيْنِ  (رواه بخاري ومسلم)

Artinya : Suatu ketika sahabat Amar bin Yasir berkata terhadap Umar bin Khotob : "Ingatlah wahai pemimpin umat mu'min, ketika kita berada di golongannya prajurit, kita junûb dan tidak menemukan air, lalu kamu tidak melaksanakan shalat, dan aku berguling di debu sebagaimana bergulingnya hewan, kemudian aku shalat", Lalu keduanya datang kepada Nabi untuk menyampaikan permasalahannya, Nabi bersabda "Tayamum cukup dengan dua pengambilan debu, pengambilan pertama untuk mengusap wajah dan pengambilan kedua untuk mengusap tangan sampai pergelangan tangan". (HR. Bukhôri-Muslim)

Menurut konsep Imam Mâliki, muwâlah (terus menerus tanpa ada pemisah lama) antara mengusap anggota satu dengan yang lain, dan antara tayamum dengan shalat, merupakan rukun tayamum. Pendapat ini berdasarkan  firman Allah surat Al Mâ-idah ayat : 6 :

... فَلَمْ تَجِدُوا مَاءً فَتَيَمَّمُوا صَعِيدًا طَيِّبًا فَامْسَحُوا بِوُجُوهِكُمْ وَأَيْدِيكُمْ  (المائدة: 6)

Beliau lebih memfokuskan pada lafadh فتيمموا  yang berupa sîghot amr (kalimat perintah), dan konsekuensi dari sighot amr harus dilaksanakan segera (muwâlah).
      '''),
      Entry('Versi Imam Syâfi\'i', content: '''
Lafadh niat tayamum yaitu :

نَوَيْتُ التَّيَمُّمَ لاِسْتِبَاحَةِ الصَّلاَةِ الْمَفْرُوْضَةِ للهِ تَعَالَى

Artinya: "Saya niat tayamum supaya diperbolehkan melakukan shalat, karena Allah SWT ".

Imam Syâfi'i tidak memperbolehkan tayamum diniati rof' al-hadats (menghilangkan hadats), sebab tayamum tidak dapat menghilangkan hadats hanya saja lantaran tayamum diperbolehkan melakukan hal – hal yang sebelumnya dilarang seperti shalat, dan satu tayamum hanya dapat digunakan untuk satu shalat fardlu dan beberapa shalat sunah. Pendapat ini senada dengan pendapatnya Imam Mâlik.

Niat tayamum harus bersamaan dengan memulai menempelkan tangan pada debu sampai mengusap muka, meskipun ketika mengangkat tangan tidak ada niatnya, hal ini disebabkan karena dalam tayamum terdapat dua permulaan, yaitu :

- Permulaan nisbi (permulaan yang disandarkan pada permulaan hakiki), yaitu ketika mulai memegang debu (naql al-turâb),
- Permulaan hakîkat (permulaan yang sebenarnya), yaitu ketika mengusap wajah.

sehingga niat tayamum tadi disyaratkan harus bersamaan dengan juz (bagian) dari dua permulaan di atas.
      '''),
    ]),
    Entry('Hal-hal yang membatalkan tayamum', content: '''
Secara umum madzhab empat (Hanafi, Mâliki, Syâfi'i, Hambali) tidak ada perbedaan pendapat pada penyebab batalnya tayamum, yaitu setiap hal yang membatalkan wudlu juga membatalkan tayamum, karena tayamum merupakan ganti dari wudlu. Namum diantara mereka terdapat sedikit perbedaan pendapat, diantaranya : Imam Hambali menyatakan bahwa salah satu penyebab batalnya tayamum adalah melihat air secara mutlak (sebelum shalat, sedang shalat, sesudah shalat), tapi menurut Imam Syâfi'i diperinci : Bila shalat yang dilakukan dengan tayamum tidak wajib diulangi ketika ada air, maka tayamum tidak batal dengan sebab melihat air secara mutlak (sebelum, sedang, maupun sesudah shalat), seperti tayamum karena sakit, tapi bila shalat yang dilakukan wajib diulangi ketika ada air, maka jika melihat air sebelum atau sedang shalat, tayamumnya batal.
      '''),
    Entry('Hal-hal yang diharamkan sebab hadats kecil', content: '''
1.      Shalat (fardlu dan sunah);
2.      Thawâf (fardlu dan sunah);
3.      Menyentuh atau membawa Al Qur’an.

Keterangan :

  Shalat

Orang yang berhadats kecil (tidak punya wudlu) diharamkan melakukan shalat, karena berdasarkan hadits yang diriwayatkan Imam Bukhôri dan Muslim yang berbunyi :

قَالَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ لاَ يَقْبَلُ اللهُ صَلاَةَ أَحَدِكُمْ إِذَا أَحْدَثَ حَتَّى يَتَوَضَّأَ  (رواه البخاري ومسلم)

Artinya: Nabi bersabda  "Allah tidak akan menerima shalatnya seseorang yang berhadats sehingga ia berwudlu". (HR.  Bukhôri-Muslim)

Redaksi hadits tersebut, memungkinkan untuk diartikan dengan dua kefahaman, yaitu :

1.      Shalatnya orang yang hadats itu tetap sah, namun tidak akan diterima
2.      Shalatnya orang yang hadats itu tidak sah, sehingga tidak akan diterima

Dalam hal ini, Ulama empat madzhab sepakat (ijma’) bahwa arti dari hadits tersebut adalah shalatnya seseorang yang berhadats tidak sah, yang konsekuensi shalatnya juga tidak akan diterima.

  Thawâf

Thawâf harus dilakukan dalam kondisi suci (tidak hadats), tendensi ketentuan ini adalah hadits yang diriwayatkan Imam Muslim yang berbunyi :

اِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ لِتَأْخُذُوا عَنَِّي مَنَاسِكَكُمْ  (رواه مسلم)

Artinya: Nabi bersabda "Lakukanlah ibadah kamu sesuai dengan tata cara yang aku lakukan".  (HR.  Bukhôri-Muslim)

Dari keterangan hadits tersebut di atas segala bentuk ibadah yang kita lakukan seperti wudlu, shalat, Thawâf dan lainnya harus sesuai dengan yang dilakukan Nabi, sehingga Thawâf harus dilaksanakan dalam kondisi suci (tidak hadats), karena Nabi selalu melaksanakan Thawâf dalam kondisi suci.

Dan berdasarkan hadits Nabi yang diriwayatkan oleh Imam Hâkim :

اِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ الطَّوَافُ بِمَنْزِلَةِ الصَّلاَةِ إِلاَّ أَنَّ اللهَ قَدْ أَحَلَّ فِيْهِ الْمَنْطِقَ فَمَنْ نَطَقَ فَلاَ يَنْطِقُ إِلاَّ بِخَيْرٍ  (رواه الحاكم)

Artinya: Nabi bersabda  "Thawâf sama dengan shalat, hanya saja Allah memperbolehkan berbicara dalam Thawâf, barang siapa yang hendak bicara dalam Thawâf maka ucapkanlah kata-kata yang baik". (HR. Hâkim)
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
                  // SUBTITLE TAYAMUM
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Tayamum",
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
