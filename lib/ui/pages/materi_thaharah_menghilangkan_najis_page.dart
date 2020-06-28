part of 'pages.dart';

class MateriThaharahMenghilangkanNajisPage extends StatefulWidget {
  @override
  _MateriThaharahMenghilangkanNajisPageState createState() =>
      _MateriThaharahMenghilangkanNajisPageState();
}

class _MateriThaharahMenghilangkanNajisPageState
    extends State<MateriThaharahMenghilangkanNajisPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Pengertian Najis', content: '''
Najasah atau najis secara bahasa artinya kotoran. Najasah atau najis dalam istilah syariat adalah segala sesuatu yang dianggap kotor oleh syariat. Dalam Ar Raudhatun Nadiyyah disebutkan,

النجاسات جمع نجاسة, و هي كل شيئ يستقذره أهل الطبائع السليمة و يتحفظون عنه و يغسلون الثياب إذا أصابهم كالعذرة و البول

“Najasat adalah bentuk jamak dari najasah, ia adalah segala sesuatu yang dianggap kotor oleh orang-orang yang memiliki fitrah yang bersih dan mereka akan berusaha menjauhinya dan membersihkan pakaiannya jika terkena olehnya semisal kotoran manusia dan air seni”.

Dalam Al Fiqhul Muyassar disebutkan,

النجاسة: هي كل عين مستقذرة أمر الشارع باجتنابها

“Najasah adalah setiap hal yang dianggap kotor yang diperintahkan oleh syariat untuk menjauhinya”.

Dari penyataan “dianggap kotor oleh syariat” dalam definisi-definisi yang disebutkan para ulama menunjukkan bahwa tidak semua yang kotor menurut manusia itu adalah najis dalam istilah syar’i, dan juga menunjukkan bahwa menentukan najis atau tidaknya sesuatu itu harus dilandasi dalil. Jika tidak ada dalil yang menunjukkan najisnya sesuatu tersebut, maka ia suci. Syaikh Abdurrahman bin Nashir As Sa’di mengatakan:

يجب أن يعلم أن الأصل في جميع الأشياء الطهارة فلا تنجس و لا ينجس منها إلا ما دل عليه الشرع

“wajib diketahui bahwa hukum asal dari segala sesuatu itu suci, maka tidak boleh mengatakan ia sesuatu itu najis atau menajiskan kecuali ada dalil dari syariat”.

Maka najis tidak bisa ditentukan dengan akal atau perasaan seseorang bahwa sesuatu itu najis, melainkan harus berdasarkan dalil. Dan yang dituntut dari kita terhadap najis adalah kita diperintahkan untuk menjauhinya dan membersihkan diri darinya jika terkena najis.

Kemudian, najis berbeda dengan pembatal wudhu. Dan jika seseorang terkena najis, wudhunya tidak menjadi batal, namun ia wajib membersihkan najis tersebut
'''),
    Entry('Perintah Membersihkan Najis', content: '''
Syariat memerintahkan kita untuk membersihkan diri dari najis dalam banyak dalil dari Al Qur’an dan As Sunnah. Diantaranya firman Allah Ta’ala:

وَثِيَابَكَ فَطَهِّرْ

“dan pakaianmu sucikanlah” (QS. Al Mudatsir: 4).

Allah Ta’ala juga berfirman:

وَعَهِدْنَا إِلَى إِبْرَاهِيمَ وَإِسْمَاعِيلَ أَن طَهِّرَا بَيْتِيَ لِلطَّائِفِينَ وَالْعَاكِفِينَ وَالرُّكَّعِ السُّجُودِ

“Dan kami perintahkan kepada Ibrahim dan Ismail untuk mensucikan rumah-Ku bagi orang-orang yang ber-thawaf, ber-i’tikaf dan orang-orang yang rukuk dan sujud” (QS. Al Baqarah: 125).

Dari Ibnu Abbas radhiallahu’anhu, Nabi Shallallahu’alaihi Wasallam bersabda:

