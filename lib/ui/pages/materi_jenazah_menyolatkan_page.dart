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
    Entry('Hukum Shalat Jenazah', content: '''
Shalat jenazah hukumnya fardhu kifayah berdasarkan keumuman perintah Rasulullah Shallallahu ‘alaihi wa sallam untuk menyalati jenazah seorang muslim. Dari Abu Hurairah radhiallahu’anhu, ia berkata:
أنَّ رسولَ اللهِ صلَّى اللهُ عليه وسلَّمَ كان يُؤتى بالرجلِ الميتِ ، عليه الدين . فيسأل ( هل ترك لدَينه من قضاءٍ ؟ ) فإن حدث أنه ترك وفاءً صلَّى عليه . وإلا قال ( صلُّوا على صاحبِكم)
Rasulullah Shallallahu’alaihi Wasallam pernah didatangkan kepada beliau jenazah seorang lelaki. Lelaki tersebut masih memiliki hutang. Maka beliau bertanya: “Apakah ia memiliki harta peninggalan untuk melunasi hutangnya?”. Jika ada yang menyampaikan bahwa orang tersebut memilikiharta peninggalan untuk melunasi hutangnya, maka Nabi pun menyalatkannya. Jika tidak ada, maka beliau bersabda: “Shalatkanlah saudara kalian” (HR Muslim no. 1619).
Bahkan dianjurkan sebanyak mungkin kaum Muslimin menshalatkan orang yang meninggal, agar ia mendapatkan syafa’at. Rasulullah Shallallahu’alaihi Wasallam bersabda:
مَا مِنْ مَيِّتٍ تُصَلِّي عَلَيْهِ أُمَّةٌ مِنْ الْمُسْلِمِينَ يَبْلُغُونَ مِائَةً كُلُّهُمْ يَشْفَعُونَ لَهُ إِلَّا شُفِّعُوا فِيهِ

“Tidaklah seorang Muslim meninggal,lalu dishalatkan oleh kaum muslimin yang jumlahnya mencapai seratus orang, semuanya mendo’akan untuknya, niscaya mereka bisa memberikan syafa’at untuk si mayit” (HR. Muslim no. 947).
Rasulullah Shallallahu’alaihi Wasallam juga bersabda:
مَا مِنْ رَجُلٍ مُسْلِمٍ يَمُوتُ فَيَقُومُ عَلَى جَنَازَتِهِ أرْبَعُونَ رَجُلا، لا يُشْرِكُونَ بِالله شَيْئاً إِلا شَفَّعَهُمُ اللهُ فِيهِ
“Tidaklah seorang Muslim meninggal, lalu dishalatkan oleh empat puluh orang yang tidak berbuat syirik kepada Allah sedikit pun, kecuali Allah akan memberikan syafaat kepada jenazah tersebut dengan sebab mereka” (HR. Muslim no. 948).
'''),
    Entry('Tata Cara Shalat Jenazah', children: <Entry>[
      Entry('1. Posisi berdiri', content: '''
Imam berdiri sejajar dengan kepala mayit lelaki dan bila mayitnya wanita, imam berdiri di bagian tengahnya. Makmum berdiri di belakang imam. Sebagaimana dalam hadits Abu Ghalib:
قال العلاءُ بن زياد: يا أبا حمزةَ، هكذا كانَ يفعَلُ رسولُ اللهِ صلَّى الله عليه وسلَّم؛ يُصلِّي على الجِنازة كصلاتِك، يُكبِّر عليها أربعًا، ويقومُ عند رأس الرَّجُلِ وعجيزةِ المرأة؟ قال: نعم
“Al ‘Ala bin Ziyad mengatakan: wahai Abu Hamzah (Anas bin Malik), apakahpraktek Rasulullah Shallallahu’alaihi Wasallam dalam shalat jenazah seperti yang engkau lakukan? Bertakbir 3 kali, berdiri di bagian kepala lelaki dan di bagian tengah wanita? Anas bin Malik menjawab: iya” (HR. Abu Daud no. 3194, At Tirmidzi no. 1034, dishahihkan Al Albani dalam Shahih Sunan Abi Daud).
'''),
      Entry('2. Jumlah shaf', content: '''
Sebagian ulama menganjurkan untuk membuat tiga shaf (barisan) walaupun shaf pertama masih longgar. Berdasarkan hadits:
مَنْ صَلَّى عَلَيْهِ ثَلَاثَةُ صُفُوفٍ فَقَدْ أَوْجَبَ
“Barangsiapa yang menshalatkan jenazah dengan membuat tiga shaf, maka wajib baginya (mendapatkan ampunan)” (HR. Tirmidzi no. 1028).
Ulama khilaf mengenai derajat hadits ini. Pokok permasalahannya adalah pada perawi bernama Muhammad bin Ishaq Al Qurasyi yang merupakan seorang mudallis, dan dalam hadits ini ia melakukan ‘an’anah. Ada pembahasan di antara para ulama mengenai ‘an’anah Ibnu Ishaq.
Wallahu a’lam, hadits ini lemah karena ‘an’anah Ibnu Ishaq. Sebagaimana Syaikh Al Albani dalam Dha’if Al Jami‘ (no. 5668) menyatakan hadits ini lemah.
Maka yang menjadi ibrah (hal yang diperhatikan) adalah banyaknya jumlah orang yang menyalati sebagaimana dalam hadits riwayat Muslim, bukan sekedar jumlah tiga shaf.
'''),
      Entry('3. Jumlah takbir dan mengangkat tangan', content: '''
Takbir shalat jenazah sebanyak empat kali. Ulama ijma akan hal ini. Dari Jabir bin Abdillah radhiallahu’anhu:
أنَّ رسولَ الله صلَّى الله عليه وسلَّم صلَّى على أَصْحمَةَ النجاشيِّ، فكبَّر عليه أربعًا
“Rasulullah Shallallahu’alaihi Wasallam menshalati Ash-hamah An Najasyi, beliau bertakbir empat kali” (HR. Bukhari no. 1334, Muslim no. 952).
Ulama ijma mengenai disyariatkannya mengangkat tangan untuk takbir yang pertama. Ibnu Mundzir mengatakan:
أجمَعوا على أنَّ المصلِّي على الجِنازَة يرفع يديه في أوَّل تكبيرة يُكبِّرها
“Ulama ijma bahwa orang yang shalat jenazah disyartiatkan mengangkat tangan di takbir yang pertama” (Al Ijma, 44).
Namun mereka khilaf mengenai mengangkat tangan untuk takbir selainnya. Yang rajih, disunnahkan untuk mengangkat tangan dalam setiap takbir dalam shalat jenazah. Berdasarkan riwayat dari Nafi’ tentang Ibnu Umar radhiallahu’anhu, Nafi’ berkata:
كان يرفعُ يَديهِ في كلِّ تكبيرةٍ على الجِنازة
“Ibnu Umar radhiallahu’anhu mengangkat tangannya di setiap kali takbir dalam shalat jenazah” (HR. Ibnu Abi Syaibah dalam Al Mushannaf [11498], dihasankan Syaikh Ibnu Baz dalam Ta’liq beliau terhadap Fathul Baari [3/227]).
Juga riwayat dari Ibnu Abbas:
أنَّه كان يرفعُ يَديهِ في تكبيراتِ الجِنازة
“Bahwasanya beliau biasa mengangkat kedua tangannya setiap kali takbir di shalat jenazah” (dishahihkan Ibnu Hajar dalam Talkhis Al Habir, 2/291).
'''),
      Entry('4. Tempat shalat jenazah', content: '''
Shalat jenazah lebih utama dilakukan di luar masjid. Sebagaimana yang umum dilakukan di zaman Nabi Shallallahu’alaihi Wasallam. Dari Abu Hurairah radhiallahu’anhu, ia berkata:
أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ نَعَى النَّجَاشِيَّ فِي الْيَوْمِ الَّذِي مَاتَ فِيهِ ، خَرَجَ إِلَى الْمُصَلَّى فَصَفَّ بِهِمْ ، وَكَبَّرَ أَرْبَعًا
“Rasulullah Shallallahu’alaihi Wasallam mengumumkan kematian An Najasyi di hari ia wafat. Kemudian beliau keluar ke lapangan lalu menyusun shaf untuk shalat, kemudian bertakbir empat kali” (HR. Bukhari no.1245).
Namun boleh juga dikerjakan di dalam masjid. Dari Aisyah radhiyallahu ‘anha, ia berkata:

وَاللهِ مَا صَلَّى رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَلَى سُهَيْلِ بْنِ بَيْضَاءَ وَأَخِيْهِ إِلَّا فِي الْمَسْجِدِ
“Demi, Allah! Tidaklah Nabi Shallallahu’alaihi Wasallam menyalatkan jenazah Suhail bin Baidha’ dan saudaranya (Sahl), kecuali di masjid” (HR Muslim no. 973).
Dibolehkan bagi orang yang belum sempat menshalatkan jenazah sebelum dikuburkan, lalu ia melakukan shalat jenazah di pemakaman. Sebagaimana dalam riwayat dari Ibnu Abbas radhiallahu’anhuma:
مَاتَ إِنْسَانٌ كَانَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَعُودُهُ، فَمَاتَ بِاللَّيْلِ فَدَفَنُوهُ لَيْلًا، فَلَمَّا أَصْبَحَ أَخْبَرُوهُ فَقَالَ: «مَا مَنَعَكُمْ أَنْ تُعْلِمُونِي؟» قَالُوا: «كَانَ اللَّيْلُ فَكَرِهْنَا ـ وَكَانَتْ ظُلْمَةٌ ـ أَنْ نَشُقَّ عَلَيْكَ»، فَأَتَى قَبْرَهُ فَصَلَّى عَلَيْهِ
“Seseorang yang biasa dikunjungi Rasulullah Shallallahu’alaihi Wasallam telah meninggal. Ia meninggal di malam hari, maka ia pun dikuburkan di malam hari. Ketika pagi hari tiba, para sahabat mengabarkan hal ini kepada Rasulullah. Beliau pun bersabda: apa yang menghalangi kalian untuk segera memberitahukan aku? Para sahabat menjawab: ketika itu malam hari, kami tidak ingin mengganggumu wahai Rasulullah. Maka beliau pun mendatangi kuburannya dan shalat jenazah di sana” (HR. Bukhari no. 1247).
Demikian juga dalam riwayat Muslim:
انْتَهَى رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ إِلَى قَبْرٍ رَطْبٍ؛ فَصَلَّى عَلَيْهِ وَصَفُّوا خَلْفَهُ وَكَبَّرَ أَرْبَعًا
“Rasulullah Shallallahu’alaihi Wasallam pernah berhenti di sebuah kuburan yang masih basah. Ia shalat (jenazah) di sana dan menyusun shaf untuk shalat. Beliau bertakbir empat kali” (HR. Muslim no. 954).
'''),
      Entry('5. Tata cara shalat', content: '''
Pertama, niat shalat jenazah. Dan niat adalah amalan hati tidak perlu dilafalkan.
Kedua, takbir yang pertama, membaca ta’awwudz kemudian Al Fatihah. Berdasarkan keumuman hadits:
لا صلاةَ لِمَن لم يقرأْ بفاتحةِ الكتابِ
“Tidak ada shalat yang tidak membaca Al Fatihah” (HR. Bukhari no. 756, Muslim no. 394).
Kemudian riwayat dari Thalhah bin Abdillah bin Auf, ia berkata:
صليتُ خلفَ ابنِ عبَّاسٍ رَضِيَ اللَّهُ عنهما على جِنازة، فقرَأَ بفاتحةِ الكتابِ، قال: لِيَعْلموا أنَّها سُنَّةٌ
“Aku shalat bermakmum kepada Ibnu Abbas radhiallahu’anhu dalam shalat jenazah. Beliau membaca Al Fatihah. Beliau lalu berkata: agar mereka tahu bahwa ini adalah sunnah (Nabi)” (HR. Bukhari no. 1335).
Dan tidak perlu membaca do’a istiftah / iftitah sebelum Al Fatihah.

Ketiga, takbir yang kedua, kemudian membaca shalawat kepada Nabi Shallallahu ‘alaihi wa sallam. Berdasarkan hadits dari Abu Umamah Al Bahili radhiallahu’anhu:
أنَّ السُّنَّةَ في الصَّلاةِ على الجِنازة أن يُكبِّرَ الإمامُ، ثم يقرأَ بفاتحةِ الكتابِ- بعدَ التكبيرة الأولى- سِرًّا في نفْسِه، ثم يُصلِّيَ على النبيِّ صلَّى الله عليه وسلَّم، ويُخلِصَ الدُّعاءَ للميِّت في التكبيراتِ، لا يقرأُ فى شىءٍ منهنَّ، ثم يُسلِّم
“Bahwa sunnah dalam shalat jenazah adalah imam bertakbir kemudian membaca Al Fatihah (setelah takbir pertama) secara sirr (lirih), kemudian bershalawat kepada Nabi Shallallahu’alaihi Wasallam, kemudian berdoa untuk mayit setelah beberapa takbir. Kemudian setelah itu tidak membaca apa-apa lagi setelah itu. Kemudian salam” (HR. Asy Syafi’i dalam Musnad-nya [no. 588], Al Baihaqi dalam Sunan Al Kubra [7209], dishahihkan Al Albani dalam Ahkamul Janaiz).
Keempat, takbir yang ketiga, kemudian membaca doa untuk mayit. Berdasarkan hadits Abu Umamah di atas. Diantara doa yang bisa dibaca adalah:
اللَّهُمَّ اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ وَأَكْرِمْ نُزُلَهُ وَوَسِّعْ مُدْخَلَهُ وَاغْسِلْهُ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَدِ وَنَقِّهِ مِنَ الْخَطَايَا كَمَا نَقَّيْتَ الثَّوْبَ الْأَبْيَضَ مِنَ الدَّنَسِ وَأَبْدِلْهُ دَارًا خَيْرًا مِنْ دَارِهِ وَأَهْلًا خَيْرًا مِنْ أَهْلِهِ وَزَوْجًا خَيْرًا مِنْ زَوْجِهِ وَأَدْخِلْهُ الْجَنَّةَ وَأَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَمِنْ عَذَابِ النَّارِ
“Ya Allah, berilah ampunan baginya dan rahmatilah dia. Selamatkanlah dan maafkanlah ia. Berilah kehormatan untuknya, luaskanlah tempat masuknya, mandikanlah ia dengan air, es dan salju. Bersihkanlah dia dari kesalahannya sebagaimana Engkau bersihkan baju yang putih dari kotoran. Gantikanlah baginya rumah yang lebih baik dari rumahnya, keluarga yang lebih baik dari keluarganya semula, istri yang lebih baik dari istrinya semula. Masukkanlah ia ke dalam surga, lindungilah ia dari adzab kubur dan adzab neraka” (HR Muslim no. 963).
اللَّهُمَّ اغْفِرْ لِحَيِّنَا وَمَيِّتِنَا وَشَاهِدِنَا وَغَائِبِنَا وَصَغِيرِنَا وَكَبِيرِنَا وَذَكَرِنَا وَأُنْثَانَا
“Ya Allah, ampunilah orang yang hidup di antara kami dan orang yang telah mati, yang hadir dan yang tidak hadir, (juga) anak kecil dan orang dewasa, lelaki dan wanita di antara kami” (HR At Tirmidzi no. 1024, ia berkata: “hasan shahih”).
Keempat, takbir keempat. Kemudian diam sejenak atau boleh juga membaca doa untuk mayit menurut sebagian ulama. Yang lebih utama adalah diam sejenak dan tidak membaca apa-apa sebagaimana zhahir dalam hadits Abu Umamah radhiallahu’anhu.
Kelima, salam. Dan sifat salamnya sebagaimana salam dalam shalat yang lain. Sebagaimana dalam hadits Ibnu Mas’ud radhiallahu’anhu:
ثلاثُ خِلالٍ كان رسولُ اللهِ صلَّى الله عليه وسلَّم يفعلهنَّ، ترَكَهنَّ النَّاسُ؛ إحداهنَّ: التسليمُ على الجِنازة مِثل التَّسليمِ في الصَّلاةِ
“Ada 3 perkara yang dahulu Rasulullah Shallallahu ‘alaihi wa sallam benar-benar melakukannya dan kemudian banyak ditinggalkan orang: salah satunya salam di shalat jenazah semisal dengan salam dalam shalat yang lain..” (HR. Ath Thabrani no. 10022, dihasankan Al Albani dalam Ahkamul Janaiz).
'''),
    ]),
    Entry('Sumber', content: '''
https://muslim.or.id/44196-fikih-pengurusan-jenazah-2-shalat-jenazah.html
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Hukum Shalat Jenazah', content: '''
Shalat jenazah hukumnya fardhu kifayah berdasarkan keumuman perintah Rasulullah Shallallahu ‘alaihi wa sallam untuk menyalati jenazah seorang muslim. Dari Abu Hurairah radhiallahu’anhu, ia berkata:
أنَّ رسولَ اللهِ صلَّى اللهُ عليه وسلَّمَ كان يُؤتى بالرجلِ الميتِ ، عليه الدين . فيسأل ( هل ترك لدَينه من قضاءٍ ؟ ) فإن حدث أنه ترك وفاءً صلَّى عليه . وإلا قال ( صلُّوا على صاحبِكم)
Rasulullah Shallallahu’alaihi Wasallam pernah didatangkan kepada beliau jenazah seorang lelaki. Lelaki tersebut masih memiliki hutang. Maka beliau bertanya: “Apakah ia memiliki harta peninggalan untuk melunasi hutangnya?”. Jika ada yang menyampaikan bahwa orang tersebut memilikiharta peninggalan untuk melunasi hutangnya, maka Nabi pun menyalatkannya. Jika tidak ada, maka beliau bersabda: “Shalatkanlah saudara kalian” (HR Muslim no. 1619).
Bahkan dianjurkan sebanyak mungkin kaum Muslimin menshalatkan orang yang meninggal, agar ia mendapatkan syafa’at. Rasulullah Shallallahu’alaihi Wasallam bersabda:
مَا مِنْ مَيِّتٍ تُصَلِّي عَلَيْهِ أُمَّةٌ مِنْ الْمُسْلِمِينَ يَبْلُغُونَ مِائَةً كُلُّهُمْ يَشْفَعُونَ لَهُ إِلَّا شُفِّعُوا فِيهِ

“Tidaklah seorang Muslim meninggal,lalu dishalatkan oleh kaum muslimin yang jumlahnya mencapai seratus orang, semuanya mendo’akan untuknya, niscaya mereka bisa memberikan syafa’at untuk si mayit” (HR. Muslim no. 947).
Rasulullah Shallallahu’alaihi Wasallam juga bersabda:
مَا مِنْ رَجُلٍ مُسْلِمٍ يَمُوتُ فَيَقُومُ عَلَى جَنَازَتِهِ أرْبَعُونَ رَجُلا، لا يُشْرِكُونَ بِالله شَيْئاً إِلا شَفَّعَهُمُ اللهُ فِيهِ
“Tidaklah seorang Muslim meninggal, lalu dishalatkan oleh empat puluh orang yang tidak berbuat syirik kepada Allah sedikit pun, kecuali Allah akan memberikan syafaat kepada jenazah tersebut dengan sebab mereka” (HR. Muslim no. 948).
'''),
    Entry('Tata Cara Shalat Jenazah', children: <Entry>[
      Entry('1. Posisi berdiri', content: '''
Imam berdiri sejajar dengan kepala mayit lelaki dan bila mayitnya wanita, imam berdiri di bagian tengahnya. Makmum berdiri di belakang imam. Sebagaimana dalam hadits Abu Ghalib:
قال العلاءُ بن زياد: يا أبا حمزةَ، هكذا كانَ يفعَلُ رسولُ اللهِ صلَّى الله عليه وسلَّم؛ يُصلِّي على الجِنازة كصلاتِك، يُكبِّر عليها أربعًا، ويقومُ عند رأس الرَّجُلِ وعجيزةِ المرأة؟ قال: نعم
“Al ‘Ala bin Ziyad mengatakan: wahai Abu Hamzah (Anas bin Malik), apakahpraktek Rasulullah Shallallahu’alaihi Wasallam dalam shalat jenazah seperti yang engkau lakukan? Bertakbir 3 kali, berdiri di bagian kepala lelaki dan di bagian tengah wanita? Anas bin Malik menjawab: iya” (HR. Abu Daud no. 3194, At Tirmidzi no. 1034, dishahihkan Al Albani dalam Shahih Sunan Abi Daud).
'''),
      Entry('2. Jumlah shaf', content: '''
Sebagian ulama menganjurkan untuk membuat tiga shaf (barisan) walaupun shaf pertama masih longgar. Berdasarkan hadits:
مَنْ صَلَّى عَلَيْهِ ثَلَاثَةُ صُفُوفٍ فَقَدْ أَوْجَبَ
“Barangsiapa yang menshalatkan jenazah dengan membuat tiga shaf, maka wajib baginya (mendapatkan ampunan)” (HR. Tirmidzi no. 1028).
Ulama khilaf mengenai derajat hadits ini. Pokok permasalahannya adalah pada perawi bernama Muhammad bin Ishaq Al Qurasyi yang merupakan seorang mudallis, dan dalam hadits ini ia melakukan ‘an’anah. Ada pembahasan di antara para ulama mengenai ‘an’anah Ibnu Ishaq.
Wallahu a’lam, hadits ini lemah karena ‘an’anah Ibnu Ishaq. Sebagaimana Syaikh Al Albani dalam Dha’if Al Jami‘ (no. 5668) menyatakan hadits ini lemah.
Maka yang menjadi ibrah (hal yang diperhatikan) adalah banyaknya jumlah orang yang menyalati sebagaimana dalam hadits riwayat Muslim, bukan sekedar jumlah tiga shaf.
'''),
      Entry('3. Jumlah takbir dan mengangkat tangan', content: '''
Takbir shalat jenazah sebanyak empat kali. Ulama ijma akan hal ini. Dari Jabir bin Abdillah radhiallahu’anhu:
أنَّ رسولَ الله صلَّى الله عليه وسلَّم صلَّى على أَصْحمَةَ النجاشيِّ، فكبَّر عليه أربعًا
“Rasulullah Shallallahu’alaihi Wasallam menshalati Ash-hamah An Najasyi, beliau bertakbir empat kali” (HR. Bukhari no. 1334, Muslim no. 952).
Ulama ijma mengenai disyariatkannya mengangkat tangan untuk takbir yang pertama. Ibnu Mundzir mengatakan:
أجمَعوا على أنَّ المصلِّي على الجِنازَة يرفع يديه في أوَّل تكبيرة يُكبِّرها
“Ulama ijma bahwa orang yang shalat jenazah disyartiatkan mengangkat tangan di takbir yang pertama” (Al Ijma, 44).
Namun mereka khilaf mengenai mengangkat tangan untuk takbir selainnya. Yang rajih, disunnahkan untuk mengangkat tangan dalam setiap takbir dalam shalat jenazah. Berdasarkan riwayat dari Nafi’ tentang Ibnu Umar radhiallahu’anhu, Nafi’ berkata:
كان يرفعُ يَديهِ في كلِّ تكبيرةٍ على الجِنازة
“Ibnu Umar radhiallahu’anhu mengangkat tangannya di setiap kali takbir dalam shalat jenazah” (HR. Ibnu Abi Syaibah dalam Al Mushannaf [11498], dihasankan Syaikh Ibnu Baz dalam Ta’liq beliau terhadap Fathul Baari [3/227]).
Juga riwayat dari Ibnu Abbas:
أنَّه كان يرفعُ يَديهِ في تكبيراتِ الجِنازة
“Bahwasanya beliau biasa mengangkat kedua tangannya setiap kali takbir di shalat jenazah” (dishahihkan Ibnu Hajar dalam Talkhis Al Habir, 2/291).
'''),
      Entry('4. Tempat shalat jenazah', content: '''
Shalat jenazah lebih utama dilakukan di luar masjid. Sebagaimana yang umum dilakukan di zaman Nabi Shallallahu’alaihi Wasallam. Dari Abu Hurairah radhiallahu’anhu, ia berkata:
أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ نَعَى النَّجَاشِيَّ فِي الْيَوْمِ الَّذِي مَاتَ فِيهِ ، خَرَجَ إِلَى الْمُصَلَّى فَصَفَّ بِهِمْ ، وَكَبَّرَ أَرْبَعًا
“Rasulullah Shallallahu’alaihi Wasallam mengumumkan kematian An Najasyi di hari ia wafat. Kemudian beliau keluar ke lapangan lalu menyusun shaf untuk shalat, kemudian bertakbir empat kali” (HR. Bukhari no.1245).
Namun boleh juga dikerjakan di dalam masjid. Dari Aisyah radhiyallahu ‘anha, ia berkata:

وَاللهِ مَا صَلَّى رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَلَى سُهَيْلِ بْنِ بَيْضَاءَ وَأَخِيْهِ إِلَّا فِي الْمَسْجِدِ
“Demi, Allah! Tidaklah Nabi Shallallahu’alaihi Wasallam menyalatkan jenazah Suhail bin Baidha’ dan saudaranya (Sahl), kecuali di masjid” (HR Muslim no. 973).
Dibolehkan bagi orang yang belum sempat menshalatkan jenazah sebelum dikuburkan, lalu ia melakukan shalat jenazah di pemakaman. Sebagaimana dalam riwayat dari Ibnu Abbas radhiallahu’anhuma:
مَاتَ إِنْسَانٌ كَانَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَعُودُهُ، فَمَاتَ بِاللَّيْلِ فَدَفَنُوهُ لَيْلًا، فَلَمَّا أَصْبَحَ أَخْبَرُوهُ فَقَالَ: «مَا مَنَعَكُمْ أَنْ تُعْلِمُونِي؟» قَالُوا: «كَانَ اللَّيْلُ فَكَرِهْنَا ـ وَكَانَتْ ظُلْمَةٌ ـ أَنْ نَشُقَّ عَلَيْكَ»، فَأَتَى قَبْرَهُ فَصَلَّى عَلَيْهِ
“Seseorang yang biasa dikunjungi Rasulullah Shallallahu’alaihi Wasallam telah meninggal. Ia meninggal di malam hari, maka ia pun dikuburkan di malam hari. Ketika pagi hari tiba, para sahabat mengabarkan hal ini kepada Rasulullah. Beliau pun bersabda: apa yang menghalangi kalian untuk segera memberitahukan aku? Para sahabat menjawab: ketika itu malam hari, kami tidak ingin mengganggumu wahai Rasulullah. Maka beliau pun mendatangi kuburannya dan shalat jenazah di sana” (HR. Bukhari no. 1247).
Demikian juga dalam riwayat Muslim:
انْتَهَى رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ إِلَى قَبْرٍ رَطْبٍ؛ فَصَلَّى عَلَيْهِ وَصَفُّوا خَلْفَهُ وَكَبَّرَ أَرْبَعًا
“Rasulullah Shallallahu’alaihi Wasallam pernah berhenti di sebuah kuburan yang masih basah. Ia shalat (jenazah) di sana dan menyusun shaf untuk shalat. Beliau bertakbir empat kali” (HR. Muslim no. 954).
'''),
      Entry('5. Tata cara shalat', content: '''
Pertama, niat shalat jenazah. Dan niat adalah amalan hati tidak perlu dilafalkan.
Kedua, takbir yang pertama, membaca ta’awwudz kemudian Al Fatihah. Berdasarkan keumuman hadits:
لا صلاةَ لِمَن لم يقرأْ بفاتحةِ الكتابِ
“Tidak ada shalat yang tidak membaca Al Fatihah” (HR. Bukhari no. 756, Muslim no. 394).
Kemudian riwayat dari Thalhah bin Abdillah bin Auf, ia berkata:
صليتُ خلفَ ابنِ عبَّاسٍ رَضِيَ اللَّهُ عنهما على جِنازة، فقرَأَ بفاتحةِ الكتابِ، قال: لِيَعْلموا أنَّها سُنَّةٌ
“Aku shalat bermakmum kepada Ibnu Abbas radhiallahu’anhu dalam shalat jenazah. Beliau membaca Al Fatihah. Beliau lalu berkata: agar mereka tahu bahwa ini adalah sunnah (Nabi)” (HR. Bukhari no. 1335).
Dan tidak perlu membaca do’a istiftah / iftitah sebelum Al Fatihah.

Ketiga, takbir yang kedua, kemudian membaca shalawat kepada Nabi Shallallahu ‘alaihi wa sallam. Berdasarkan hadits dari Abu Umamah Al Bahili radhiallahu’anhu:
أنَّ السُّنَّةَ في الصَّلاةِ على الجِنازة أن يُكبِّرَ الإمامُ، ثم يقرأَ بفاتحةِ الكتابِ- بعدَ التكبيرة الأولى- سِرًّا في نفْسِه، ثم يُصلِّيَ على النبيِّ صلَّى الله عليه وسلَّم، ويُخلِصَ الدُّعاءَ للميِّت في التكبيراتِ، لا يقرأُ فى شىءٍ منهنَّ، ثم يُسلِّم
“Bahwa sunnah dalam shalat jenazah adalah imam bertakbir kemudian membaca Al Fatihah (setelah takbir pertama) secara sirr (lirih), kemudian bershalawat kepada Nabi Shallallahu’alaihi Wasallam, kemudian berdoa untuk mayit setelah beberapa takbir. Kemudian setelah itu tidak membaca apa-apa lagi setelah itu. Kemudian salam” (HR. Asy Syafi’i dalam Musnad-nya [no. 588], Al Baihaqi dalam Sunan Al Kubra [7209], dishahihkan Al Albani dalam Ahkamul Janaiz).
Keempat, takbir yang ketiga, kemudian membaca doa untuk mayit. Berdasarkan hadits Abu Umamah di atas. Diantara doa yang bisa dibaca adalah:
اللَّهُمَّ اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ وَأَكْرِمْ نُزُلَهُ وَوَسِّعْ مُدْخَلَهُ وَاغْسِلْهُ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَدِ وَنَقِّهِ مِنَ الْخَطَايَا كَمَا نَقَّيْتَ الثَّوْبَ الْأَبْيَضَ مِنَ الدَّنَسِ وَأَبْدِلْهُ دَارًا خَيْرًا مِنْ دَارِهِ وَأَهْلًا خَيْرًا مِنْ أَهْلِهِ وَزَوْجًا خَيْرًا مِنْ زَوْجِهِ وَأَدْخِلْهُ الْجَنَّةَ وَأَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَمِنْ عَذَابِ النَّارِ
“Ya Allah, berilah ampunan baginya dan rahmatilah dia. Selamatkanlah dan maafkanlah ia. Berilah kehormatan untuknya, luaskanlah tempat masuknya, mandikanlah ia dengan air, es dan salju. Bersihkanlah dia dari kesalahannya sebagaimana Engkau bersihkan baju yang putih dari kotoran. Gantikanlah baginya rumah yang lebih baik dari rumahnya, keluarga yang lebih baik dari keluarganya semula, istri yang lebih baik dari istrinya semula. Masukkanlah ia ke dalam surga, lindungilah ia dari adzab kubur dan adzab neraka” (HR Muslim no. 963).
اللَّهُمَّ اغْفِرْ لِحَيِّنَا وَمَيِّتِنَا وَشَاهِدِنَا وَغَائِبِنَا وَصَغِيرِنَا وَكَبِيرِنَا وَذَكَرِنَا وَأُنْثَانَا
“Ya Allah, ampunilah orang yang hidup di antara kami dan orang yang telah mati, yang hadir dan yang tidak hadir, (juga) anak kecil dan orang dewasa, lelaki dan wanita di antara kami” (HR At Tirmidzi no. 1024, ia berkata: “hasan shahih”).
Keempat, takbir keempat. Kemudian diam sejenak atau boleh juga membaca doa untuk mayit menurut sebagian ulama. Yang lebih utama adalah diam sejenak dan tidak membaca apa-apa sebagaimana zhahir dalam hadits Abu Umamah radhiallahu’anhu.
Kelima, salam. Dan sifat salamnya sebagaimana salam dalam shalat yang lain. Sebagaimana dalam hadits Ibnu Mas’ud radhiallahu’anhu:
ثلاثُ خِلالٍ كان رسولُ اللهِ صلَّى الله عليه وسلَّم يفعلهنَّ، ترَكَهنَّ النَّاسُ؛ إحداهنَّ: التسليمُ على الجِنازة مِثل التَّسليمِ في الصَّلاةِ
“Ada 3 perkara yang dahulu Rasulullah Shallallahu ‘alaihi wa sallam benar-benar melakukannya dan kemudian banyak ditinggalkan orang: salah satunya salam di shalat jenazah semisal dengan salam dalam shalat yang lain..” (HR. Ath Thabrani no. 10022, dihasankan Al Albani dalam Ahkamul Janaiz).
'''),
    ]),
    Entry('Sumber', content: '''
https://muslim.or.id/44196-fikih-pengurusan-jenazah-2-shalat-jenazah.html
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
            // SUBTITLE MENYOLATKAN
            Center(
                child: Text(
                  "Menyolatkan",
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
