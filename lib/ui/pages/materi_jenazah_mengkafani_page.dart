part of 'pages.dart';

class MateriJenazahMengkafaniPage extends StatefulWidget {
  @override
  _MateriJenazahMengkafaniPageState createState() => _MateriJenazahMengkafaniPageState();
}

class _MateriJenazahMengkafaniPageState extends State<MateriJenazahMengkafaniPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText = '';
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('', content: '''Jenazah harus dikafani sebelum dishalati, dan batas minimal mengkafani jenazah, baik laki-laki atau perempuan adalah satu lapis yang dapat menutupi semua anggota badan. Biaya pengkafanan jenazah  diambil dari hartanya sendiri, bila tidak punya maka diambilkan dari hartanya orang yang menafkahinya ketika ia masih hidup, kalau tidak ada maka diambilkan dari baitul mâl (kas desa), dan jika tidak ada baitul mâl, maka biaya pengkafanan ditanggung  oleh orang-orang kaya daerah setempat. Urutan tersebut tidak tertentu dalam biaya kafan, tapi juga biaya memandikan, menshalati dan mengubur jenazah. Ulama Madzâhib al Arba'ah berbeda pendapat tentang jenis kain kafan yang diperbolehkan bagi jenazah, pendapat-pendapat mereka adalah :'''),
    Entry('Versi Imam Hanafi', children: [
      Entry('', content: '''Beliau berpendapat bahwa semua jenis kain yang diperbolehkan dipakai ketika hidupnya jenazah, boleh digunakan sebagai kafannya. Kain yang paling utama sebagai kafan adalah kain yang berwarna putih, baik baru ataupun lama.'''),
      Entry('Hukum kafan dibagi menjadi tiga : ', content: '''
1.      Kafan sunah;
2.      Kafan kafayah;
3.      Kafan dlarurat.

Ketiga hukum ini berlaku dalam mengkafani jenazah laki-laki dan perempuan.
      '''),
      Entry('Kafan sunah', content: '''
Jenazah dikafani dengan izâr (kain penutup badan), gamis (baju kurung) dan kain satu lapis. Ukuran masing-masing adalah :

•     Izâr (kain penutup badan): Mulai dari kepala sampai telapak kaki;
•     Gamis (baju kurung): Mulai dari leher bawah sampai telapak kaki;
•     Kain satu lapis: Mulai dari kepala sampai telapak kaki.
      '''),
      Entry('Kafan kafayah', content: '''
•     Jenazah hanya dikafani dengan izâr atau hanya dengan satu lapis, tanpa disertai dengan gamis.
      '''),
      Entry('Kafan dlarurat ', content: '''
•     Jenazah dikafani dengan kafan yang hanya menutupi auratnya saja.

Imam Hanafi berpendapat apabila ada orang meninggal dan ia tidak mempunyai harta untuk biaya pengkafanannya, dan tidak ditemukan orang lain yang menanggung biaya tersebut, maka setelah jenazahnya dimandikan, langsung dikubur, sedangkan waktu menshalatinya ketika jenazah telah sempurna dikubur.
      '''),
    ]),
    Entry('Versi Imam Mâliki', children: [
      Entry('', content: '''Beliau berpendapat bahwa semua jenis kain yang boleh dipakai ketika masa hidupnya jenazah boleh digunakan sebagai kafannya. Kain yang paling utama sebagi kafan adalah kain yang berwarna putih. Kriteria pengkafanan yang afdlal (utama) bagi jenazah laki-laki berbeda dengan kriteria yang terdapat pada jenazah perempuan. Perbedaan kriteria tersebut adalah :'''),
      Entry('Laki-laki', content: '''
Cara yang lebih utama dalam mengkafani jenazah laki-laki adalah mengkafani jenazah tersebut dengan memakaikan lima hal, yaitu :

- Gamis (baju kurung) yang ada lengannya;
- Izâr (kain penutup badan);
- Sorban (ukurannya menyesuaikan jenazah);
- Dua lapis kain yang masing-masing dapat menutupi seluruh badan jenazah.
      '''),
      Entry('Perempuan', content: '''
Cara yang lebih utama dalam mengkafani jenazah perempuan adalah mengkafani jenazah tersebut dengan memakaikan tujuh hal, yaitu :

- Gamis (baju kurung) yang ada lengannya;
- Izâr (kain penutup badan);
- Kerudung;
- Empat lapis kain yang setiap lapisannya dapat menutupi seluruh badan jenazah.

Sedangkan batas minimal kafan yang telah dianggap cukup dalam mengkafani adalah satu lapis kain yang dapat menutupi badan jenazah.
      '''),
    ]),
    Entry('Versi Imam Syâfi\'i dan Imam Hambali', children: [
      Entry('', content: '''Imam Syâfi'i dan Imam Hambali berpendapat bahwa semua jenis kain yang diperbolehkan dipakai ketika masa hidupnya jenazah, boleh digunakan sebagai kafannya. Kain yang paling utama sebagai kafan adalah kain yang berwarna putih, hanya saja Imam Syâfi'i lebih mengutamakan kain yang bukan baru. Kriteria pengkafanan yang afdlal (utama) bagi jenazah laki-laki berbeda dengan kriteria yang terdapat pada jenazah perempuan. Perbedaan kriteria tersebut adalah :'''),
      Entry('Laki-laki', content: '''
Cara yang lebih utama dalam mengkafani jenazah laki-laki adalah dengan sebanyak tiga lapis kain yang setiap lapisnya dapat menutupi semua anggota badan jenazah. Dan menurut Imam Syâfi'i boleh ditambahi dengan gamis (baju kurung) dan sorban, namun Imam Hambali menghukumi makruh dalam menambahkan keduanya.
      '''),
      Entry('Perempuan', content: '''
Cara yang lebih utama dalam mengkafani jenazah perempuan adalah mengkafani jenazah tersebut dengan memakaikan lima hal, yaitu :

- Gamis (baju kurung) yang ada lengannya;
- Izâr (kain penutup badan);
- Kerudung;
- Dua lapis yang setiap lapisnya dapat menutupi seluruh badan jenazah.

Untuk batas minimal pemakaian kafan yang telah dianggap cukup menurut Imam Syâfi'i dan Hambali adalah satu lapis yang dapat menutupi seluruh badan jenazah.
      '''),
    ]),
    Entry('Hal-hal yang berhubungan dengan prosesi mengkafani jenazah', children: [
      Entry('Jenazah Laki-laki', content: '''
Ulama Madzâhib al Arba'ah berpendapat bahwa jenazah laki-laki sunah dikafani dengan tiga lapis. Tendensi kesunahan ini adalah hadits Nabi yang diriwayatkan oleh Imam Bukhôri-Muslim :

عَنْ عَائِشَةَ أَنَّهَا قَالَتْ كُفِنَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فِى ثَلاَثَةِ أَثْوَابٍ بِيْضٍ سَحُوْلِيَّةٍ مِنْ كُرْسُفٍ لَيْسَ فِيْهَا قَمِيْصٌ وَلاَ عَمَامَةٌ  (رواه اليخارى ومسلم)

Artinya: Diriwayatkan dari ‘Aisyah, Beliau berkata: "Nabi dikafani dengan tiga baju (kafan) berwarna putih buatan desa Sahul, wilayah Yaman, dan tiga kafan tadi tidak disertai gamis dan sorban”.  (HR. Bukhori-Muslim)

Imam Hanafi menambah alasan lain, yaitu Nabi dikafani tiga lapis karena semasa hidupnya Beliau gemar mengenakan tiga lapis pakaian.

Kandungan hadits tersebut menerangkan bahwa pada saat Rasulullah SAW wafat, Beliau hanya dikafani dengan tiga lapis kafan, tanpa disertai baju kurung dan sorban. Sehingga dari hadits ini, Ulama berbeda pendapat mengenai penambahan sorban dan baju kurung dari tiga lapis kafan, pendapat Mereka yaitu :

  Imam Hanafi : Penambahan gamis (bajukurung) dan sorban hukumnya kurang baik.
  Imam Mâliki : Penambahan gamis (baju kurung) dan sorban hukumnya baik (afdlal);
  Imam Syâfi'i :  Penambahan gamis (baju kurung) dan sorban hukumnya boleh (jawaz);
  Imam Hambali: Penambahan gamis (baju kurung),  sorban atau lainnya hukumnya makruh.
      '''),
      Entry('Jenazah  Perempuan', content: '''
Jenazah  perempuan sunah dikafani dengan lima lapis (izâr, gamis, kerudung dan dua lapis kain). Dalil yang dijadikan  pijakan dalam hukum ini adalah hadits Nabi yang diriwayatkan oleh Imam Abu Dâwud :

عَنْ أُمِّ عَطِيَةَ أَنَّهَا قَالَتْ لَمَّا غَسَلْنَا إِبْنَةَ رَسُولِ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَانَ جَالِسًا عَلَى الْبَابِ يُنَاوِلُنَا الأَكْفَانَ وَاحِدًا وَاحِدًا فَنَاوَلْنَا إِزَارًا وَدِرْعًا وَخِمَارًا وَثَوْبَيْنِ      (رواه أبوداود)

Artinya: Diriwayatkan dari Ummi ‘Atiyyah, Ia berkata: "Ketika saya memandikan putri Nabi (Ummi Kultsum), Beliau duduk di pintu sembari menyodorkan kafan satu persatu, dan Beliau memberikan izâr (kain penutup badan), baju kurung, kerudung dan dua kain”. (HR. Abu Dâwud)
      '''),
    ]),
    Entry('Orang yang meninggal dalam keadaan ihrom', children: [
      Entry('', content: '''Ada beberapa versi dari para Ulama mengenai tata cara mentajhiz (merawat) jenazahnya orang yang meninggal dunia dalam keadaan ihrom, diantaranya :'''),
      Entry('Versi Imam Hanafi dan Imam Maliki', content: '''
Cara merawat jenazah orang yang mati dalam keadaan ihrom sama dengan jenazahnya orang yang meninggal biasa (tidak ihrom). Referensi yang dijadikan pijakan pernyataan ini adalah hadits yang diriwayatkan Imam Bukhôri-Muslim :

قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ إِذَا مَاتَ ابْنُ آدَمَ انْقَطَعَ عَمَلُهُ إِلاَّ مِنْ ثَلاَثٍ, صَدَقَةٍ جَارِيَةٍ أَوْ عِلْمٍ يُنْتَفَعُ بِهِ أَوْ وَلَدٍ صَالِحٍ يَدْعُو لَهُ ( متفق عليه)  

Artinya : Nabi bersabda : "Ketika anak Adam meninggal dunia, maka terputuslah semua amalnya kecuali tiga hal : Sodaqoh jariyah, ilmu yang bermanfaat dan keturunan yang mendo’akan kepada kedua orang tuanya”. (HR. Bukhôri-Muslim)

Dari redaksi hadits di atas, dapat disimpulkan bahwa dengan meninggal dunia, manusia terputus dari semua amal ibadahnya, termasuk ihrom (haji dan umroh), karena seandainya hukum ihrom tidak putus, niscaya  kita wajib membawa jenazahnya orang yang meninggal dunia dalam keadaan ihrom untuk menyelesaikan amalan ihrom, seperti wuqûf,  thowâf dan lainnya, tapi ternyata  hal itu tidak diwajibkan.
      '''),
      Entry('Versi Imam Syâfi\'i dan Imam Hambali', content: '''
Imam Syâfi'i dan Imam Hambali berpendapat bahwa status ihromnya seseorang tidak terputus dengan sebab mati, sehingga jenazahnya tidak boleh dikenai sesuatu yang dilarang bagi orang yang sedang  ihrom, seperti :

  Jenazah tidak boleh diberi wangi-wangian;
  Jenazah perempuan tidak boleh ditutup wajahnya;
  Jenazah laki-laki tidak boleh ditutup kepalanya, dan lain-lain.

Tendensi Beliau berpendapat demikian adalah hadits Nabi yang diriwayatkan oleh Imam Bukhôri-Muslim :

رَوَى إبْنُ عَبَّاسٍ قَالَ بَيْنَمَا رَجُلٌ وَاقــــِفٌ بِعَـــرَفَةَ إِذْ وَقَعَ عَلَى رَاحــِلَتِهِ فَـمَاتَ فَــقَـــالَ

رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ اغْسِلُوا بِمَاءٍ وَسِدْرٍ وَكَفِّنُوهُ فِى ثَوْبِهِ وَلاَ تُحَنِّطُوْهُ وَلاَ تُخَمِّرُوا رَأْسَهُ فَاِنَّهُ يُبْعَثُ يَوْمَ الْقِيَامَةِ مُُلَبِّياً  (متفق عليه)

Artinya: Ibnu Abbâs berkata: “Pada suatu ketika ada seorang laki-laki yang sedang wuqûf di Arafah terjatuh dari untanya, kemudian ia mati, lalu Nabi bersabda: " Mandikanlah ia dengan air daun sidr (widoro) dan kafanilah dengan baju yang ia pakai, jangan diberi wewangian, dan jangan ditutup kepalanya, karena sesungguhnya pada hari kiamat ia akan dibangkitkan dalam keadaan ihrom”. (HR. Bukhôri-Muslim)

Meskipun redaksi hadits di atas hanya menerangkan tata cara mengkafani jenazah laki-laki, namun pada prakteknya para Ulama menyamakan jenazah perempuan dengan jenazah  laki-laki.
      '''),
    ]),
  ];
  final List<Entry> dataText = <Entry>[
    Entry('', content: '''Jenazah harus dikafani sebelum dishalati, dan batas minimal mengkafani jenazah, baik laki-laki atau perempuan adalah satu lapis yang dapat menutupi semua anggota badan. Biaya pengkafanan jenazah  diambil dari hartanya sendiri, bila tidak punya maka diambilkan dari hartanya orang yang menafkahinya ketika ia masih hidup, kalau tidak ada maka diambilkan dari baitul mâl (kas desa), dan jika tidak ada baitul mâl, maka biaya pengkafanan ditanggung  oleh orang-orang kaya daerah setempat. Urutan tersebut tidak tertentu dalam biaya kafan, tapi juga biaya memandikan, menshalati dan mengubur jenazah. Ulama Madzâhib al Arba'ah berbeda pendapat tentang jenis kain kafan yang diperbolehkan bagi jenazah, pendapat-pendapat mereka adalah :'''),
    Entry('Versi Imam Hanafi', children: [
      Entry('', content: '''Beliau berpendapat bahwa semua jenis kain yang diperbolehkan dipakai ketika hidupnya jenazah, boleh digunakan sebagai kafannya. Kain yang paling utama sebagai kafan adalah kain yang berwarna putih, baik baru ataupun lama.'''),
      Entry('Hukum kafan dibagi menjadi tiga : ', content: '''
1.      Kafan sunah;
2.      Kafan kafayah;
3.      Kafan dlarurat.

Ketiga hukum ini berlaku dalam mengkafani jenazah laki-laki dan perempuan.
      '''),
      Entry('Kafan sunah', content: '''
Jenazah dikafani dengan izâr (kain penutup badan), gamis (baju kurung) dan kain satu lapis. Ukuran masing-masing adalah :

•     Izâr (kain penutup badan): Mulai dari kepala sampai telapak kaki;
•     Gamis (baju kurung): Mulai dari leher bawah sampai telapak kaki;
•     Kain satu lapis: Mulai dari kepala sampai telapak kaki.
      '''),
      Entry('Kafan kafayah', content: '''
•     Jenazah hanya dikafani dengan izâr atau hanya dengan satu lapis, tanpa disertai dengan gamis.
      '''),
      Entry('Kafan dlarurat ', content: '''
•     Jenazah dikafani dengan kafan yang hanya menutupi auratnya saja.

Imam Hanafi berpendapat apabila ada orang meninggal dan ia tidak mempunyai harta untuk biaya pengkafanannya, dan tidak ditemukan orang lain yang menanggung biaya tersebut, maka setelah jenazahnya dimandikan, langsung dikubur, sedangkan waktu menshalatinya ketika jenazah telah sempurna dikubur.
      '''),
    ]),
    Entry('Versi Imam Mâliki', children: [
      Entry('', content: '''Beliau berpendapat bahwa semua jenis kain yang boleh dipakai ketika masa hidupnya jenazah boleh digunakan sebagai kafannya. Kain yang paling utama sebagi kafan adalah kain yang berwarna putih. Kriteria pengkafanan yang afdlal (utama) bagi jenazah laki-laki berbeda dengan kriteria yang terdapat pada jenazah perempuan. Perbedaan kriteria tersebut adalah :'''),
      Entry('Laki-laki', content: '''
Cara yang lebih utama dalam mengkafani jenazah laki-laki adalah mengkafani jenazah tersebut dengan memakaikan lima hal, yaitu :

- Gamis (baju kurung) yang ada lengannya;
- Izâr (kain penutup badan);
- Sorban (ukurannya menyesuaikan jenazah);
- Dua lapis kain yang masing-masing dapat menutupi seluruh badan jenazah.
      '''),
      Entry('Perempuan', content: '''
Cara yang lebih utama dalam mengkafani jenazah perempuan adalah mengkafani jenazah tersebut dengan memakaikan tujuh hal, yaitu :

- Gamis (baju kurung) yang ada lengannya;
- Izâr (kain penutup badan);
- Kerudung;
- Empat lapis kain yang setiap lapisannya dapat menutupi seluruh badan jenazah.

Sedangkan batas minimal kafan yang telah dianggap cukup dalam mengkafani adalah satu lapis kain yang dapat menutupi badan jenazah.
      '''),
    ]),
    Entry('Versi Imam Syâfi\'i dan Imam Hambali', children: [
      Entry('', content: '''Imam Syâfi'i dan Imam Hambali berpendapat bahwa semua jenis kain yang diperbolehkan dipakai ketika masa hidupnya jenazah, boleh digunakan sebagai kafannya. Kain yang paling utama sebagai kafan adalah kain yang berwarna putih, hanya saja Imam Syâfi'i lebih mengutamakan kain yang bukan baru. Kriteria pengkafanan yang afdlal (utama) bagi jenazah laki-laki berbeda dengan kriteria yang terdapat pada jenazah perempuan. Perbedaan kriteria tersebut adalah :'''),
      Entry('Laki-laki', content: '''
Cara yang lebih utama dalam mengkafani jenazah laki-laki adalah dengan sebanyak tiga lapis kain yang setiap lapisnya dapat menutupi semua anggota badan jenazah. Dan menurut Imam Syâfi'i boleh ditambahi dengan gamis (baju kurung) dan sorban, namun Imam Hambali menghukumi makruh dalam menambahkan keduanya.
      '''),
      Entry('Perempuan', content: '''
Cara yang lebih utama dalam mengkafani jenazah perempuan adalah mengkafani jenazah tersebut dengan memakaikan lima hal, yaitu :

- Gamis (baju kurung) yang ada lengannya;
- Izâr (kain penutup badan);
- Kerudung;
- Dua lapis yang setiap lapisnya dapat menutupi seluruh badan jenazah.

Untuk batas minimal pemakaian kafan yang telah dianggap cukup menurut Imam Syâfi'i dan Hambali adalah satu lapis yang dapat menutupi seluruh badan jenazah.
      '''),
    ]),
    Entry('Hal-hal yang berhubungan dengan prosesi mengkafani jenazah', children: [
      Entry('Jenazah Laki-laki', content: '''
Ulama Madzâhib al Arba'ah berpendapat bahwa jenazah laki-laki sunah dikafani dengan tiga lapis. Tendensi kesunahan ini adalah hadits Nabi yang diriwayatkan oleh Imam Bukhôri-Muslim :

عَنْ عَائِشَةَ أَنَّهَا قَالَتْ كُفِنَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فِى ثَلاَثَةِ أَثْوَابٍ بِيْضٍ سَحُوْلِيَّةٍ مِنْ كُرْسُفٍ لَيْسَ فِيْهَا قَمِيْصٌ وَلاَ عَمَامَةٌ  (رواه اليخارى ومسلم)

Artinya: Diriwayatkan dari ‘Aisyah, Beliau berkata: "Nabi dikafani dengan tiga baju (kafan) berwarna putih buatan desa Sahul, wilayah Yaman, dan tiga kafan tadi tidak disertai gamis dan sorban”.  (HR. Bukhori-Muslim)

Imam Hanafi menambah alasan lain, yaitu Nabi dikafani tiga lapis karena semasa hidupnya Beliau gemar mengenakan tiga lapis pakaian.

Kandungan hadits tersebut menerangkan bahwa pada saat Rasulullah SAW wafat, Beliau hanya dikafani dengan tiga lapis kafan, tanpa disertai baju kurung dan sorban. Sehingga dari hadits ini, Ulama berbeda pendapat mengenai penambahan sorban dan baju kurung dari tiga lapis kafan, pendapat Mereka yaitu :

  Imam Hanafi : Penambahan gamis (bajukurung) dan sorban hukumnya kurang baik.
  Imam Mâliki : Penambahan gamis (baju kurung) dan sorban hukumnya baik (afdlal);
  Imam Syâfi'i :  Penambahan gamis (baju kurung) dan sorban hukumnya boleh (jawaz);
  Imam Hambali: Penambahan gamis (baju kurung),  sorban atau lainnya hukumnya makruh.
      '''),
      Entry('Jenazah  Perempuan', content: '''
Jenazah  perempuan sunah dikafani dengan lima lapis (izâr, gamis, kerudung dan dua lapis kain). Dalil yang dijadikan  pijakan dalam hukum ini adalah hadits Nabi yang diriwayatkan oleh Imam Abu Dâwud :

عَنْ أُمِّ عَطِيَةَ أَنَّهَا قَالَتْ لَمَّا غَسَلْنَا إِبْنَةَ رَسُولِ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَانَ جَالِسًا عَلَى الْبَابِ يُنَاوِلُنَا الأَكْفَانَ وَاحِدًا وَاحِدًا فَنَاوَلْنَا إِزَارًا وَدِرْعًا وَخِمَارًا وَثَوْبَيْنِ      (رواه أبوداود)

Artinya: Diriwayatkan dari Ummi ‘Atiyyah, Ia berkata: "Ketika saya memandikan putri Nabi (Ummi Kultsum), Beliau duduk di pintu sembari menyodorkan kafan satu persatu, dan Beliau memberikan izâr (kain penutup badan), baju kurung, kerudung dan dua kain”. (HR. Abu Dâwud)
      '''),
    ]),
    Entry('Orang yang meninggal dalam keadaan ihrom', children: [
      Entry('', content: '''Ada beberapa versi dari para Ulama mengenai tata cara mentajhiz (merawat) jenazahnya orang yang meninggal dunia dalam keadaan ihrom, diantaranya :'''),
      Entry('Versi Imam Hanafi dan Imam Maliki', content: '''
Cara merawat jenazah orang yang mati dalam keadaan ihrom sama dengan jenazahnya orang yang meninggal biasa (tidak ihrom). Referensi yang dijadikan pijakan pernyataan ini adalah hadits yang diriwayatkan Imam Bukhôri-Muslim :

قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ إِذَا مَاتَ ابْنُ آدَمَ انْقَطَعَ عَمَلُهُ إِلاَّ مِنْ ثَلاَثٍ, صَدَقَةٍ جَارِيَةٍ أَوْ عِلْمٍ يُنْتَفَعُ بِهِ أَوْ وَلَدٍ صَالِحٍ يَدْعُو لَهُ ( متفق عليه)  

Artinya : Nabi bersabda : "Ketika anak Adam meninggal dunia, maka terputuslah semua amalnya kecuali tiga hal : Sodaqoh jariyah, ilmu yang bermanfaat dan keturunan yang mendo’akan kepada kedua orang tuanya”. (HR. Bukhôri-Muslim)

Dari redaksi hadits di atas, dapat disimpulkan bahwa dengan meninggal dunia, manusia terputus dari semua amal ibadahnya, termasuk ihrom (haji dan umroh), karena seandainya hukum ihrom tidak putus, niscaya  kita wajib membawa jenazahnya orang yang meninggal dunia dalam keadaan ihrom untuk menyelesaikan amalan ihrom, seperti wuqûf,  thowâf dan lainnya, tapi ternyata  hal itu tidak diwajibkan.
      '''),
      Entry('Versi Imam Syâfi\'i dan Imam Hambali', content: '''
Imam Syâfi'i dan Imam Hambali berpendapat bahwa status ihromnya seseorang tidak terputus dengan sebab mati, sehingga jenazahnya tidak boleh dikenai sesuatu yang dilarang bagi orang yang sedang  ihrom, seperti :

  Jenazah tidak boleh diberi wangi-wangian;
  Jenazah perempuan tidak boleh ditutup wajahnya;
  Jenazah laki-laki tidak boleh ditutup kepalanya, dan lain-lain.

Tendensi Beliau berpendapat demikian adalah hadits Nabi yang diriwayatkan oleh Imam Bukhôri-Muslim :

رَوَى إبْنُ عَبَّاسٍ قَالَ بَيْنَمَا رَجُلٌ وَاقــــِفٌ بِعَـــرَفَةَ إِذْ وَقَعَ عَلَى رَاحــِلَتِهِ فَـمَاتَ فَــقَـــالَ

رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ اغْسِلُوا بِمَاءٍ وَسِدْرٍ وَكَفِّنُوهُ فِى ثَوْبِهِ وَلاَ تُحَنِّطُوْهُ وَلاَ تُخَمِّرُوا رَأْسَهُ فَاِنَّهُ يُبْعَثُ يَوْمَ الْقِيَامَةِ مُُلَبِّياً  (متفق عليه)

Artinya: Ibnu Abbâs berkata: “Pada suatu ketika ada seorang laki-laki yang sedang wuqûf di Arafah terjatuh dari untanya, kemudian ia mati, lalu Nabi bersabda: " Mandikanlah ia dengan air daun sidr (widoro) dan kafanilah dengan baju yang ia pakai, jangan diberi wewangian, dan jangan ditutup kepalanya, karena sesungguhnya pada hari kiamat ia akan dibangkitkan dalam keadaan ihrom”. (HR. Bukhôri-Muslim)

Meskipun redaksi hadits di atas hanya menerangkan tata cara mengkafani jenazah laki-laki, namun pada prakteknya para Ulama menyamakan jenazah perempuan dengan jenazah  laki-laki.
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
                      // SUBTITLE MENGKAFANI
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Center(
                            child: Text(
                              "Mengkafani",
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