مَرَّ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَلَى قَبْرَيْنِ فَقَالَ أَمَا إِنَّهُمَا لَيُعَذَّبَانِ وَمَا يُعَذَّبَانِ فِي كَبِيرٍ أَمَّا أَحَدُهُمَا فَكَانَ يَمْشِي بِالنَّمِيمَةِ وَأَمَّا الآخَرُ فَكَانَ لا يَسْتَتِرُ مِنْ بَوْلِهِ

“Rasulullah Shallallahu’alaihi Wasallam melewati dua kuburan. Lalu beliau bersabda: “kedua orang ini sedang diadzab, dan mereka diazab bukan karena dosa besar. Orang yang pertama diadzab karena berbuat namimah (adu domba). Adapun yang kedua, ia diadzab karena tidak membersihkan diri dari sisa kencingnya”” (HR. Muslim no. 292).

Dan dalil-dalil yang lainnya.
'''),
    Entry('Cara membersihkan najis', children: <Entry>[
      Entry('Para ulama membagi najis dibagi menjadi tiga:', content: '''
1. Najasah mughallazhah (berat) atau najasah tsaqilah
2. Najasah mukhaffafah (ringan)
3. Najasah mutawashitah (pertengahan)
'''),
      Entry('1. Cara membersihkan najasah tsaqilah', content: '''
Misalnya najis dari anjing dan babi, maka membersihkannya dengan tujuh kali cucian, dan cucian yang pertama menggunakan tanah atau semacamnya. Syaikh As Sa’di menyatakan: “Najis dari anjing dan semua yang berasal dari babi cara mencucinya harus dengan tujuh kali cucian, dan cucian yang pertama menggunakan tanah atau semacamnya”.

Dalilnya, Nabi Shallallahu’alaihi Wasallam bersabda:

طَهُورُ إِنَاءِ أَحَدِكُمْ إِذَا وَلَغَ فِيهِ الْكَلْبُ، أَنْ يَغْسِلَهُ سَبْعَ مَرَّاتٍ أُولَاهُنَّ بِالتُّرَابِ

“cara mensucikan bejana dari seseorang di antara kalian jika dijilat anjing adalah dengan mencucinya tujuh kali, cucian yang pertama menggunakan tanah” (HR. Al Bukhari no. 182, Muslim no. 279).

Dan babi juga demikian, berdasarkan qiyas min baabil aula. Karena babi lebih buruk dari pada anjing.
'''),
      Entry('2. Cara membersihkan najasah mukhaffafah', children: <Entry>[
        Entry(
          'Najasah yang mukhaffah ada 3 macam di lihat dari cara membersihkannya:',
          children: <Entry>[
            Entry('a. Dengan cara memercikkan air sekali percikan', content: '''
Syaikh As Sa’di menyatakan: “air kencing anak laki-laki yang belum memakan makanan karena syahwat (untuk makan) maka ini semua cukup dipercikkan air sekali saja, ini merupakan salah satu pendapat dari madzhab (Hambali), sebagaimana terdapat dalam hadits-hadits shahih. Demikian juga muntahnya anak-anak, itu statusnya lebih ringan daripada air kencingnya. Demikian juga madzi, menurut pendapat yang shahih, ia juga cukup dipercikkan air saja, sebagaimana terdapat dalam hadits, dan ini semua selaras dengan hikmah keringanan dalam masyaqqah”.

Berikut perincian dalilnya:

Air kencing anak laki-laki yang belum memakan makanan
Hadits dari Abu Samh Malik radhiallahu’anhu, ia berkata:
يُغْسَلُ مِنْ بَوْلِ الْجَارِيَةِ وَيُرَشُّ مِنْ بَوْلِ الْغُلاَمِ

“Air kencing anak perempuan itu dicuci, sedangkan air kencing anak laki-laki itu dipercikkan” (HR. Abu Daud 377, An Nasa’i 303, dishahihkan Al Albani dalam Shahih An Nasa’i).

Muntahnya anak laki-laki yang belum memakan makanan, diqiyaskan dengan air kencing.
Madzi
Berdasarkan hadits Ali bin Abi Thalib radhiallahu’anhu, ia berkata:
أرسَلْنا المِقْدَّادَ بنَ الأسودٍ إلى رسولِ اللهِ صلى الله عليه وسلم ،فسألَه عن المَذْيِ يَخْرُجُ مِنَ الإنسانِ كيفَ يَفْعَلُ به ؟ فقال رسولُ اللهِ صلى الله عليه وسلم : تَوَضَّأْ ،وانْضَّحْ فَرْجَكَ

