part of 'pages.dart';

class MateriJenazahUmumPage extends StatefulWidget {
  @override
  _MateriJenazahUmumPage createState() => _MateriJenazahUmumPage();
}

class _MateriJenazahUmumPage extends State<MateriJenazahUmumPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('', content: '''
Hidup adalah suatu sifat yang melekat pada sebagian makhluk Allah, seperti manusia, hewan, tumbuh-tumbuhan atau lainnya. Karena hidup merupakan suatu sifat, maka sudah menjadi kepastian bahwa suatu saat sifat tersebut akan terpisah dari dzatnya, dengan demikian semua mahluk hidup pasti akan mati, seperti yang telah digariskan oleh Allah SWT dalam firman-Nya surat Ali Imrân : 185 :

قَالَ اللهُ تَعَالَى كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ  (آل عمران: 185)

Artinya: Allah berfirman “Setiap sesuatu yang bernyawa pasti akan merasakan mati”. (QS. Ali ‘Imrân :  185)

Kematian merupakan pintu gerbang pertama untuk menuju akhirat yang merupakan tempat mempertanggung jawabkan segala perbuatan hamba di dunia terhadap Allah, oleh karena itu Ulama Fiqh menyimpulkan bahwa hukum memperbanyak dan selalu mengingat mati adalah sunah, karena akan memotifasi  untuk selalu ingat Allah. Anjuran ini berdasarkan hadits Nabi yang diriwayatkan Imam Turmudzi, Ibnu Mâjah dan Hâkim  :

الَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ اَكْثِرُوْا مِنْ ذِكْرِ هَاذِمِ اللَّذَّاتِ اَىِ الْمَوْتِ (رواه الترمذى وابن ماجه والحاكم)

Artinya : Nabi bersabda "Perbanyaklah olehmu mengingat sesuatu yang menghilangkan / memutuskan kenikmatan dunia (mati)”. (HR. Turmudzi, Ibnu Mâjah dan Hâkim).

Dengan mengingat kematian, otomatis akan ingat atas apa yang telah diperbuat, terutama hal-hal yang melanggar norma-norma agama, baik yang berhubungan dengan Allah atau dengan sesama. Dengan demikian maka akan memotifasi rasa ingin taubat dan senantiasa berbenah diri dari semua perbuatan dosa. Kalangan Ulama Salaf as Shâlih telah memberikan tatanan sekaligus tuntunan yang mengatur berbagai permasalahan yang berkaitan dengan masalah taubat, diantaranya :'''),
    Entry('Secara garis besar taubat ada dua, yaitu : ', content: '''
- Taubat dari kesalahan yang kaitannya dengan Allah (حبل من الله).
- Taubat dari kesalahan yang kaitannya dengan sesama manusia (حبل من الناس).
      '''),
    Entry('Syarat sah taubat : ', content: '''
1.      Berhenti (iqlâ') dari kesalahan yang diperbuat.
2.      Merasa menyesal (nadm) atas kesalahan yang telah diperbuat.
3.      Bertekad ('azm) untuk tidak mengulangi perbuatan tersebut.
4.      Kalau dosa tersebut kaitannya dengan sesama manusia, maka harus meminta maaf (istihlâl) kepada orang yang bersangkutan serta mengembalikan (radd al mâl al madzlûm) hak miliknya yang telah diambil.
      '''),
    Entry('', content: '''
Ketika orang sedang sakit sangat dianjurkan untuk bertaubat, dikarenakan kalau tidak bertaubat dikhawatirkan ajal menjemputnya. Tendensi anjuran ini adalah hadits Nabi yang diriwayatkan Imam Bukhôri :

قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ مَا أَنْزَلَ اللهُ دَاءً اِلاَّ وَأَنْزَلَ لَهُ شِفَاءً  (رواه البخاري)

Artinya : Nabi bersabda :”Allah tidak menurunkan penyakit kecuali menurunkan pula obatnya”. (HR. Bukhôri).

Dan hadits yang diriwayatkan ImamTurmudzi :

إِنَّ الأَعْرَبِيَّ قَالُوا يَارَسُولَ اللهِ أَتَتَدَاوَى فَقَالَ تَتَدَاوَوْا فَاِنَّ اللهَ لَمْ يَضَعْ دَاءً اِلاَّ وَضَعَ لَهُ دَوَاءً اِلاَّ الْهَرَمَ. (رواه الترمذى وغيره)

Artinya: Penduduk A’raby (suku pedalaman Arab) bertanya pada Nabi: “Seandainya kami sakit, apakah harus di obati?” Nabi menjawab: “Ya, harus di obati, sesungguhnya Allah tidak menciptakan suatu penyakit kecuali menyertakan pula obatnya, kecuali penyakit karena lanjut usia”. (HR. Turmudzi).

Kendatipun demikian, Allah telah menciptakan obat pada setiap penyakit, bukan berarti dengan berobat penyakit pasti sembuh, karena terkadang obat tidak memberikan pengaruh, bahkan bukan hal yang mustahil kalau ajal tetap menjemputnya, karena kematian merupakan takdir Allah yang tidak bisa ditunda atau dipercepat walaupun hanya sekejap. Pernyataan ini sesuai dengan firman Allah surat Al A’râf : 34  yang berbunyi :

قَالَ اللهُ تَعَالَى إِذَا جَاءَ أَجَلُهُمْ فَلَا يَسْتَأْخِرُونَ سَاعَةً وَلَا يَسْتَقْدِمُونَ (الأعراف : 34)

Artinya: Allah berfirman: “Apabila telah datang ajal mereka (umat manusia), mereka tidak dapat mengundurkan sesa'atpun dan tidak dapat (pula) memajukannya”. (QS. Al A’râf : 34)'''),
    Entry('Kewajiban masyarakat atas jenazah :', content: '''
1.      Memandikan;
2.      Mengkafani;
3.      Menshalati;
4.      Mengubur.
Empat hal di atas wajib untuk dipenuhi ketika jenazah telah memenuhi kriteria yang telah ditentukan oleh syara’.
      '''),
    Entry('Syarat  jenazah wajib dimandikan', content: '''
1.      Islam;
2.      Bukan siqt (bayi yang lahir sebelum masanya);
3.      Wujudnya jenazah atau sebagian anggotanya;
4.      Bukan mati syahid.
Secara umum Ulama Madzâhib al Arba'ah sepakat bahwa empat syarat di atas merupakan syarat jenazah wajib dimandikan, meskipun sebenarnya antara masing-masing madzhab terdapat sedikit perbedaan.      
      '''),
    Entry('Keterangan : ', children: [
      Entry('Islam', content: '''
- Imam Hanafi, Mâliki dan Hambali : Jenazah non-Muslim haram untuk dimandikan, karena memandikan jenazah merupakan ibadah;
- Imam Syâfi'i : Memandikan jenazah non-Muslim hukumnya boleh, alasannya karena tujuan memandikan jenazah itu murni untuk membersihkan, bukan untuk ibadah.
      '''),
      Entry('Kriteria Siqt yang wajib dimandikan : ', content: '''
Versi Imam Hanafi :
- Lahir dalam keadaan hidup, meski belum mencapai waktu yang sempurna untuk dilahirkan, atau lahir dalam kondisi mati namun anggota badannya telah sempurna.

Versi Imam Mâliki :  
- Hidupnya bayi setelah dilahirkan dengan adanya tanda-tanda, antara lain terdapat gerakan ataupun jeritan.

Versi Imam Syâfi'i : 
- Terdapat tanda-tanda kehidupan, seperti adanya gerakan, sempurna organ tubuhnya meski tidak diketahui hidupnya.
- Lahir dari kandungan yang berusia melebihi enam bulan, walaupun meninggal.

Versi Imam Hambali : 
- Lahir dari kandungan yang berusia melebihi empat bulan, walaupun meninggal.
      '''),
      Entry('Jasad atau organ tubuh jenazah', content: '''
Syarat jenazah wajib dimandikan harus ditemukan seluruh jasad mayat atau sebagian anggota, maka ketika mayat ditemukan dalam keadaan tidak utuh, para Ulama berbeda pendapat :

- Menurut Imam Hanafi wajib dimandikan apabila yang ditemukan melebihi dari separuh badan, atau separuh badan tapi bersama kepalanya.

- Menurut Imam Mâliki wajib dimandikan apabila ditemukan minimal 2/3 (dua pertiga) dari badan jenazah.

- Menurut Imam Syâfi'i dan Hambali wajib di mandikan apabila ditemukan anggota mayat meskipun sedikit, seperti satu jari.
      '''),
      Entry('Mati syahid', children: [
        Entry('', content: '''
Syahid terbagi menjadi tiga bagian :

1.      Syahid dunia akhirat;
2.      Syahid akhirat;
3.      Syahid dunia.'''),
        Entry('Syahid dunia akhirat : ', content: '''
Dalam hal ini, para Ulama masih belum sepakat mengenai definisi ataupun kriteria jenazah yang bisa dikategorikan sebagai syahid dunia akhirat, namun mengenai konsekuensi hukumnya, Ulama Madzâhib al Arba'ah sepakat bahwa jenazah yang statusnya syahid dunia akhirat sebagai berikut :
  Tidak boleh dimandikan;
  Tidak boleh dishalati;
  Dikafani dengan pakaian yang dikenakan saat meninggal;
  Dikubur dalam keadaan memakai sesuatu yang dikenakan saat meninggal.
      '''),
        Entry('Definisi syahid dunia akhirat versi Madzâhib : ', content: '''
- Versi Imam Hanafi:
Syahid dunia akhirat adalah orang yang dibunuh secara dzâlim (tidak salah), baik dalam peperangan maupun tidak, dengan oang kafir atau bukan. Syahid dunia akhirat memiliki beberapa syarat, yaitu Islam, baligh, berakal, suci dari hadats besar, langsung mati dan matinya sebelum pindah dari tempat kejadian. Ketika syarat-syarat ini tidak terpenuhi, maka harus diberlakukan sebagaimana jenazah yang bukan syahid.

- Versi Imam Mâliki:
Syahid dunia akhirat adalah orang yang meninggal karena dibunuh orang kafir atau perang melawan orang kafir, dengan syarat meninggal di tempat atau semenjak dari tempat perang sudah tidak sadarkan diri. Dan menurut prinsip Beliau, konsekuensi hukum syahid dunia akhirat berlaku bagi laki-laki, perempuan, baik dalam  kondisi junub ataupun hadats (besar atau kecil).

- Versi Imam Syâfi'i dan Imam Hambali:
Syahid dunia akhirat adalah orang yang meninggal di medan perang melawan orang kafir dengan tujuan menegakkan agama Allah. Dan menurut prinsip Beliau berdua, Konsekuensi hukum syahid dunia akhirat berlaku bagi laki-laki, perempuan, baik dalam  kondisi junub ataupun hadats (besar atau kecil).
      '''),
        Entry('Syahid dunia', content: '''
Syahid dunia adalah orang yang meninggal di medan perang dengan tujuan supaya memperoleh ghanîmah (harta jarahan), atau supaya dipuji orang banyak. Sedangkan konsekuensi hukumnya adalah :
  Tidak boleh dimandikan;
  Tidak boleh dishalati;
  Dikafani dengan pakaian yang dikenakan ketika mati;
  Dikubur dalam keadaan memakai sesuatu yang dikenakan ketika mati.

Konsekuensi hukum dari syahid dunia sama dengan syahid dunia akhirat, karena fiqih hanya menghukumi sesuatu yang dzâhir (tampak) dan yang membedakan antara syahid dunia akhirat atau syahid dunia saja tergantung pada niatnya, adapun masalah akhirat itu merupakan hak perogratif Allah.
      '''),
        Entry('Syahid akhirat : ', content: '''
Syahid akhirat adalah orang yang meninggal karena semisal tenggelam, terbakar, dalam status muta’allim (pencari ilmu syara’) dan lain-lain. Sebagai konsekuensi hukum syahid akhirat adalah :
  Tetap dimandikan;
  Dikafani sebagaimana jenazah  bukan syahid;
  Tetap dishalati;
  Dikubur dengan kafan yang dipakaikan pada jenazah  yang bukan syahid.

Konsekuensi hukum dari syahid akhirat sama dengan orang yang meninggal biasa, karena fiqih hanya menghukumi hal yang dzâhir (tampak) saja, sedangkan masalah akhirat murni merupakan hak Allah sebagai penguasa tunggal.
      '''),
        Entry('', content: '''
Catatan :
Ulama Madzâhib al Arba'ah sepakat dalam memberikan definisi syahid dunia dan syahid akhirat.'''),
      ]),
    ]),
    Entry('Menyediakan makanan dan minuman orang ta’ziyah  (menghadiri rumah duka)', content: '''
Asal hukum sodaqoh adalah sunah, namun hukum sunah tersebut dapat berubah manjadi makruh, wajib atau bahkan haram, sesuai dengan kondisi orang yang bersodaqoh. Sedangkan sodaqoh (menyediakan) makanan atau minuman untuk orang yang ta’ziyah hukumnya diperinci:

1.      Haram : Apabila ahli waris (keluarga almarhum) ada yang berstatus mahjûr ‘alaîh, seperti anak yang belum baligh.
2.      Makruh : Apabila semua ahli waris (keluarga almarhum) bukan mahjûr ‘alaîh dan semua ahli waris ridlo.

Meskipun hukum menyediakan makanan dan minuman kepada orang yang ta’ziyah adalah haram atau makruh, tapi tetap tidak menghilangkan pahalanya sodaqoh, bahkan walaupun hukumnya haram harus tetap dilakukan, kalau ada tujuan tertentu, seperti menghindari omongan (fitnah) dari tetangga sekitar.

Setelah selesai megubur jenazah, dianjurkan mendo’akan jenazah dengan do’a-do’a yang bermanfaat bagi arwahnya. Tendensi anjuran ini adalah hadits yang diriwayatkan Imam Abu Dâwud :

رُوِىَ عَنْ عُثْمَانَ رَضِىَ اللهُ عَنْهُ أَنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَانَ إِذَا دَفَنَ مَيْتًا وَقَفَ عِنْدَ قَبْرِهِ وَقَالَ اِسْتَغْفِرُوْا لِأَخِيْكُمْ وَاسْأَلُوْا اللهَ التَّثْبِيْتَ فَإِنَّهُ اْلآنَ يُسْأَلُ (رواه أبو داود)

Artinya: Diriwayatkan dari sahabat Utsman, Ia berkata : "Sesungguhnya ketika Nabi selasai mengubur jenazah, Beliau berdiri di dekat kuburan, kemudian bersabda : “ Mintalah kalian ampunan pada Allah untuk saudaramu agar diberi ketetapan (iman), karena sekarang Ia sedang ditanyai (malaikat Munkar-Nakir)”.          (HR. Imam Abu Dâwud)
      '''),
    Entry('Talqîn mayat', content: '''
Ulama sangat menganjurkan untuk dilakukannya talqin mayat, pijakan mereka adalah hadits Nabi yang diriwayatkan Imam Tabrâni :

عَنْ أَبِي أُمَامَةَ الْبَاهِلِيِّ أَنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ إذَا مَاتَ أَحَدُكُمْ فَسَوَّيْتُمْ عَلَيْهِ التُّرَابَ فَلْيَقُمْ أَحَدُكُمْ عَلَى رَأْسِ قَبْرِهِ فَيَقُولُ : اُذْكُرْ مَا خَرَجْتَ عَلَيْهِ مِنْ الدُّنْيَا : شَهَادَةَ أَنْ لَا إلَهَ إلَّا اللَّهُ وَأَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ , وَأَنَّكَ رَضِيتَ بِاَللَّهِ رَبًّا وَبِالْإِسْلَامِ دِينًا , وَبِمُحَمَّدٍ نَبِيًّا , وَبِالْقُرْآنِ إمَامًا فَإِنَّ نَكِيرًا وَمُنْكَرًا يَتَأَخَّرُ كُلُّ وَاحِدٍ مِنْهُمَا فَيَقُولُ اِنْطَلِقْ فَمَا يُقْعِدُنَا عِنْدَ هَذَا وَقَدْ لُقِّنَ حُجَّتَهُ وَيَكُوْنُ عِنْدَ اللهِ حَجِيْجُهُ دُوْنَهُمَا (رواه الطبرانى)

Artinya: Nabi bersabda : "Apabila salah satu dari kalian meninggal dunia, maka setelah menguburnya, hendaknya ada yang berdiri lurus dengan kepala kuburan (mayat) dan mengucapkan : “Ingatlah, ketika kamu keluar dari dunia, yaitu bersaksi bahwa tidak ada tuhan selain Allah dan Muhammad utusan-Nya, dan sesungguhnya kamu ridlo bahwa Allah adalah tuhanmu, Islam agamamu, Muhammad Nabimu dan Al Qur’an tuntunanmu, maka sesungguhnya malaikat Munkar dan Nakir saling menjauh, kemudian dia berkata (kepada temannya) : “Pergilah, jangan berlama-lama kita didekat orang ini, sesungguhnya dia telah diajari jawabannya”, dan jawaban yang diterima di sisi Allah adalah jawaban orang tersebut, bukan laporan dua malaikat tadi”. (HR. Thabrâni)
      '''),
    Entry('Ziarah kubur', content: '''
Semua Ulama Madzâhib al Arba'ah menyepakati kesunahan ziarah kubur, namun ada sedikit perbedaan dalam menentukan waktu yang utama untuk melaksanakan ziarah.
Hari yang utama untuk melakukan ziarah kubur :

~   Imam Hanafi dan Imam Mâliki : Hari Kamis, Jum’at dan Sabtu;
~   Imam Syâfi'i : Mulai 'Asarnya hari Kamis sampai keluarnya matahari pada hari Sabtu;
~   Imam Hambali : Tidak ada hari tertentu yang lebih utama untuk melakukan ziarah kubur.

Tendensi kesunahan melakukan ziarah kubur adalah hadits Nabi yang diriwayatkan Imam Muslim :

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ :  كُنْتُ نَهَيْتُكُمْ عَنْ زِيَارَةِ الْقُبُورِ فَزُورُهَا فَإِنَّهَا تُذَكِّرُكُمْ الْمَوْتَ (رواه مسلم)

Artinya: Nabi bersabda : “Saya (dahulu) melarang kalian semua untuk ziarah kubur, maka sekarang berziarah kuburlah kalian, karena sesungguhnya ziarah kubur dapat mengingatkan kalian pada kematian”. (HR. Muslim).
      '''),
    Entry('Membaca tahlîl, Al Qur’an dan bersodaqoh untuk mayat', content: '''
Pahala dari membaca tahlîl, Al Qur’an dan bersodaqoh bisa sampai pada mayat. Tendensi pernyataan ini adalah firman Allah surat Al Hasyr : 10 :

قال الله تعالى : وَالَّذِينَ جَاءُوا مِنْ بَعْدِهِمْ يَقُولُونَ رَبَّنَا اغْفِرْ لَنَا وَلِإِخْوَانِنَا الَّذِينَ سَبَقُونَا بِالْإِيمَانِ (الحشر : 10)

Artinya: Allah berfirman Dan orang-orang yang datang setelah mereka (Muhajirin dan Anshar), mereka berdo’a "Wahai tuhan kami, ampunilah kami dan saudara-saudara kami yang telah beriman lebih dulu dari kami”. (QS. Al Hasyr : 10)

Dan hadits Nabi yang diriwayatkan Imam Bukhori Muslim dari sahabat Sa’ad Bin ‘Ubadah :

قَالَ سَعْدُ بْنُ عُبَادَةَ لِلنَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ  أَيَنْفَعُ أُمِّي إِذَا تَصَدَّّقْتُ عَنْهَا قَالَ نَعَمْ  (رواه البخاري ومسلم )

Artinya: Sa’ad bin 'Ubadah bertanya kepada Nabi: “Apakah dapat bermanfaat bagi ibu saya, apabila saya bersodaqoh atas nama ibu?”, Nabi menjawab: “Ya, dapat bermanfaat bagi ibumu”. (HR. Bukhôri-Muslim)
      '''),
    Entry('Tata cara ziarah kubur, membaca Al Qur’an atau tahlil dan sodaqoh untuk mayat : ', content: '''
Masuk pada areal pekuburan dengan mengucapkan salam kepada ahli kubur setempat (orang-orang yang di kubur di areal tersebut) dengan mengucapkan semisal lafadz :

السَّلامُ عَلَيْكُمْ دَارَ قَوْمٍ مُؤْمِنِيْنَ وَإِنَّا إِنْ شَاءَ اللهُ بِكُمْ لاحِقُوْنَ.

Artinya: “Semoga keselamatan selalu menyertai kalian semua, wahai orang-orang yang beriman, sesungguhnya jika Allah menghendaki, saya juga akan menyusul seperti kalian”.

Setelah sampai pada makam yang dituju membaca salam secara khusus seperti : اَلسَّلَامُ عَلَيْكُمْ يَا شَيْخِيْ .......

Kemudian duduk disebelah barat makam yang dituju dengan posisi menghadap kearah timur, lalu membaca tahlîl, Al Qur’an atau yang lainnya. Tata cara ini dilakukan apabila kondisi areal pekuburan memungkinkan untuk melakukan posisi semacam ini, kalau tidak mungkin seperti tata cara diatas, maka dengan posisi yang mungkin dia lakukan.

Syarat supaya pahala dari bacaan semisal tahlîl atau Al Qur’an dapat sampai pada mayat :
Pahala dari tahlîl atau Al Qur’an yang dibaca di selain tempat kuburannya orang yang kita ziarahi itu dapat sampai terhadap mayat jika setelah membaca, memanjatkan do’a agar pahala dari bacaan tadi sampai kepada mayat, seperti menggunakan lafadz :

اَللَّّهُمَّ أَوْصِلْ ثَوَابَ مَا قَرَأْنَاهُ .....الخ

Artinya ; ”Wahai tuhanku, sampaikanlah pahala dari apa yang saya baca kepada …..”(dan seterusnya).

Membaca tahlîl atau Al Qur’an di atas kuburan orang yang kita ziarahi, walaupun tidak ada do’a seperti di atas;
Mengkonsentrasikan pikiran sebelum membaca tahlîl atau Al Qur’an dengan menyengaja membaca tahlil atau Al Qur’an yang pahalanya dihadiahkan kepada mayat seperti mengucapkan اِلَى حَضْرَةِ .....
Artinya  : saya sampaikan ……

Supaya pahalanya sodaqoh dapat sampai pada mayit, maka harus ada tujuan memenghadiahkan pahalanya shodaqoh kepada mayat.

Tawassul dengan orang-orang shaleh atau wali-wali Allah

Syariat Islam (Ahlu sunnah wal jamâ'ah) memperbolehkan bahkan menganjurkan tawassul (membuat perantara) dengan orang-orang shaleh dan para wali Allah, baik ketika mereka masih hidup atau telah meninggal. Maksud tawassul adalah meminta sesuatu kepada Allah dengan menjadikan semisal wali sebagai perantara untuk memintakan sesuatu tersebut terhadap Allah, tawassul bukan berarti meminta kepada orang yang ditawassuli (orang yang dijadikan perantara), tapi tawassul sebenarnya tetap meminta kepada Allah. Sebagai dasar dianjurkannya tawassul adalah firman Alloh surat al Mâ-idah ayat 35

يَا أَيُّهَا الَّذِينَ آَمَنُوا اتَّقُوا اللَّهَ وَابْتَغُوا إِلَيْهِ الْوَسِيلَةَ وَجَاهِدُوا فِي سَبِيلِهِ لَعَلَّكُمْ تُفْلِحُونَ (المائدة : 35)

Artinya : Hai orang-orang yang beriman bertaqwalah Kepada Allah dan carilah jalan yang mendekatkan diri kepada-Nya, dan berjihadlah pada jalan-Nya, supaya kamu mendapat keberuntungan. (QS. Al Mâ-idah : 35)
      '''),
  ];
  final List<Entry> dataText = <Entry>[
    Entry('', content: '''
Hidup adalah suatu sifat yang melekat pada sebagian makhluk Allah, seperti manusia, hewan, tumbuh-tumbuhan atau lainnya. Karena hidup merupakan suatu sifat, maka sudah menjadi kepastian bahwa suatu saat sifat tersebut akan terpisah dari dzatnya, dengan demikian semua mahluk hidup pasti akan mati, seperti yang telah digariskan oleh Allah SWT dalam firman-Nya surat Ali Imrân : 185 :

قَالَ اللهُ تَعَالَى كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ  (آل عمران: 185)

Artinya: Allah berfirman “Setiap sesuatu yang bernyawa pasti akan merasakan mati”. (QS. Ali ‘Imrân :  185)

Kematian merupakan pintu gerbang pertama untuk menuju akhirat yang merupakan tempat mempertanggung jawabkan segala perbuatan hamba di dunia terhadap Allah, oleh karena itu Ulama Fiqh menyimpulkan bahwa hukum memperbanyak dan selalu mengingat mati adalah sunah, karena akan memotifasi  untuk selalu ingat Allah. Anjuran ini berdasarkan hadits Nabi yang diriwayatkan Imam Turmudzi, Ibnu Mâjah dan Hâkim  :

الَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ اَكْثِرُوْا مِنْ ذِكْرِ هَاذِمِ اللَّذَّاتِ اَىِ الْمَوْتِ (رواه الترمذى وابن ماجه والحاكم)

Artinya : Nabi bersabda "Perbanyaklah olehmu mengingat sesuatu yang menghilangkan / memutuskan kenikmatan dunia (mati)”. (HR. Turmudzi, Ibnu Mâjah dan Hâkim).

Dengan mengingat kematian, otomatis akan ingat atas apa yang telah diperbuat, terutama hal-hal yang melanggar norma-norma agama, baik yang berhubungan dengan Allah atau dengan sesama. Dengan demikian maka akan memotifasi rasa ingin taubat dan senantiasa berbenah diri dari semua perbuatan dosa. Kalangan Ulama Salaf as Shâlih telah memberikan tatanan sekaligus tuntunan yang mengatur berbagai permasalahan yang berkaitan dengan masalah taubat, diantaranya :'''),
    Entry('Secara garis besar taubat ada dua, yaitu : ', content: '''
- Taubat dari kesalahan yang kaitannya dengan Allah (حبل من الله).
- Taubat dari kesalahan yang kaitannya dengan sesama manusia (حبل من الناس).
      '''),
    Entry('Syarat sah taubat : ', content: '''
1.      Berhenti (iqlâ') dari kesalahan yang diperbuat.
2.      Merasa menyesal (nadm) atas kesalahan yang telah diperbuat.
3.      Bertekad ('azm) untuk tidak mengulangi perbuatan tersebut.
4.      Kalau dosa tersebut kaitannya dengan sesama manusia, maka harus meminta maaf (istihlâl) kepada orang yang bersangkutan serta mengembalikan (radd al mâl al madzlûm) hak miliknya yang telah diambil.
      '''),
    Entry('', content: '''
Ketika orang sedang sakit sangat dianjurkan untuk bertaubat, dikarenakan kalau tidak bertaubat dikhawatirkan ajal menjemputnya. Tendensi anjuran ini adalah hadits Nabi yang diriwayatkan Imam Bukhôri :

قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ مَا أَنْزَلَ اللهُ دَاءً اِلاَّ وَأَنْزَلَ لَهُ شِفَاءً  (رواه البخاري)

Artinya : Nabi bersabda :”Allah tidak menurunkan penyakit kecuali menurunkan pula obatnya”. (HR. Bukhôri).

Dan hadits yang diriwayatkan ImamTurmudzi :

إِنَّ الأَعْرَبِيَّ قَالُوا يَارَسُولَ اللهِ أَتَتَدَاوَى فَقَالَ تَتَدَاوَوْا فَاِنَّ اللهَ لَمْ يَضَعْ دَاءً اِلاَّ وَضَعَ لَهُ دَوَاءً اِلاَّ الْهَرَمَ. (رواه الترمذى وغيره)

Artinya: Penduduk A’raby (suku pedalaman Arab) bertanya pada Nabi: “Seandainya kami sakit, apakah harus di obati?” Nabi menjawab: “Ya, harus di obati, sesungguhnya Allah tidak menciptakan suatu penyakit kecuali menyertakan pula obatnya, kecuali penyakit karena lanjut usia”. (HR. Turmudzi).

Kendatipun demikian, Allah telah menciptakan obat pada setiap penyakit, bukan berarti dengan berobat penyakit pasti sembuh, karena terkadang obat tidak memberikan pengaruh, bahkan bukan hal yang mustahil kalau ajal tetap menjemputnya, karena kematian merupakan takdir Allah yang tidak bisa ditunda atau dipercepat walaupun hanya sekejap. Pernyataan ini sesuai dengan firman Allah surat Al A’râf : 34  yang berbunyi :

قَالَ اللهُ تَعَالَى إِذَا جَاءَ أَجَلُهُمْ فَلَا يَسْتَأْخِرُونَ سَاعَةً وَلَا يَسْتَقْدِمُونَ (الأعراف : 34)

Artinya: Allah berfirman: “Apabila telah datang ajal mereka (umat manusia), mereka tidak dapat mengundurkan sesa'atpun dan tidak dapat (pula) memajukannya”. (QS. Al A’râf : 34)'''),
    Entry('Kewajiban masyarakat atas jenazah :', content: '''
1.      Memandikan;
2.      Mengkafani;
3.      Menshalati;
4.      Mengubur.
Empat hal di atas wajib untuk dipenuhi ketika jenazah telah memenuhi kriteria yang telah ditentukan oleh syara’.
      '''),
    Entry('Syarat  jenazah wajib dimandikan', content: '''
1.      Islam;
2.      Bukan siqt (bayi yang lahir sebelum masanya);
3.      Wujudnya jenazah atau sebagian anggotanya;
4.      Bukan mati syahid.
Secara umum Ulama Madzâhib al Arba'ah sepakat bahwa empat syarat di atas merupakan syarat jenazah wajib dimandikan, meskipun sebenarnya antara masing-masing madzhab terdapat sedikit perbedaan.      
      '''),
    Entry('Keterangan : ', children: [
      Entry('Islam', content: '''
- Imam Hanafi, Mâliki dan Hambali : Jenazah non-Muslim haram untuk dimandikan, karena memandikan jenazah merupakan ibadah;
- Imam Syâfi'i : Memandikan jenazah non-Muslim hukumnya boleh, alasannya karena tujuan memandikan jenazah itu murni untuk membersihkan, bukan untuk ibadah.
      '''),
      Entry('Kriteria Siqt yang wajib dimandikan : ', content: '''
Versi Imam Hanafi :
- Lahir dalam keadaan hidup, meski belum mencapai waktu yang sempurna untuk dilahirkan, atau lahir dalam kondisi mati namun anggota badannya telah sempurna.

Versi Imam Mâliki :  
- Hidupnya bayi setelah dilahirkan dengan adanya tanda-tanda, antara lain terdapat gerakan ataupun jeritan.

Versi Imam Syâfi'i : 
- Terdapat tanda-tanda kehidupan, seperti adanya gerakan, sempurna organ tubuhnya meski tidak diketahui hidupnya.
- Lahir dari kandungan yang berusia melebihi enam bulan, walaupun meninggal.

Versi Imam Hambali : 
- Lahir dari kandungan yang berusia melebihi empat bulan, walaupun meninggal.
      '''),
      Entry('Jasad atau organ tubuh jenazah', content: '''
Syarat jenazah wajib dimandikan harus ditemukan seluruh jasad mayat atau sebagian anggota, maka ketika mayat ditemukan dalam keadaan tidak utuh, para Ulama berbeda pendapat :

- Menurut Imam Hanafi wajib dimandikan apabila yang ditemukan melebihi dari separuh badan, atau separuh badan tapi bersama kepalanya.

- Menurut Imam Mâliki wajib dimandikan apabila ditemukan minimal 2/3 (dua pertiga) dari badan jenazah.

- Menurut Imam Syâfi'i dan Hambali wajib di mandikan apabila ditemukan anggota mayat meskipun sedikit, seperti satu jari.
      '''),
      Entry('Mati syahid', children: [
        Entry('', content: '''
Syahid terbagi menjadi tiga bagian :

1.      Syahid dunia akhirat;
2.      Syahid akhirat;
3.      Syahid dunia.'''),
        Entry('Syahid dunia akhirat : ', content: '''
Dalam hal ini, para Ulama masih belum sepakat mengenai definisi ataupun kriteria jenazah yang bisa dikategorikan sebagai syahid dunia akhirat, namun mengenai konsekuensi hukumnya, Ulama Madzâhib al Arba'ah sepakat bahwa jenazah yang statusnya syahid dunia akhirat sebagai berikut :
  Tidak boleh dimandikan;
  Tidak boleh dishalati;
  Dikafani dengan pakaian yang dikenakan saat meninggal;
  Dikubur dalam keadaan memakai sesuatu yang dikenakan saat meninggal.
      '''),
        Entry('Definisi syahid dunia akhirat versi Madzâhib : ', content: '''
- Versi Imam Hanafi:
Syahid dunia akhirat adalah orang yang dibunuh secara dzâlim (tidak salah), baik dalam peperangan maupun tidak, dengan oang kafir atau bukan. Syahid dunia akhirat memiliki beberapa syarat, yaitu Islam, baligh, berakal, suci dari hadats besar, langsung mati dan matinya sebelum pindah dari tempat kejadian. Ketika syarat-syarat ini tidak terpenuhi, maka harus diberlakukan sebagaimana jenazah yang bukan syahid.

- Versi Imam Mâliki:
Syahid dunia akhirat adalah orang yang meninggal karena dibunuh orang kafir atau perang melawan orang kafir, dengan syarat meninggal di tempat atau semenjak dari tempat perang sudah tidak sadarkan diri. Dan menurut prinsip Beliau, konsekuensi hukum syahid dunia akhirat berlaku bagi laki-laki, perempuan, baik dalam  kondisi junub ataupun hadats (besar atau kecil).

- Versi Imam Syâfi'i dan Imam Hambali:
Syahid dunia akhirat adalah orang yang meninggal di medan perang melawan orang kafir dengan tujuan menegakkan agama Allah. Dan menurut prinsip Beliau berdua, Konsekuensi hukum syahid dunia akhirat berlaku bagi laki-laki, perempuan, baik dalam  kondisi junub ataupun hadats (besar atau kecil).
      '''),
        Entry('Syahid dunia', content: '''
Syahid dunia adalah orang yang meninggal di medan perang dengan tujuan supaya memperoleh ghanîmah (harta jarahan), atau supaya dipuji orang banyak. Sedangkan konsekuensi hukumnya adalah :
  Tidak boleh dimandikan;
  Tidak boleh dishalati;
  Dikafani dengan pakaian yang dikenakan ketika mati;
  Dikubur dalam keadaan memakai sesuatu yang dikenakan ketika mati.

Konsekuensi hukum dari syahid dunia sama dengan syahid dunia akhirat, karena fiqih hanya menghukumi sesuatu yang dzâhir (tampak) dan yang membedakan antara syahid dunia akhirat atau syahid dunia saja tergantung pada niatnya, adapun masalah akhirat itu merupakan hak perogratif Allah.
      '''),
        Entry('Syahid akhirat : ', content: '''
Syahid akhirat adalah orang yang meninggal karena semisal tenggelam, terbakar, dalam status muta’allim (pencari ilmu syara’) dan lain-lain. Sebagai konsekuensi hukum syahid akhirat adalah :
  Tetap dimandikan;
  Dikafani sebagaimana jenazah  bukan syahid;
  Tetap dishalati;
  Dikubur dengan kafan yang dipakaikan pada jenazah  yang bukan syahid.

Konsekuensi hukum dari syahid akhirat sama dengan orang yang meninggal biasa, karena fiqih hanya menghukumi hal yang dzâhir (tampak) saja, sedangkan masalah akhirat murni merupakan hak Allah sebagai penguasa tunggal.
      '''),
        Entry('', content: '''
Catatan :
Ulama Madzâhib al Arba'ah sepakat dalam memberikan definisi syahid dunia dan syahid akhirat.'''),
      ]),
    ]),
    Entry('Menyediakan makanan dan minuman orang ta’ziyah  (menghadiri rumah duka)', content: '''
Asal hukum sodaqoh adalah sunah, namun hukum sunah tersebut dapat berubah manjadi makruh, wajib atau bahkan haram, sesuai dengan kondisi orang yang bersodaqoh. Sedangkan sodaqoh (menyediakan) makanan atau minuman untuk orang yang ta’ziyah hukumnya diperinci:

1.      Haram : Apabila ahli waris (keluarga almarhum) ada yang berstatus mahjûr ‘alaîh, seperti anak yang belum baligh.
2.      Makruh : Apabila semua ahli waris (keluarga almarhum) bukan mahjûr ‘alaîh dan semua ahli waris ridlo.

Meskipun hukum menyediakan makanan dan minuman kepada orang yang ta’ziyah adalah haram atau makruh, tapi tetap tidak menghilangkan pahalanya sodaqoh, bahkan walaupun hukumnya haram harus tetap dilakukan, kalau ada tujuan tertentu, seperti menghindari omongan (fitnah) dari tetangga sekitar.

Setelah selesai megubur jenazah, dianjurkan mendo’akan jenazah dengan do’a-do’a yang bermanfaat bagi arwahnya. Tendensi anjuran ini adalah hadits yang diriwayatkan Imam Abu Dâwud :

رُوِىَ عَنْ عُثْمَانَ رَضِىَ اللهُ عَنْهُ أَنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَانَ إِذَا دَفَنَ مَيْتًا وَقَفَ عِنْدَ قَبْرِهِ وَقَالَ اِسْتَغْفِرُوْا لِأَخِيْكُمْ وَاسْأَلُوْا اللهَ التَّثْبِيْتَ فَإِنَّهُ اْلآنَ يُسْأَلُ (رواه أبو داود)

Artinya: Diriwayatkan dari sahabat Utsman, Ia berkata : "Sesungguhnya ketika Nabi selasai mengubur jenazah, Beliau berdiri di dekat kuburan, kemudian bersabda : “ Mintalah kalian ampunan pada Allah untuk saudaramu agar diberi ketetapan (iman), karena sekarang Ia sedang ditanyai (malaikat Munkar-Nakir)”.          (HR. Imam Abu Dâwud)
      '''),
    Entry('Talqîn mayat', content: '''
Ulama sangat menganjurkan untuk dilakukannya talqin mayat, pijakan mereka adalah hadits Nabi yang diriwayatkan Imam Tabrâni :

عَنْ أَبِي أُمَامَةَ الْبَاهِلِيِّ أَنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ إذَا مَاتَ أَحَدُكُمْ فَسَوَّيْتُمْ عَلَيْهِ التُّرَابَ فَلْيَقُمْ أَحَدُكُمْ عَلَى رَأْسِ قَبْرِهِ فَيَقُولُ : اُذْكُرْ مَا خَرَجْتَ عَلَيْهِ مِنْ الدُّنْيَا : شَهَادَةَ أَنْ لَا إلَهَ إلَّا اللَّهُ وَأَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ , وَأَنَّكَ رَضِيتَ بِاَللَّهِ رَبًّا وَبِالْإِسْلَامِ دِينًا , وَبِمُحَمَّدٍ نَبِيًّا , وَبِالْقُرْآنِ إمَامًا فَإِنَّ نَكِيرًا وَمُنْكَرًا يَتَأَخَّرُ كُلُّ وَاحِدٍ مِنْهُمَا فَيَقُولُ اِنْطَلِقْ فَمَا يُقْعِدُنَا عِنْدَ هَذَا وَقَدْ لُقِّنَ حُجَّتَهُ وَيَكُوْنُ عِنْدَ اللهِ حَجِيْجُهُ دُوْنَهُمَا (رواه الطبرانى)

Artinya: Nabi bersabda : "Apabila salah satu dari kalian meninggal dunia, maka setelah menguburnya, hendaknya ada yang berdiri lurus dengan kepala kuburan (mayat) dan mengucapkan : “Ingatlah, ketika kamu keluar dari dunia, yaitu bersaksi bahwa tidak ada tuhan selain Allah dan Muhammad utusan-Nya, dan sesungguhnya kamu ridlo bahwa Allah adalah tuhanmu, Islam agamamu, Muhammad Nabimu dan Al Qur’an tuntunanmu, maka sesungguhnya malaikat Munkar dan Nakir saling menjauh, kemudian dia berkata (kepada temannya) : “Pergilah, jangan berlama-lama kita didekat orang ini, sesungguhnya dia telah diajari jawabannya”, dan jawaban yang diterima di sisi Allah adalah jawaban orang tersebut, bukan laporan dua malaikat tadi”. (HR. Thabrâni)
      '''),
    Entry('Ziarah kubur', content: '''
Semua Ulama Madzâhib al Arba'ah menyepakati kesunahan ziarah kubur, namun ada sedikit perbedaan dalam menentukan waktu yang utama untuk melaksanakan ziarah.
Hari yang utama untuk melakukan ziarah kubur :

~   Imam Hanafi dan Imam Mâliki : Hari Kamis, Jum’at dan Sabtu;
~   Imam Syâfi'i : Mulai 'Asarnya hari Kamis sampai keluarnya matahari pada hari Sabtu;
~   Imam Hambali : Tidak ada hari tertentu yang lebih utama untuk melakukan ziarah kubur.

Tendensi kesunahan melakukan ziarah kubur adalah hadits Nabi yang diriwayatkan Imam Muslim :

إِنَّ النَّبِىَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ :  كُنْتُ نَهَيْتُكُمْ عَنْ زِيَارَةِ الْقُبُورِ فَزُورُهَا فَإِنَّهَا تُذَكِّرُكُمْ الْمَوْتَ (رواه مسلم)

Artinya: Nabi bersabda : “Saya (dahulu) melarang kalian semua untuk ziarah kubur, maka sekarang berziarah kuburlah kalian, karena sesungguhnya ziarah kubur dapat mengingatkan kalian pada kematian”. (HR. Muslim).
      '''),
    Entry('Membaca tahlîl, Al Qur’an dan bersodaqoh untuk mayat', content: '''
Pahala dari membaca tahlîl, Al Qur’an dan bersodaqoh bisa sampai pada mayat. Tendensi pernyataan ini adalah firman Allah surat Al Hasyr : 10 :

قال الله تعالى : وَالَّذِينَ جَاءُوا مِنْ بَعْدِهِمْ يَقُولُونَ رَبَّنَا اغْفِرْ لَنَا وَلِإِخْوَانِنَا الَّذِينَ سَبَقُونَا بِالْإِيمَانِ (الحشر : 10)

Artinya: Allah berfirman Dan orang-orang yang datang setelah mereka (Muhajirin dan Anshar), mereka berdo’a "Wahai tuhan kami, ampunilah kami dan saudara-saudara kami yang telah beriman lebih dulu dari kami”. (QS. Al Hasyr : 10)

Dan hadits Nabi yang diriwayatkan Imam Bukhori Muslim dari sahabat Sa’ad Bin ‘Ubadah :

قَالَ سَعْدُ بْنُ عُبَادَةَ لِلنَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ  أَيَنْفَعُ أُمِّي إِذَا تَصَدَّّقْتُ عَنْهَا قَالَ نَعَمْ  (رواه البخاري ومسلم )

Artinya: Sa’ad bin 'Ubadah bertanya kepada Nabi: “Apakah dapat bermanfaat bagi ibu saya, apabila saya bersodaqoh atas nama ibu?”, Nabi menjawab: “Ya, dapat bermanfaat bagi ibumu”. (HR. Bukhôri-Muslim)
      '''),
    Entry('Tata cara ziarah kubur, membaca Al Qur’an atau tahlil dan sodaqoh untuk mayat : ', content: '''
Masuk pada areal pekuburan dengan mengucapkan salam kepada ahli kubur setempat (orang-orang yang di kubur di areal tersebut) dengan mengucapkan semisal lafadz :

السَّلامُ عَلَيْكُمْ دَارَ قَوْمٍ مُؤْمِنِيْنَ وَإِنَّا إِنْ شَاءَ اللهُ بِكُمْ لاحِقُوْنَ.

Artinya: “Semoga keselamatan selalu menyertai kalian semua, wahai orang-orang yang beriman, sesungguhnya jika Allah menghendaki, saya juga akan menyusul seperti kalian”.

Setelah sampai pada makam yang dituju membaca salam secara khusus seperti : اَلسَّلَامُ عَلَيْكُمْ يَا شَيْخِيْ .......

Kemudian duduk disebelah barat makam yang dituju dengan posisi menghadap kearah timur, lalu membaca tahlîl, Al Qur’an atau yang lainnya. Tata cara ini dilakukan apabila kondisi areal pekuburan memungkinkan untuk melakukan posisi semacam ini, kalau tidak mungkin seperti tata cara diatas, maka dengan posisi yang mungkin dia lakukan.

Syarat supaya pahala dari bacaan semisal tahlîl atau Al Qur’an dapat sampai pada mayat :
Pahala dari tahlîl atau Al Qur’an yang dibaca di selain tempat kuburannya orang yang kita ziarahi itu dapat sampai terhadap mayat jika setelah membaca, memanjatkan do’a agar pahala dari bacaan tadi sampai kepada mayat, seperti menggunakan lafadz :

اَللَّّهُمَّ أَوْصِلْ ثَوَابَ مَا قَرَأْنَاهُ .....الخ

Artinya ; ”Wahai tuhanku, sampaikanlah pahala dari apa yang saya baca kepada …..”(dan seterusnya).

Membaca tahlîl atau Al Qur’an di atas kuburan orang yang kita ziarahi, walaupun tidak ada do’a seperti di atas;
Mengkonsentrasikan pikiran sebelum membaca tahlîl atau Al Qur’an dengan menyengaja membaca tahlil atau Al Qur’an yang pahalanya dihadiahkan kepada mayat seperti mengucapkan اِلَى حَضْرَةِ .....
Artinya  : saya sampaikan ……

Supaya pahalanya sodaqoh dapat sampai pada mayit, maka harus ada tujuan memenghadiahkan pahalanya shodaqoh kepada mayat.

Tawassul dengan orang-orang shaleh atau wali-wali Allah

Syariat Islam (Ahlu sunnah wal jamâ'ah) memperbolehkan bahkan menganjurkan tawassul (membuat perantara) dengan orang-orang shaleh dan para wali Allah, baik ketika mereka masih hidup atau telah meninggal. Maksud tawassul adalah meminta sesuatu kepada Allah dengan menjadikan semisal wali sebagai perantara untuk memintakan sesuatu tersebut terhadap Allah, tawassul bukan berarti meminta kepada orang yang ditawassuli (orang yang dijadikan perantara), tapi tawassul sebenarnya tetap meminta kepada Allah. Sebagai dasar dianjurkannya tawassul adalah firman Alloh surat al Mâ-idah ayat 35

يَا أَيُّهَا الَّذِينَ آَمَنُوا اتَّقُوا اللَّهَ وَابْتَغُوا إِلَيْهِ الْوَسِيلَةَ وَجَاهِدُوا فِي سَبِيلِهِ لَعَلَّكُمْ تُفْلِحُونَ (المائدة : 35)

Artinya : Hai orang-orang yang beriman bertaqwalah Kepada Allah dan carilah jalan yang mendekatkan diri kepada-Nya, dan berjihadlah pada jalan-Nya, supaya kamu mendapat keberuntungan. (QS. Al Mâ-idah : 35)
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
                  // SUBTITLE MEMANDIKAN
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Materi Umum",
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