“Miqdad bin Al Aswad mengutusku kepada Rasulullah Shallallahu’alaihi Wasallam. Lalu aku bertanya mengenai madzi yang keluar dari seseorang, bagaimana menyikapinya? Lalu Rasulullah Shallallahu’alaihi Wasallam bersabda: ‘berwudhulah dan percikkan kemaluanmu dengan air‘” (HR. Muslim 303).
'''),
            Entry(
                'b. Dengan menyiramnya sekali siram atau secukupnya hingga hilang inti objeknya',
                content: '''
Ini berlaku pada semua najis yang ada di atas permukaan lantai atau tanah. Syaikh As Sa’di menyatakan: “Najis jika berada di atas permukaan tanah atau lantai maka cukup disiram dengan sekali siraman yang membuat ‘ainun najasah (inti dari objek najis) hilang, sebagaimana perintah Nabi Shallallahu’alaihi Wasallam untuk menyiram air kencing orang badwi dengan seember air”.

Dalilnya hadits Anas bin Malik radhiallahu’anhu, beliau berkata:

جَاءَ أَعْرَابِيٌّ فَبَالَ فِي طَائِفَةِ المَسْجِدِ، فَزَجَرَهُ النَّاسُ، «فَنَهَاهُمُ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَلَمَّا قَضَى بَوْلَهُ أَمَرَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ بِذَنُوبٍ مِنْ مَاءٍ فَأُهْرِيقَ عَلَيْهِ»

“Seorang arab badwi kencing di satu bagian masjid, maka orang-orang pun hendak memarahinya. Namun Nabi Shallallahu’alaihi Wasallam mereka. Ketika ia selesai kencing, Nabi Shallallahu’alaihi Wasallam memerintahkan untuk menyiram air kencingnya dengan seember air” (HR. Bukhari no. 221, Muslim no. 284).

Dari hadits ini jelas bahwa najis yang ada di permukaan lantai atau tanah maka cukup hingga hilang  ‘ainun najasah (inti dari objek najis), tidak harus hilang 100%. Karena Nabi Shallallahu’alaihi Wasallam hanya memerintahkan untuk menyiram air kencing orang badwi tersebut dengan air seember yang tentu belum menghilangkan semua najisnya 100%.
'''),
            Entry('c. Dengan menyentuhkan pada debu atau tanah', content: '''
Yaitu najis yang ada pada bagian bawah sepatu dan alas kaki lainnya, juga pada bagian bawah pakaian wanita yang terkena tanah. Syaikh As Sa’di menjelaskan: “Najis yang ada pada bagian bawah sepatu dan alas kaki lainnya, cukup disentuhkan pada permukaan tanah atau pada debu, sebagaimana terdapat dalam hadits shahih. Dan ini yang sesuai dengan hikmah syar’iyyah”.

Dalilnya hadits Abu Sa’id Al Khudri radhiallahu’anhu:

بَيْنَمَا رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يُصَلِّي بِأَصْحَابِهِ إِذْ خَلَعَ نَعْلَيْهِ فَوَضَعَهُمَا عَنْ يَسَارِهِ، فَلَمَّا رَأَى ذَلِكَ الْقَوْمُ أَلْقَوْا نِعَالَهُمْ، فَلَمَّا قَضَى رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ صَلَاتَهُ، قَالَ: «مَا حَمَلَكُمْ عَلَى إِلْقَاءِ نِعَالِكُمْ»، قَالُوا: رَأَيْنَاكَ أَلْقَيْتَ نَعْلَيْكَ فَأَلْقَيْنَا نِعَالَنَا، فَقَالَ رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: ” إِنَّ جِبْرِيلَ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَتَانِي فَأَخْبَرَنِي أَنَّ فِيهِمَا قَذَرًا – أَوْ قَالَ: أَذًى – ” وَقَالَ: ” إِذَا جَاءَ أَحَدُكُمْ إِلَى الْمَسْجِدِ فَلْيَنْظُرْ: فَإِنْ رَأَى فِي نَعْلَيْهِ قَذَرًا أَوْ أَذًى فَلْيَمْسَحْهُ وَلْيُصَلِّ فِيهِمَا “

“Ketika Rasulullah Shallallahu’alaihi Wasallam shalat bersama para sahabatnya, beliau melepaskan kedua sandalnya dan meletakannya di sebelah kirinya. Ketika para sahabat (yang bermakmum) melihat hal itu, mereka pun melemparkan sandal-sandal mereka. Ketika Rasulullah Shallallahu’alaihi Wasallam selesai shalat beliau bertanya: ‘Mengapa kalian melemparkan sandal-sandal kalian?’. Para sahabat menjawab: ‘Kami melihat anda melemparkan sandal anda, maka kami pun melemparkan sandal kami’. Lalu Rasulullah Shallallahu’alaihi Wasallam bersabda: ‘Sesungguhnya aku melihat Jibril ‘alaihissalam mendatangiku dan mengabarkanku bahwa pada kedua sandalku ada najis (dalam riwayat lain: kotoran)’. Lalu beliau bersabda: ‘Jika salah seorang dari kalian datang ke masjid maka perhatikanlah kedua sandalnya, jika ia melihat ada najis atau kotoran maka sentuhkanlah (ke tanah) lalu shalatlah dengan keduanya‘” (HR. Abu Daud no. 650, dishahihkan Al Albani dalam Shahih Abi Daud).

Juga hadits dari Ummu Salamah radhiallahu’anha. Dari jalan Ummu Walad (disebut juga: Hamidah), ia berkata:

قُلْتُ لأُمِّ سَلَمَةَ: إِنِّي امْرَأَةٌ أُطِيلُ ذَيْلِي وَأَمْشِي فِي الْمَكَانِ القَذِرِ؟ فَقَالَتْ: قَالَ رَسُولُ اللهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: يُطَهِّرُهُ مَا بَعْدَهُ

“Aku bertanya kepada Ummu Salamah: ‘saya ini wanita yang panjang gaunnya dan saya biasa berjalan di tempat yang kotor’. Ummu Salamah berkata: ‘Rasulullah Shallallahu’alaihi Wasallam bersabda: ‘tanah yang setelahnya sudah membersihkannya””(HR. Tirmidzi 143, ia berkata: “hadits ini shahih”).
'''),
          ],
        ),
      ]),
      Entry('3. Cara membersihkan najasah mutawashitah', content: '''
Yaitu yang bukan termasuk kedua jenis di atas, misalnya air kencing secara umum, kotoran manusia (feces), bangkai, darah haid, dll. Maka cara membersihkannya bisa dengan berbagai cara yang bisa menghilangkan semua najisnya hingga tidak tersisa warna, bau dan rasanya. Bisa dengan menyiramnya, atau membasuhnya, atau mencucinya, atau menyikatnya, atau menggunakan sabun, atau menggunakan alat-alat kebersihan.

Syaikh As Sa’di menjelaskan: “Najasah (mutawashitah) ketika ia bisa hilang dengan cara apapun, dengan alat apapun, maka itu sudah cukup untuk mensucikannya. Tanpa disyaratkan adanya jumlah bilangan dan tidak harus menggunakan air. Ini yang ditunjukkan oleh zhahir nash dalil-dalil. Karena syariat dalam hal ini hanya memerintahkan untuk menghilangkan najis. Dan najis itu terkadang hilang dengan menggunakan air, kadang dengan membasuhnya, kadang dengan istijmar (menggunakan batu, kayu atau semisalnya), dan terkadang dengan cara yang lain. Dan syariat tidak memerintahkan untuk menghilangkan najis sebanyak tujuh kali, kecuali najis anjing. Sebagaimana juga pendapat ini juga merupakan kelaziman dari nash dalil-dalil syar’i, karena pendapat ini memiliki kesesuaian yang tinggi dengan nash. Karena penghilangan najis itu adalah penghilangan sesuatu yang mahsuusah (bisa diindera)”.
'''),
    ]),
    Entry('Sumber', content: '''
https://muslim.or.id/29297-cara-membersihkan-najis.html ''')
  ];
  // DATA YANG DAPAT BERUBAH
  final List<Entry> dataText = <Entry>[
    Entry('Pengertian Najis', content: '''
Najasah atau najis secara bahasa artinya kotoran. Najasah atau najis dalam istilah syariat adalah segala sesuatu yang dianggap kotor oleh syariat. Dalam Ar Raudhatun Nadiyyah disebutkan,

النجاسات جمع نجاسة, و هي كل شيئ يستقذره أهل الطبائع السليمة و يتحفظون عنه و يغسلون الثياب إذا أصابهم كالعذرة و البول

“Najasat adalah bentuk jamak dari najasah, ia adalah segala sesuatu yang dianggap kotor oleh orang-orang yang memiliki fitrah yang bersih dan mereka akan berusaha menjauhinya dan membersihkan pakaiannya jika terkena olehnya semisal kotoran manusia dan air seni”.

Dalam Al Fiqhul Muyassar disebutkan,

النجاسة: هي كل عين مستقذرة أمر الشارع باجتنابها

“Najasah adalah setiap hal yang dianggap kotor yang diperintahkan oleh syariat untuk menjauhinya”.

Dari penyataan “dianggap kotor oleh syariat” dalam definisi-definisi yang disebutkan para ulama menunjukkan bahwa tidak semua yang kotor menurut manusia itu adalah najis dalam istilah syar’i, dan juga menunjukkan bahwa menentukan najis atau tidaknya sesuatu itu harus dilandasi dalil. Jika tidak ada dalil yang menunjukkan najisnya sesuatu tersebut, maka ia suci. Syaikh Abdurrahman bin Nashir As Sa’di mengatakan:

يجب أن يعلم أن الأصل في جميع الأشياء الطهارة فلا تنجس و لا ينجس منها إلا ما دل عليه الشرع

“wajib diketahui bahwa hukum asal dari segala sesuatu itu suci, maka tidak boleh mengatakan ia sesuatu itu najis atau menajiskan kecuali ada dalil dari syariat”.

Maka najis tidak bisa ditentukan dengan akal atau perasaan seseorang bahwa sesuatu itu najis, melainkan harus berdasarkan dalil. Dan yang dituntut dari kita terhadap najis adalah kita diperintahkan untuk menjauhinya dan membersihkan diri darinya jika terkena najis.

Kemudian, najis berbeda dengan pembatal wudhu. Dan jika seseorang terkena najis, wudhunya tidak menjadi batal, namun ia wajib membersihkan najis tersebut
'''),
    Entry('Perintah Membersihkan Najis', content: '''
Syariat memerintahkan kita untuk membersihkan diri dari najis dalam banyak dalil dari Al Qur’an dan As Sunnah. Diantaranya firman Allah Ta’ala:

وَثِيَابَكَ فَطَهِّرْ

“dan pakaianmu sucikanlah” (QS. Al Mudatsir: 4).

Allah Ta’ala juga berfirman:

وَعَهِدْنَا إِلَى إِبْرَاهِيمَ وَإِسْمَاعِيلَ أَن طَهِّرَا بَيْتِيَ لِلطَّائِفِينَ وَالْعَاكِفِينَ وَالرُّكَّعِ السُّجُودِ

“Dan kami perintahkan kepada Ibrahim dan Ismail untuk mensucikan rumah-Ku bagi orang-orang yang ber-thawaf, ber-i’tikaf dan orang-orang yang rukuk dan sujud” (QS. Al Baqarah: 125).

Dari Ibnu Abbas radhiallahu’anhu, Nabi Shallallahu’alaihi Wasallam bersabda:

مَرَّ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَلَى قَبْرَيْنِ فَقَالَ أَمَا إِنَّهُمَا لَيُعَذَّبَانِ وَمَا يُعَذَّبَانِ فِي كَبِيرٍ أَمَّا أَحَدُهُمَا فَكَانَ يَمْشِي بِالنَّمِيمَةِ وَأَمَّا الآخَرُ فَكَانَ لا يَسْتَتِرُ مِنْ بَوْلِهِ

“Rasulullah Shallallahu’alaihi Wasallam melewati dua kuburan. Lalu beliau bersabda: “kedua orang ini sedang diadzab, dan mereka diazab bukan karena dosa besar. Orang yang pertama diadzab karena berbuat namimah (adu domba). Adapun yang kedua, ia diadzab karena tidak membersihkan diri dari sisa kencingnya”” (HR. Muslim no. 292).

Dan dalil-dalil yang lainnya.
'''),
    Entry('Cara membersihkan najis', children: <Entry>[
      Entry('Para ulama membagi najis dibagi menjadi tiga:', content: '''
1. Najasah mughallazhah (berat) atau najasah tsaqilah
2. Najasah mukhaffafah (ringan)
3. Najasah mutawashitah (pertengahan)
'''),
      Entry('1. Cara membersihkan najasah tsaqilah', content: '''
Misalnya najis dari anjing dan babi, maka membersihkannya dengan tujuh kali cucian, dan cucian yang pertama menggunakan tanah atau semacamnya. Syaikh As Sa’di menyatakan: “Najis dari anjing dan semua yang berasal dari babi cara mencucinya harus dengan tujuh kali cucian, dan cucian yang pertama menggunakan tanah atau semacamnya”.

Dalilnya, Nabi Shallallahu’alaihi Wasallam bersabda:

طَهُورُ إِنَاءِ أَحَدِكُمْ إِذَا وَلَغَ فِيهِ الْكَلْبُ، أَنْ يَغْسِلَهُ سَبْعَ مَرَّاتٍ أُولَاهُنَّ بِالتُّرَابِ

“cara mensucikan bejana dari seseorang di antara kalian jika dijilat anjing adalah dengan mencucinya tujuh kali, cucian yang pertama menggunakan tanah” (HR. Al Bukhari no. 182, Muslim no. 279).

Dan babi juga demikian, berdasarkan qiyas min baabil aula. Karena babi lebih buruk dari pada anjing.
'''),
      Entry('2. Cara membersihkan najasah mukhaffafah', children: <Entry>[
        Entry(
          'Najasah yang mukhaffah ada 3 macam di lihat dari cara membersihkannya:',
          children: <Entry>[
            Entry('a. Dengan cara memercikkan air sekali percikan', content: '''
Syaikh As Sa’di menyatakan: “air kencing anak laki-laki yang belum memakan makanan karena syahwat (untuk makan) maka ini semua cukup dipercikkan air sekali saja, ini merupakan salah satu pendapat dari madzhab (Hambali), sebagaimana terdapat dalam hadits-hadits shahih. Demikian juga muntahnya anak-anak, itu statusnya lebih ringan daripada air kencingnya. Demikian juga madzi, menurut pendapat yang shahih, ia juga cukup dipercikkan air saja, sebagaimana terdapat dalam hadits, dan ini semua selaras dengan hikmah keringanan dalam masyaqqah”.

Berikut perincian dalilnya:

Air kencing anak laki-laki yang belum memakan makanan
Hadits dari Abu Samh Malik radhiallahu’anhu, ia berkata:
يُغْسَلُ مِنْ بَوْلِ الْجَارِيَةِ وَيُرَشُّ مِنْ بَوْلِ الْغُلاَمِ

“Air kencing anak perempuan itu dicuci, sedangkan air kencing anak laki-laki itu dipercikkan” (HR. Abu Daud 377, An Nasa’i 303, dishahihkan Al Albani dalam Shahih An Nasa’i).

Muntahnya anak laki-laki yang belum memakan makanan, diqiyaskan dengan air kencing.
Madzi
Berdasarkan hadits Ali bin Abi Thalib radhiallahu’anhu, ia berkata:
أرسَلْنا المِقْدَّادَ بنَ الأسودٍ إلى رسولِ اللهِ صلى الله عليه وسلم ،فسألَه عن المَذْيِ يَخْرُجُ مِنَ الإنسانِ كيفَ يَفْعَلُ به ؟ فقال رسولُ اللهِ صلى الله عليه وسلم : تَوَضَّأْ ،وانْضَّحْ فَرْجَكَ

“Miqdad bin Al Aswad mengutusku kepada Rasulullah Shallallahu’alaihi Wasallam. Lalu aku bertanya mengenai madzi yang keluar dari seseorang, bagaimana menyikapinya? Lalu Rasulullah Shallallahu’alaihi Wasallam bersabda: ‘berwudhulah dan percikkan kemaluanmu dengan air‘” (HR. Muslim 303).
'''),
            Entry(
                'b. Dengan menyiramnya sekali siram atau secukupnya hingga hilang inti objeknya',
                content: '''
Ini berlaku pada semua najis yang ada di atas permukaan lantai atau tanah. Syaikh As Sa’di menyatakan: “Najis jika berada di atas permukaan tanah atau lantai maka cukup disiram dengan sekali siraman yang membuat ‘ainun najasah (inti dari objek najis) hilang, sebagaimana perintah Nabi Shallallahu’alaihi Wasallam untuk menyiram air kencing orang badwi dengan seember air”.

Dalilnya hadits Anas bin Malik radhiallahu’anhu, beliau berkata:

جَاءَ أَعْرَابِيٌّ فَبَالَ فِي طَائِفَةِ المَسْجِدِ، فَزَجَرَهُ النَّاسُ، «فَنَهَاهُمُ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَلَمَّا قَضَى بَوْلَهُ أَمَرَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ بِذَنُوبٍ مِنْ مَاءٍ فَأُهْرِيقَ عَلَيْهِ»

“Seorang arab badwi kencing di satu bagian masjid, maka orang-orang pun hendak memarahinya. Namun Nabi Shallallahu’alaihi Wasallam mereka. Ketika ia selesai kencing, Nabi Shallallahu’alaihi Wasallam memerintahkan untuk menyiram air kencingnya dengan seember air” (HR. Bukhari no. 221, Muslim no. 284).

Dari hadits ini jelas bahwa najis yang ada di permukaan lantai atau tanah maka cukup hingga hilang  ‘ainun najasah (inti dari objek najis), tidak harus hilang 100%. Karena Nabi Shallallahu’alaihi Wasallam hanya memerintahkan untuk menyiram air kencing orang badwi tersebut dengan air seember yang tentu belum menghilangkan semua najisnya 100%.
'''),
            Entry('c. Dengan menyentuhkan pada debu atau tanah', content: '''
Yaitu najis yang ada pada bagian bawah sepatu dan alas kaki lainnya, juga pada bagian bawah pakaian wanita yang terkena tanah. Syaikh As Sa’di menjelaskan: “Najis yang ada pada bagian bawah sepatu dan alas kaki lainnya, cukup disentuhkan pada permukaan tanah atau pada debu, sebagaimana terdapat dalam hadits shahih. Dan ini yang sesuai dengan hikmah syar’iyyah”.

Dalilnya hadits Abu Sa’id Al Khudri radhiallahu’anhu:

بَيْنَمَا رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يُصَلِّي بِأَصْحَابِهِ إِذْ خَلَعَ نَعْلَيْهِ فَوَضَعَهُمَا عَنْ يَسَارِهِ، فَلَمَّا رَأَى ذَلِكَ الْقَوْمُ أَلْقَوْا نِعَالَهُمْ، فَلَمَّا قَضَى رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ صَلَاتَهُ، قَالَ: «مَا حَمَلَكُمْ عَلَى إِلْقَاءِ نِعَالِكُمْ»، قَالُوا: رَأَيْنَاكَ أَلْقَيْتَ نَعْلَيْكَ فَأَلْقَيْنَا نِعَالَنَا، فَقَالَ رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: ” إِنَّ جِبْرِيلَ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَتَانِي فَأَخْبَرَنِي أَنَّ فِيهِمَا قَذَرًا – أَوْ قَالَ: أَذًى – ” وَقَالَ: ” إِذَا جَاءَ أَحَدُكُمْ إِلَى الْمَسْجِدِ فَلْيَنْظُرْ: فَإِنْ رَأَى فِي نَعْلَيْهِ قَذَرًا أَوْ أَذًى فَلْيَمْسَحْهُ وَلْيُصَلِّ فِيهِمَا “

“Ketika Rasulullah Shallallahu’alaihi Wasallam shalat bersama para sahabatnya, beliau melepaskan kedua sandalnya dan meletakannya di sebelah kirinya. Ketika para sahabat (yang bermakmum) melihat hal itu, mereka pun melemparkan sandal-sandal mereka. Ketika Rasulullah Shallallahu’alaihi Wasallam selesai shalat beliau bertanya: ‘Mengapa kalian melemparkan sandal-sandal kalian?’. Para sahabat menjawab: ‘Kami melihat anda melemparkan sandal anda, maka kami pun melemparkan sandal kami’. Lalu Rasulullah Shallallahu’alaihi Wasallam bersabda: ‘Sesungguhnya aku melihat Jibril ‘alaihissalam mendatangiku dan mengabarkanku bahwa pada kedua sandalku ada najis (dalam riwayat lain: kotoran)’. Lalu beliau bersabda: ‘Jika salah seorang dari kalian datang ke masjid maka perhatikanlah kedua sandalnya, jika ia melihat ada najis atau kotoran maka sentuhkanlah (ke tanah) lalu shalatlah dengan keduanya‘” (HR. Abu Daud no. 650, dishahihkan Al Albani dalam Shahih Abi Daud).

Juga hadits dari Ummu Salamah radhiallahu’anha. Dari jalan Ummu Walad (disebut juga: Hamidah), ia berkata:

قُلْتُ لأُمِّ سَلَمَةَ: إِنِّي امْرَأَةٌ أُطِيلُ ذَيْلِي وَأَمْشِي فِي الْمَكَانِ القَذِرِ؟ فَقَالَتْ: قَالَ رَسُولُ اللهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: يُطَهِّرُهُ مَا بَعْدَهُ

“Aku bertanya kepada Ummu Salamah: ‘saya ini wanita yang panjang gaunnya dan saya biasa berjalan di tempat yang kotor’. Ummu Salamah berkata: ‘Rasulullah Shallallahu’alaihi Wasallam bersabda: ‘tanah yang setelahnya sudah membersihkannya””(HR. Tirmidzi 143, ia berkata: “hadits ini shahih”).
'''),
          ],
        ),
      ]),
      Entry('3. Cara membersihkan najasah mutawashitah', content: '''
Yaitu yang bukan termasuk kedua jenis di atas, misalnya air kencing secara umum, kotoran manusia (feces), bangkai, darah haid, dll. Maka cara membersihkannya bisa dengan berbagai cara yang bisa menghilangkan semua najisnya hingga tidak tersisa warna, bau dan rasanya. Bisa dengan menyiramnya, atau membasuhnya, atau mencucinya, atau menyikatnya, atau menggunakan sabun, atau menggunakan alat-alat kebersihan.

Syaikh As Sa’di menjelaskan: “Najasah (mutawashitah) ketika ia bisa hilang dengan cara apapun, dengan alat apapun, maka itu sudah cukup untuk mensucikannya. Tanpa disyaratkan adanya jumlah bilangan dan tidak harus menggunakan air. Ini yang ditunjukkan oleh zhahir nash dalil-dalil. Karena syariat dalam hal ini hanya memerintahkan untuk menghilangkan najis. Dan najis itu terkadang hilang dengan menggunakan air, kadang dengan membasuhnya, kadang dengan istijmar (menggunakan batu, kayu atau semisalnya), dan terkadang dengan cara yang lain. Dan syariat tidak memerintahkan untuk menghilangkan najis sebanyak tujuh kali, kecuali najis anjing. Sebagaimana juga pendapat ini juga merupakan kelaziman dari nash dalil-dalil syar’i, karena pendapat ini memiliki kesesuaian yang tinggi dengan nash. Karena penghilangan najis itu adalah penghilangan sesuatu yang mahsuusah (bisa diindera)”.
'''),
    ]),
    Entry('Sumber', content: '''
https://muslim.or.id/29297-cara-membersihkan-najis.html ''')
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
            // SUBTITLE WUDU
            Center(
                child: Text(
              "Menghilangkan Najis",
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
