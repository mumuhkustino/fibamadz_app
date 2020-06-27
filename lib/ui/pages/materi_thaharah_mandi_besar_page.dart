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
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Niat, Syarat Sahnya Mandi', content: '''
Para ulama mengatakan bahwa di antara fungsi niat adalah untuk membedakan manakah yang menjadi kebiasaan dan manakah ibadah. Dalam hal mandi tentu saja mesti dibedakan dengan mandi biasa. Pembedanya adalah niat. Dalam hadits dari ‘Umar bin Al Khattab, Nabi shallallahu ‘alaihi wa sallam bersabda,

إِنَّمَا الأَعْمَالُ بِالنِّيَّاتِ

“Sesungguhnya setiap amalan tergantung pada niatnya.” (HR. Bukhari no. 1 dan Muslim no. 1907)
'''),
    Entry('Rukun Mandi', content: '''
Hakikat mandi adalah mengguyur seluruh badan dengan air, yaitu mengenai rambut dan kulit.

Inilah yang diterangkan dalam banyak hadits Nabi shallallahu ‘alaihi wa sallam. Di antaranya adalah hadits ‘Aisyah radhiyallahu ‘anha yang menceritakan tata cara mandi Nabi shallallahu ‘alaihi wa sallam,

ثُمَّ يُفِيضُ الْمَاءَ عَلَى جَسَدِهِ كُلِّهِ

“Kemudian beliau mengguyur air pada seluruh badannya.” (HR. An Nasa-i no. 247. Syaikh Al Albani mengatakan bahwa hadits ini shahih)

Ibnu Hajar Al Asqolani mengatakan, “Penguatan makna dalam hadits ini menunjukkan bahwa ketika mandi beliau mengguyur air ke seluruh tubuh.”

Dari Jubair bin Muth’im berkata, “Kami saling memperbincangkan tentang mandi janabah di sisi Nabi shallallahu ‘alaihi wa sallam, lalu beliau bersabda,

أَمَّا أَنَا فَآخُذُ مِلْءَ كَفِّى ثَلاَثاً فَأَصُبُّ عَلَى رَأْسِى ثُمَّ أُفِيضُهُ بَعْدُ عَلَى سَائِرِ جَسَدِى

“Saya mengambil dua telapak tangan, tiga kali lalu saya siramkan pada kepalaku, kemudian saya tuangkan setelahnya pada semua tubuhku.” (HR. Ahmad 4/81. Syaikh Syu’aib Al Arnauth mengatakan bahwa sanad hadits ini shahih sesuai syarat Bukhari Muslim)

Dalil yang menunjukkan bahwa hanya mengguyur seluruh badan dengan air itu merupakan rukun (fardhu) mandi dan bukan selainnya adalah hadits yang diriwayatkan oleh Ummu Salamah. Ia mengatakan,

قُلْتُ يَا رَسُولَ اللَّهِ إِنِّى امْرَأَةٌ أَشُدُّ ضَفْرَ رَأْسِى فَأَنْقُضُهُ لِغُسْلِ الْجَنَابَةِ قَالَ « لاَ إِنَّمَا يَكْفِيكِ أَنْ تَحْثِى عَلَى رَأْسِكِ ثَلاَثَ حَثَيَاتٍ ثُمَّ تُفِيضِينَ عَلَيْكِ الْمَاءَ فَتَطْهُرِينَ ».

“Saya berkata, wahai Rasulullah, aku seorang wanita yang mengepang rambut kepalaku, apakah aku harus membuka kepangku ketika mandi junub?” Beliau bersabda, “Jangan (kamu buka). Cukuplah kamu mengguyur air pada kepalamu tiga kali, kemudian guyurlah yang lainnya dengan air, maka kamu telah suci.” (HR. Muslim no. 330)

Dengan seseorang memenuhi rukun mandi ini, maka mandinya dianggap sah, asalkan disertai niat untuk mandi wajib (al ghuslu). Jadi seseorang yang mandi di pancuran atau shower dan air mengenai seluruh tubuhnya, maka mandinya sudah dianggap sah.

Adapun berkumur-kumur (madhmadhoh), memasukkan air dalam hidung (istinsyaq) dan menggosok-gosok badan (ad dalk) adalah perkara yang disunnahkan menurut mayoritas ulama.
'''),
    Entry('Tata Cara Mandi yang Sempurna', content: '''
Berikut kita akan melihat tata cara mandi yang disunnahkan. Apabila hal ini dilakukan, maka akan membuat mandi tadi lebih sempurna. Yang menjadi dalil dari bahasan ini adalah dua dalil yaitu hadits dari ‘Aisyah dan hadits dari Maimunah.

Hadits pertama:

عَنْ عَائِشَةَ زَوْجِ النَّبِىِّ – صلى الله عليه وسلم – أَنَّ النَّبِىَّ – صلى الله عليه وسلم – كَانَ إِذَا اغْتَسَلَ مِنَ الْجَنَابَةِ بَدَأَ فَغَسَلَ يَدَيْهِ ، ثُمَّ يَتَوَضَّأُ كَمَا يَتَوَضَّأُ لِلصَّلاَةِ ، ثُمَّ يُدْخِلُ أَصَابِعَهُ فِى الْمَاءِ ، فَيُخَلِّلُ بِهَا أُصُولَ شَعَرِهِ ثُمَّ يَصُبُّ عَلَى رَأْسِهِ ثَلاَثَ غُرَفٍ بِيَدَيْهِ ، ثُمَّ يُفِيضُ الْمَاءَ عَلَى جِلْدِهِ كُلِّهِ

Dari ‘Aisyah, isteri Nabi shallallahu ‘alaihi wa sallam, bahwa jika Nabi shallallahu ‘alaihi wa sallam mandi junub, beliau memulainya dengan mencuci kedua telapak tangannya. Kemudian beliau berwudhu sebagaimana wudhu untuk shalat. Lalu beliau memasukkan jari-jarinya ke dalam air, lalu menggosokkannya ke kulit kepalanya, kemudian menyiramkan air ke atas kepalanya dengan cidukan kedua telapak tangannya sebanyak tiga kali, kemudian beliau mengalirkan air ke seluruh kulitnya.” (HR. Bukhari no. 248 dan Muslim no. 316)

Hadits kedua:

عَنِ ابْنِ عَبَّاسٍ قَالَ قَالَتْ مَيْمُونَةُ وَضَعْتُ لِرَسُولِ اللَّهِ – صلى الله عليه وسلم – مَاءً يَغْتَسِلُ بِهِ ، فَأَفْرَغَ عَلَى يَدَيْهِ ، فَغَسَلَهُمَا مَرَّتَيْنِ مَرَّتَيْنِ أَوْ ثَلاَثًا ، ثُمَّ أَفْرَغَ بِيَمِينِهِ عَلَى شِمَالِهِ ، فَغَسَلَ مَذَاكِيرَهُ ، ثُمَّ دَلَكَ يَدَهُ بِالأَرْضِ ، ثُمَّ مَضْمَضَ وَاسْتَنْشَقَ ، ثُمَّ غَسَلَ وَجْهَهُ وَيَدَيْهِ ثُمَّ غَسَلَ رَأْسَهُ ثَلاَثًا ، ثُمَّ أَفْرَغَ عَلَى جَسَدِهِ ، ثُمَّ تَنَحَّى مِنْ مَقَامِهِ فَغَسَلَ قَدَمَيْهِ

Dari Ibnu ‘Abbas berkata bahwa Maimunah mengatakan, “Aku pernah menyediakan air mandi untuk Rasulullah shallallahu ‘alaihi wa sallam. Lalu beliau menuangkan air pada kedua tangannya dan mencuci keduanya dua kali-dua kali atau tiga kali. Lalu dengan tangan kanannya beliau menuangkan air pada telapak tangan kirinya, kemudian beliau mencuci kemaluannya. Setelah itu beliau menggosokkan tangannya ke tanah. Kemudian beliau berkumur-kumur dan memasukkan air ke dalam hidung. Lalu beliau membasuh muka dan kedua tangannya. Kemudian beliau membasuh kepalanya tiga kali dan mengguyur seluruh badannya. Setelah itu beliau bergeser dari posisi semula lalu mencuci kedua telapak kakinya (di tempat yang berbeda).” (HR. Bukhari no. 265 dan Muslim no. 317)

Dari dua hadits di atas, kita dapat merinci tata cara mandi yang disunnahkan sebagai berikut.

Pertama: Mencuci tangan terlebih dahulu sebanyak tiga kali sebelum tangan tersebut dimasukkan dalam bejana atau sebelum mandi.

Ibnu Hajar Al Asqolani rahimahullah mengatakan, “Boleh jadi tujuan untuk mencuci tangan terlebih dahulu di sini adalah untuk membersihkan tangan dari kotoran … Juga boleh jadi tujuannya adalah karena mandi tersebut dilakukan setelah bangun tidur.”

Kedua: Membersihkan kemaluan dan kotoran yang ada dengan tangan kiri.

Ketiga: Mencuci tangan setelah membersihkan kemaluan dengan menggosokkan ke tanah atau dengan menggunakan sabun.

An Nawawi rahimahullah mengatakan, “Disunnahkan bagi orang yang beristinja’ (membersihkan kotoran) dengan air, ketika selesai, hendaklah ia mencuci tangannya dengan debu atau semacam sabun, atau hendaklah ia menggosokkan tangannya ke tanah atau tembok untuk menghilangkan kotoran yang ada.”

Keempat: Berwudhu dengan wudhu yang sempurna seperti ketika hendak shalat.

Asy Syaukani rahimahullah mengatakan, “Adapun mendahulukan mencuci anggota wudhu ketika mandi itu tidaklah wajib. Cukup dengan seseorang mengguyur badan ke seluruh badan tanpa didahului dengan berwudhu, maka itu sudah disebut mandi (al ghuslu).”

Untuk kaki ketika berwudhu, kapankah dicuci?

Jika kita melihat dari hadits Maimunah di atas, dicontohkan oleh Nabi shallallahu ‘alaihi wa sallam bahwa beliau membasuh anggota wudhunya dulu sampai membasuh kepala, lalu mengguyur air ke seluruh tubuh, sedangkan kaki dicuci terakhir. Namun hadits ‘Aisyah menerangkan bahwa Nabi shallallahu ‘alaihi wa sallam berwudhu secara sempurna (sampai mencuci kaki), setelah itu beliau mengguyur air ke seluruh tubuh.

Dari dua hadits tersebut, para ulama akhirnya berselisih pendapat kapankah kaki itu dicuci. Yang tepat tentang masalah ini, dua cara yang disebut dalam hadits ‘Aisyah dan Maimunah bisa sama-sama digunakan. Yaitu kita bisa saja mandi dengan berwudhu secara sempurna terlebih dahulu, setelah itu kita mengguyur air ke seluruh tubuh, sebagaimana disebutkan dalam riwayat ‘Aisyah. Atau boleh jadi kita gunakan cara mandi dengan mulai berkumur-kumur, memasukkan air dalam hidup, mencuci wajah, mencuci kedua tangan, mencuci kepala, lalu mengguyur air ke seluruh tubuh, kemudian kaki dicuci terakhir.

Syaikh Abu Malik hafizhohullah mengatakan, “Tata cara mandi (apakah dengan cara yang disebut dalam hadits ‘Aisyah dan Maimunah) itu sama-sama boleh digunakan, dalam masalah ini ada kelapangan.”

Kelima: Mengguyur air pada kepala sebanyak tiga kali hingga sampai ke pangkal rambut.

Keenam: Memulai mencuci kepala bagian kanan, lalu kepala bagian kiri.

Ketujuh: Menyela-nyela rambut.

Dalam hadits ‘Aisyah radhiyallahu ‘anha disebutkan,

كَانَ رَسُولُ اللَّهِ – صلى الله عليه وسلم – إِذَا اغْتَسَلَ مِنَ الْجَنَابَةِ غَسَلَ يَدَيْهِ ، وَتَوَضَّأَ وُضُوءَهُ لِلصَّلاَةِ ثُمَّ اغْتَسَلَ ، ثُمَّ يُخَلِّلُ بِيَدِهِ شَعَرَهُ ، حَتَّى إِذَا ظَنَّ أَنْ قَدْ أَرْوَى بَشَرَتَهُ ، أَفَاضَ عَلَيْهِ الْمَاءَ ثَلاَثَ مَرَّاتٍ ، ثُمَّ غَسَلَ سَائِرَ جَسَدِهِ

“Jika Rasulullah shallallahu ‘alaihi wasallam mandi junub, beliau mencuci tangannya dan berwudhu sebagaimana wudhu untuk shalat. Kemudian beliau mandi dengan menggosok-gosokkan tangannya ke rambut kepalanya hingga bila telah yakin merata mengenai dasar kulit kepalanya, beliau mengguyurkan air ke atasnya tiga kali. Lalu beliau membasuh badan lainnya.” (HR. Bukhari no. 272)

Juga ‘Aisyah radhiyallahu ‘anha mengatakan,

كُنَّا إِذَا أَصَابَتْ إِحْدَانَا جَنَابَةٌ ، أَخَذَتْ بِيَدَيْهَا ثَلاَثًا فَوْقَ رَأْسِهَا ، ثُمَّ تَأْخُذُ بِيَدِهَا عَلَى شِقِّهَا الأَيْمَنِ ، وَبِيَدِهَا الأُخْرَى عَلَى شِقِّهَا الأَيْسَرِ

“Jika salah seorang dari kami mengalami junub, maka ia mengambil air dengan kedua tangannya dan disiramkan ke atas kepala, lalu mengambil air dengan tangannya dan disiramkan ke bagian tubuh sebelah kanan, lalu kembali mengambil air dengan tangannya yang lain dan menyiramkannya ke bagian tubuh sebelah kiri.” (HR. Bukhari no. 277)

Kedelapan: Mengguyur air pada seluruh badan dimulai dari sisi yang kanan setelah itu yang kiri.

Dalilnya adalah hadits ‘Aisyah radhiyallahu ‘anha, ia berkata,

كَانَ النَّبِىُّ – صلى الله عليه وسلم – يُعْجِبُهُ التَّيَمُّنُ فِى تَنَعُّلِهِ وَتَرَجُّلِهِ وَطُهُورِهِ وَفِى شَأْنِهِ كُلِّهِ

“Nabi shallallahu ‘alaihi wa sallam biasa mendahulukan yang kanan ketika memakai sendal, ketika bersisir, ketika bersuci dan dalam setiap perkara (yang baik-baik).”  (HR. Bukhari no. 168 dan Muslim no. 268)

Mengguyur air ke seluruh tubuh di sini cukup sekali saja sebagaimana zhohir (tekstual) hadits yang membicarakan tentang mandi. Inilah salah satu pendapat dari madzhab Imam Ahmad dan dipilih oleh Syaikhul Islam Ibnu Taimiyah.
'''),
    Entry('Bagaimanakah Tata Cara Mandi pada Wanita?', content: '''
Tata cara mandi junub pada wanita sama dengan tata cara mandi yang diterangkan di atas sebagaimana telah diterangkan dalam hadits Ummu Salamah, “Saya berkata, wahai Rasulullah, aku seorang wanita yang mengepang rambut kepalaku, apakah aku harus membuka kepangku ketika mandi junub?” Beliau bersabda, “Jangan (kamu buka). Cukuplah kamu mengguyur air pada kepalamu tiga kali, kemudian guyurlah yang lainnya dengan air, maka kamu telah suci.” (HR. Muslim no. 330)

Untuk mandi karena haidh dan nifas, tata caranya sama dengan mandi junub namun ditambahkan dengan beberapa hal berikut ini:

Pertama: Menggunakan sabun dan pembersih lainnya beserta air.

Hal ini berdasarkan hadits ‘Aisyah radhiyallahu ‘anha,

أَنَّ أَسْمَاءَ سَأَلَتِ النَّبِىَّ -صلى الله عليه وسلم- عَنْ غُسْلِ الْمَحِيضِ فَقَالَ « تَأْخُذُ إِحْدَاكُنَّ مَاءَهَا وَسِدْرَتَهَا فَتَطَهَّرُ فَتُحْسِنُ الطُّهُورَ ثُمَّ تَصُبُّ عَلَى رَأْسِهَا فَتَدْلُكُهُ دَلْكًا شَدِيدًا حَتَّى تَبْلُغَ شُئُونَ رَأْسِهَا ثُمَّ تَصُبُّ عَلَيْهَا الْمَاءَ. ثُمَّ تَأْخُذُ فِرْصَةً مُمَسَّكَةً فَتَطَهَّرُ بِهَا ». فَقَالَتْ أَسْمَاءُ وَكَيْفَ تَطَهَّرُ بِهَا فَقَالَ « سُبْحَانَ اللَّهِ تَطَهَّرِينَ بِهَا ». فَقَالَتْ عَائِشَةُ كَأَنَّهَا تُخْفِى ذَلِكَ تَتَبَّعِينَ أَثَرَ الدَّمِ. وَسَأَلَتْهُ عَنْ غُسْلِ الْجَنَابَةِ فَقَالَ « تَأْخُذُ مَاءً فَتَطَهَّرُ فَتُحْسِنُ الطُّهُورَ – أَوْ تُبْلِغُ الطُّهُورَ – ثُمَّ تَصُبُّ عَلَى رَأْسِهَا فَتَدْلُكُهُ حَتَّى تَبْلُغَ شُئُونَ رَأْسِهَا ثُمَّ تُفِيضُ عَلَيْهَا الْمَاءَ »

“Asma’ bertanya kepada Nabi shallallahu ‘alaihi wa sallam tentang mandi wanita haidh. Maka beliau bersabda, “Salah seorang dari kalian hendaklah mengambil air dan daun bidara, lalu engkau bersuci, lalu membaguskan bersucinya. Kemudian hendaklah engkau menyiramkan air pada kepalanya, lalu menggosok-gosoknya dengan keras hingga mencapai akar rambut kepalanya. Kemudian hendaklah engkau menyiramkan air pada kepalanya tadi. Kemudian engkau mengambil kapas bermisik, lalu bersuci dengannya. Lalu Asma’ berkata, “Bagaimana dia dikatakan suci dengannya?” Beliau bersabda, “Subhanallah, bersucilah kamu dengannya.” Lalu Aisyah berkata -seakan-akan dia menutupi hal tersebut-, “Kamu sapu bekas-bekas darah haidh yang ada (dengan kapas tadi)”. Dan dia bertanya kepada beliau tentang mandi junub, maka beliau bersabda, ‘Hendaklah kamu mengambil air lalu bersuci dengan sebaik-baiknya bersuci, atau bersangat-sangat dalam bersuci kemudian kamu siramkan air pada kepala, lalu memijatnya hingga mencapai dasar kepalanya, kemudian mencurahkan air padanya’.” (HR. Bukhari no. 314 dan Muslim no. 332)

Kedua: Melepas kepangan sehingga air sampai ke pangkal rambut.

Dalil hal ini adalah hadits yang telah lewat,

ثُمَّ تَصُبُّ عَلَى رَأْسِهَا فَتَدْلُكُهُ دَلْكًا شَدِيدًا حَتَّى تَبْلُغَ شُئُونَ رَأْسِهَا

“Kemudian hendaklah kamu menyiramkan air pada kepalanya, lalu menggosok-gosoknya dengan keras hingga mencapai akar rambut kepalanya.” Dalil ini menunjukkan tidak cukup dengan hanya mengalirkan air seperti halnya mandi junub. Sedangkan mengenai mandi junub disebutkan,

ثُمَّ تَصُبُّ عَلَى رَأْسِهَا فَتَدْلُكُهُ حَتَّى تَبْلُغَ شُئُونَ رَأْسِهَا ثُمَّ تُفِيضُ عَلَيْهَا الْمَاءَ

“Kemudian kamu siramkan air pada kepala, lalu memijatnya hingga mencapai dasar kepalanya, kemudian mengguyurkan air padanya.”

Dalam mandi junub tidak disebutkan “menggosok-gosok dengan keras”. Hal ini menunjukkan bedanya mandi junub dan mandi karena haidh/nifas.

Ketiga: Ketika mandi sesuai masa haidh, seorang wanita disunnahkan membawa kapas atau potongan kain untuk mengusap tempat keluarnya darah guna menghilangkan sisa-sisanya. Selain itu, disunnahkan mengusap bekas darah pada kemaluan setelah mandi dengan minyak misk atau parfum lainnya. Hal ini dengan tujuan untuk menghilangkan bau yang tidak enak karena bekas darah haidh.

Perlukah Berwudhu Seusai Mandi?

Cukup kami bawakan dua riwayat tentang hal ini,

عَنْ عَائِشَةَ أَنَّ النَّبِىَّ -صلى الله عليه وسلم- كَانَ لاَ يَتَوَضَّأُ بَعْدَ الْغُسْلِ

Dari ‘Aisyah, ia berkata, “Nabi shallallahu ‘alaihi wa sallam tidak berwudhu setelah selesai mandi.” (HR. Tirmidzi no. 107, An Nasai no. 252, Ibnu Majah no. 579, Ahmad 6/68. Syaikh Al Albani mengatakan bahwa hadits ini shahih)

Sebuah riwayat dari Ibnu ‘Umar,

سُئِلَ عَنِ الْوُضُوءِ بَعْدَ الْغُسْلِ؟ فَقَالَ:وَأَيُّ وُضُوءٍ أَعَمُّ مِنَ الْغُسْلِ؟

Beliau ditanya mengenai wudhu setelah mandi. Lalu beliau menjawab, “Lantas wudhu yang mana lagi yang lebih besar dari mandi?” (HR. Ibnu Abi Syaibah secara marfu’ dan mauquf)

Abu Bakr Ibnul ‘Arobi  berkata, “Para ulama tidak berselisih pendapat bahwa wudhu telah masuk dalam mandi.” Ibnu Baththol juga telah menukil adanya ijma’ (kesepakatan ulama) dalam masalah ini.

Penjelasan ini adalah sebagai alasan yang kuat bahwa jika seseorang sudah berniat untuk mandi wajib, lalu ia mengguyur seluruh badannya dengan air, maka setelah mandi ia tidak perlu berwudhu lagi, apalagi jika sebelum mandi ia sudah berwudhu.

Apakah Boleh Mengeringkan Badan dengan Handuk Setelah Mandi?

Di dalam hadits Maimunah disebutkan mengenai tata cara mandi, lalu diakhir hadits disebutkan,

فَنَاوَلْتُهُ ثَوْبًا فَلَمْ يَأْخُذْهُ ، فَانْطَلَقَ وَهْوَ يَنْفُضُ يَدَيْهِ

“Lalu aku sodorkan kain (sebagai pengering) tetapi beliau tidak mengambilnya, lalu beliau pergi dengan mengeringkan air dari badannya dengan tangannya” (HR. Bukhari no. 276). Berdasarkan hadits ini, sebagian ulama memakruhkan mengeringkan badan setelah mandi. Namun yang tepat, hadits tersebut bukanlah pendukung pendapat tersebut dengan beberapa alasan:

Perbuatan Nabi shallallahu ‘alaihi wa sallam ketika itu masih mengandung beberapa kemungkinan. Boleh jadi beliau tidak mengambil kain (handuk) tersebut karena alasan lainnya yang bukan maksud untuk memakruhkan mengeringkan badan ketika itu. Boleh jadi kain tersebut mungkin sobek atau beliau buru-buru saja karena ada urusan lainnya.
Hadits  ini malah menunjukkan bahwa kebiasaan Nabi shallallahu ‘alaihi wa sallam adalah mengeringkan badan sehabis mandi. Seandainya bukan kebiasaan beliau, maka tentu saja beliau tidak dibawakan handuk ketika itu.
Mengeringkan air dengan tangan menunjukkan bahwa mengeringkan air dengan kain bukanlah makruh karena keduanya sama-sama mengeringkan.
Kesimpulannya, mengeringkan air dengan kain (handuk) tidaklah mengapa.
'''),
    Entry('Sumber', content: '''
https://muslim.or.id/3313-tata-cara-mandi-wajib.html
''')
  ];

  // DATA YANG DAPAT BERUBAH
  final List<Entry> dataText = <Entry>[
    Entry('Niat, Syarat Sahnya Mandi', content: '''
Para ulama mengatakan bahwa di antara fungsi niat adalah untuk membedakan manakah yang menjadi kebiasaan dan manakah ibadah. Dalam hal mandi tentu saja mesti dibedakan dengan mandi biasa. Pembedanya adalah niat. Dalam hadits dari ‘Umar bin Al Khattab, Nabi shallallahu ‘alaihi wa sallam bersabda,

إِنَّمَا الأَعْمَالُ بِالنِّيَّاتِ

“Sesungguhnya setiap amalan tergantung pada niatnya.” (HR. Bukhari no. 1 dan Muslim no. 1907)
'''),
    Entry('Rukun Mandi', content: '''
Hakikat mandi adalah mengguyur seluruh badan dengan air, yaitu mengenai rambut dan kulit.

Inilah yang diterangkan dalam banyak hadits Nabi shallallahu ‘alaihi wa sallam. Di antaranya adalah hadits ‘Aisyah radhiyallahu ‘anha yang menceritakan tata cara mandi Nabi shallallahu ‘alaihi wa sallam,

ثُمَّ يُفِيضُ الْمَاءَ عَلَى جَسَدِهِ كُلِّهِ

“Kemudian beliau mengguyur air pada seluruh badannya.” (HR. An Nasa-i no. 247. Syaikh Al Albani mengatakan bahwa hadits ini shahih)

Ibnu Hajar Al Asqolani mengatakan, “Penguatan makna dalam hadits ini menunjukkan bahwa ketika mandi beliau mengguyur air ke seluruh tubuh.”

Dari Jubair bin Muth’im berkata, “Kami saling memperbincangkan tentang mandi janabah di sisi Nabi shallallahu ‘alaihi wa sallam, lalu beliau bersabda,

أَمَّا أَنَا فَآخُذُ مِلْءَ كَفِّى ثَلاَثاً فَأَصُبُّ عَلَى رَأْسِى ثُمَّ أُفِيضُهُ بَعْدُ عَلَى سَائِرِ جَسَدِى

“Saya mengambil dua telapak tangan, tiga kali lalu saya siramkan pada kepalaku, kemudian saya tuangkan setelahnya pada semua tubuhku.” (HR. Ahmad 4/81. Syaikh Syu’aib Al Arnauth mengatakan bahwa sanad hadits ini shahih sesuai syarat Bukhari Muslim)

Dalil yang menunjukkan bahwa hanya mengguyur seluruh badan dengan air itu merupakan rukun (fardhu) mandi dan bukan selainnya adalah hadits yang diriwayatkan oleh Ummu Salamah. Ia mengatakan,

قُلْتُ يَا رَسُولَ اللَّهِ إِنِّى امْرَأَةٌ أَشُدُّ ضَفْرَ رَأْسِى فَأَنْقُضُهُ لِغُسْلِ الْجَنَابَةِ قَالَ « لاَ إِنَّمَا يَكْفِيكِ أَنْ تَحْثِى عَلَى رَأْسِكِ ثَلاَثَ حَثَيَاتٍ ثُمَّ تُفِيضِينَ عَلَيْكِ الْمَاءَ فَتَطْهُرِينَ ».

“Saya berkata, wahai Rasulullah, aku seorang wanita yang mengepang rambut kepalaku, apakah aku harus membuka kepangku ketika mandi junub?” Beliau bersabda, “Jangan (kamu buka). Cukuplah kamu mengguyur air pada kepalamu tiga kali, kemudian guyurlah yang lainnya dengan air, maka kamu telah suci.” (HR. Muslim no. 330)

Dengan seseorang memenuhi rukun mandi ini, maka mandinya dianggap sah, asalkan disertai niat untuk mandi wajib (al ghuslu). Jadi seseorang yang mandi di pancuran atau shower dan air mengenai seluruh tubuhnya, maka mandinya sudah dianggap sah.

Adapun berkumur-kumur (madhmadhoh), memasukkan air dalam hidung (istinsyaq) dan menggosok-gosok badan (ad dalk) adalah perkara yang disunnahkan menurut mayoritas ulama.
'''),
    Entry('Tata Cara Mandi yang Sempurna', content: '''
Berikut kita akan melihat tata cara mandi yang disunnahkan. Apabila hal ini dilakukan, maka akan membuat mandi tadi lebih sempurna. Yang menjadi dalil dari bahasan ini adalah dua dalil yaitu hadits dari ‘Aisyah dan hadits dari Maimunah.

Hadits pertama:

عَنْ عَائِشَةَ زَوْجِ النَّبِىِّ – صلى الله عليه وسلم – أَنَّ النَّبِىَّ – صلى الله عليه وسلم – كَانَ إِذَا اغْتَسَلَ مِنَ الْجَنَابَةِ بَدَأَ فَغَسَلَ يَدَيْهِ ، ثُمَّ يَتَوَضَّأُ كَمَا يَتَوَضَّأُ لِلصَّلاَةِ ، ثُمَّ يُدْخِلُ أَصَابِعَهُ فِى الْمَاءِ ، فَيُخَلِّلُ بِهَا أُصُولَ شَعَرِهِ ثُمَّ يَصُبُّ عَلَى رَأْسِهِ ثَلاَثَ غُرَفٍ بِيَدَيْهِ ، ثُمَّ يُفِيضُ الْمَاءَ عَلَى جِلْدِهِ كُلِّهِ

Dari ‘Aisyah, isteri Nabi shallallahu ‘alaihi wa sallam, bahwa jika Nabi shallallahu ‘alaihi wa sallam mandi junub, beliau memulainya dengan mencuci kedua telapak tangannya. Kemudian beliau berwudhu sebagaimana wudhu untuk shalat. Lalu beliau memasukkan jari-jarinya ke dalam air, lalu menggosokkannya ke kulit kepalanya, kemudian menyiramkan air ke atas kepalanya dengan cidukan kedua telapak tangannya sebanyak tiga kali, kemudian beliau mengalirkan air ke seluruh kulitnya.” (HR. Bukhari no. 248 dan Muslim no. 316)

Hadits kedua:

عَنِ ابْنِ عَبَّاسٍ قَالَ قَالَتْ مَيْمُونَةُ وَضَعْتُ لِرَسُولِ اللَّهِ – صلى الله عليه وسلم – مَاءً يَغْتَسِلُ بِهِ ، فَأَفْرَغَ عَلَى يَدَيْهِ ، فَغَسَلَهُمَا مَرَّتَيْنِ مَرَّتَيْنِ أَوْ ثَلاَثًا ، ثُمَّ أَفْرَغَ بِيَمِينِهِ عَلَى شِمَالِهِ ، فَغَسَلَ مَذَاكِيرَهُ ، ثُمَّ دَلَكَ يَدَهُ بِالأَرْضِ ، ثُمَّ مَضْمَضَ وَاسْتَنْشَقَ ، ثُمَّ غَسَلَ وَجْهَهُ وَيَدَيْهِ ثُمَّ غَسَلَ رَأْسَهُ ثَلاَثًا ، ثُمَّ أَفْرَغَ عَلَى جَسَدِهِ ، ثُمَّ تَنَحَّى مِنْ مَقَامِهِ فَغَسَلَ قَدَمَيْهِ

Dari Ibnu ‘Abbas berkata bahwa Maimunah mengatakan, “Aku pernah menyediakan air mandi untuk Rasulullah shallallahu ‘alaihi wa sallam. Lalu beliau menuangkan air pada kedua tangannya dan mencuci keduanya dua kali-dua kali atau tiga kali. Lalu dengan tangan kanannya beliau menuangkan air pada telapak tangan kirinya, kemudian beliau mencuci kemaluannya. Setelah itu beliau menggosokkan tangannya ke tanah. Kemudian beliau berkumur-kumur dan memasukkan air ke dalam hidung. Lalu beliau membasuh muka dan kedua tangannya. Kemudian beliau membasuh kepalanya tiga kali dan mengguyur seluruh badannya. Setelah itu beliau bergeser dari posisi semula lalu mencuci kedua telapak kakinya (di tempat yang berbeda).” (HR. Bukhari no. 265 dan Muslim no. 317)

Dari dua hadits di atas, kita dapat merinci tata cara mandi yang disunnahkan sebagai berikut.

Pertama: Mencuci tangan terlebih dahulu sebanyak tiga kali sebelum tangan tersebut dimasukkan dalam bejana atau sebelum mandi.

Ibnu Hajar Al Asqolani rahimahullah mengatakan, “Boleh jadi tujuan untuk mencuci tangan terlebih dahulu di sini adalah untuk membersihkan tangan dari kotoran … Juga boleh jadi tujuannya adalah karena mandi tersebut dilakukan setelah bangun tidur.”

Kedua: Membersihkan kemaluan dan kotoran yang ada dengan tangan kiri.

Ketiga: Mencuci tangan setelah membersihkan kemaluan dengan menggosokkan ke tanah atau dengan menggunakan sabun.

An Nawawi rahimahullah mengatakan, “Disunnahkan bagi orang yang beristinja’ (membersihkan kotoran) dengan air, ketika selesai, hendaklah ia mencuci tangannya dengan debu atau semacam sabun, atau hendaklah ia menggosokkan tangannya ke tanah atau tembok untuk menghilangkan kotoran yang ada.”

Keempat: Berwudhu dengan wudhu yang sempurna seperti ketika hendak shalat.

Asy Syaukani rahimahullah mengatakan, “Adapun mendahulukan mencuci anggota wudhu ketika mandi itu tidaklah wajib. Cukup dengan seseorang mengguyur badan ke seluruh badan tanpa didahului dengan berwudhu, maka itu sudah disebut mandi (al ghuslu).”

Untuk kaki ketika berwudhu, kapankah dicuci?

Jika kita melihat dari hadits Maimunah di atas, dicontohkan oleh Nabi shallallahu ‘alaihi wa sallam bahwa beliau membasuh anggota wudhunya dulu sampai membasuh kepala, lalu mengguyur air ke seluruh tubuh, sedangkan kaki dicuci terakhir. Namun hadits ‘Aisyah menerangkan bahwa Nabi shallallahu ‘alaihi wa sallam berwudhu secara sempurna (sampai mencuci kaki), setelah itu beliau mengguyur air ke seluruh tubuh.

Dari dua hadits tersebut, para ulama akhirnya berselisih pendapat kapankah kaki itu dicuci. Yang tepat tentang masalah ini, dua cara yang disebut dalam hadits ‘Aisyah dan Maimunah bisa sama-sama digunakan. Yaitu kita bisa saja mandi dengan berwudhu secara sempurna terlebih dahulu, setelah itu kita mengguyur air ke seluruh tubuh, sebagaimana disebutkan dalam riwayat ‘Aisyah. Atau boleh jadi kita gunakan cara mandi dengan mulai berkumur-kumur, memasukkan air dalam hidup, mencuci wajah, mencuci kedua tangan, mencuci kepala, lalu mengguyur air ke seluruh tubuh, kemudian kaki dicuci terakhir.

Syaikh Abu Malik hafizhohullah mengatakan, “Tata cara mandi (apakah dengan cara yang disebut dalam hadits ‘Aisyah dan Maimunah) itu sama-sama boleh digunakan, dalam masalah ini ada kelapangan.”

Kelima: Mengguyur air pada kepala sebanyak tiga kali hingga sampai ke pangkal rambut.

Keenam: Memulai mencuci kepala bagian kanan, lalu kepala bagian kiri.

Ketujuh: Menyela-nyela rambut.

Dalam hadits ‘Aisyah radhiyallahu ‘anha disebutkan,

كَانَ رَسُولُ اللَّهِ – صلى الله عليه وسلم – إِذَا اغْتَسَلَ مِنَ الْجَنَابَةِ غَسَلَ يَدَيْهِ ، وَتَوَضَّأَ وُضُوءَهُ لِلصَّلاَةِ ثُمَّ اغْتَسَلَ ، ثُمَّ يُخَلِّلُ بِيَدِهِ شَعَرَهُ ، حَتَّى إِذَا ظَنَّ أَنْ قَدْ أَرْوَى بَشَرَتَهُ ، أَفَاضَ عَلَيْهِ الْمَاءَ ثَلاَثَ مَرَّاتٍ ، ثُمَّ غَسَلَ سَائِرَ جَسَدِهِ

“Jika Rasulullah shallallahu ‘alaihi wasallam mandi junub, beliau mencuci tangannya dan berwudhu sebagaimana wudhu untuk shalat. Kemudian beliau mandi dengan menggosok-gosokkan tangannya ke rambut kepalanya hingga bila telah yakin merata mengenai dasar kulit kepalanya, beliau mengguyurkan air ke atasnya tiga kali. Lalu beliau membasuh badan lainnya.” (HR. Bukhari no. 272)

Juga ‘Aisyah radhiyallahu ‘anha mengatakan,

كُنَّا إِذَا أَصَابَتْ إِحْدَانَا جَنَابَةٌ ، أَخَذَتْ بِيَدَيْهَا ثَلاَثًا فَوْقَ رَأْسِهَا ، ثُمَّ تَأْخُذُ بِيَدِهَا عَلَى شِقِّهَا الأَيْمَنِ ، وَبِيَدِهَا الأُخْرَى عَلَى شِقِّهَا الأَيْسَرِ

“Jika salah seorang dari kami mengalami junub, maka ia mengambil air dengan kedua tangannya dan disiramkan ke atas kepala, lalu mengambil air dengan tangannya dan disiramkan ke bagian tubuh sebelah kanan, lalu kembali mengambil air dengan tangannya yang lain dan menyiramkannya ke bagian tubuh sebelah kiri.” (HR. Bukhari no. 277)

Kedelapan: Mengguyur air pada seluruh badan dimulai dari sisi yang kanan setelah itu yang kiri.

Dalilnya adalah hadits ‘Aisyah radhiyallahu ‘anha, ia berkata,

كَانَ النَّبِىُّ – صلى الله عليه وسلم – يُعْجِبُهُ التَّيَمُّنُ فِى تَنَعُّلِهِ وَتَرَجُّلِهِ وَطُهُورِهِ وَفِى شَأْنِهِ كُلِّهِ

“Nabi shallallahu ‘alaihi wa sallam biasa mendahulukan yang kanan ketika memakai sendal, ketika bersisir, ketika bersuci dan dalam setiap perkara (yang baik-baik).”  (HR. Bukhari no. 168 dan Muslim no. 268)

Mengguyur air ke seluruh tubuh di sini cukup sekali saja sebagaimana zhohir (tekstual) hadits yang membicarakan tentang mandi. Inilah salah satu pendapat dari madzhab Imam Ahmad dan dipilih oleh Syaikhul Islam Ibnu Taimiyah.
'''),
    Entry('Bagaimanakah Tata Cara Mandi pada Wanita?', content: '''
Tata cara mandi junub pada wanita sama dengan tata cara mandi yang diterangkan di atas sebagaimana telah diterangkan dalam hadits Ummu Salamah, “Saya berkata, wahai Rasulullah, aku seorang wanita yang mengepang rambut kepalaku, apakah aku harus membuka kepangku ketika mandi junub?” Beliau bersabda, “Jangan (kamu buka). Cukuplah kamu mengguyur air pada kepalamu tiga kali, kemudian guyurlah yang lainnya dengan air, maka kamu telah suci.” (HR. Muslim no. 330)

Untuk mandi karena haidh dan nifas, tata caranya sama dengan mandi junub namun ditambahkan dengan beberapa hal berikut ini:

Pertama: Menggunakan sabun dan pembersih lainnya beserta air.

Hal ini berdasarkan hadits ‘Aisyah radhiyallahu ‘anha,

أَنَّ أَسْمَاءَ سَأَلَتِ النَّبِىَّ -صلى الله عليه وسلم- عَنْ غُسْلِ الْمَحِيضِ فَقَالَ « تَأْخُذُ إِحْدَاكُنَّ مَاءَهَا وَسِدْرَتَهَا فَتَطَهَّرُ فَتُحْسِنُ الطُّهُورَ ثُمَّ تَصُبُّ عَلَى رَأْسِهَا فَتَدْلُكُهُ دَلْكًا شَدِيدًا حَتَّى تَبْلُغَ شُئُونَ رَأْسِهَا ثُمَّ تَصُبُّ عَلَيْهَا الْمَاءَ. ثُمَّ تَأْخُذُ فِرْصَةً مُمَسَّكَةً فَتَطَهَّرُ بِهَا ». فَقَالَتْ أَسْمَاءُ وَكَيْفَ تَطَهَّرُ بِهَا فَقَالَ « سُبْحَانَ اللَّهِ تَطَهَّرِينَ بِهَا ». فَقَالَتْ عَائِشَةُ كَأَنَّهَا تُخْفِى ذَلِكَ تَتَبَّعِينَ أَثَرَ الدَّمِ. وَسَأَلَتْهُ عَنْ غُسْلِ الْجَنَابَةِ فَقَالَ « تَأْخُذُ مَاءً فَتَطَهَّرُ فَتُحْسِنُ الطُّهُورَ – أَوْ تُبْلِغُ الطُّهُورَ – ثُمَّ تَصُبُّ عَلَى رَأْسِهَا فَتَدْلُكُهُ حَتَّى تَبْلُغَ شُئُونَ رَأْسِهَا ثُمَّ تُفِيضُ عَلَيْهَا الْمَاءَ »

“Asma’ bertanya kepada Nabi shallallahu ‘alaihi wa sallam tentang mandi wanita haidh. Maka beliau bersabda, “Salah seorang dari kalian hendaklah mengambil air dan daun bidara, lalu engkau bersuci, lalu membaguskan bersucinya. Kemudian hendaklah engkau menyiramkan air pada kepalanya, lalu menggosok-gosoknya dengan keras hingga mencapai akar rambut kepalanya. Kemudian hendaklah engkau menyiramkan air pada kepalanya tadi. Kemudian engkau mengambil kapas bermisik, lalu bersuci dengannya. Lalu Asma’ berkata, “Bagaimana dia dikatakan suci dengannya?” Beliau bersabda, “Subhanallah, bersucilah kamu dengannya.” Lalu Aisyah berkata -seakan-akan dia menutupi hal tersebut-, “Kamu sapu bekas-bekas darah haidh yang ada (dengan kapas tadi)”. Dan dia bertanya kepada beliau tentang mandi junub, maka beliau bersabda, ‘Hendaklah kamu mengambil air lalu bersuci dengan sebaik-baiknya bersuci, atau bersangat-sangat dalam bersuci kemudian kamu siramkan air pada kepala, lalu memijatnya hingga mencapai dasar kepalanya, kemudian mencurahkan air padanya’.” (HR. Bukhari no. 314 dan Muslim no. 332)

Kedua: Melepas kepangan sehingga air sampai ke pangkal rambut.

Dalil hal ini adalah hadits yang telah lewat,

ثُمَّ تَصُبُّ عَلَى رَأْسِهَا فَتَدْلُكُهُ دَلْكًا شَدِيدًا حَتَّى تَبْلُغَ شُئُونَ رَأْسِهَا

“Kemudian hendaklah kamu menyiramkan air pada kepalanya, lalu menggosok-gosoknya dengan keras hingga mencapai akar rambut kepalanya.” Dalil ini menunjukkan tidak cukup dengan hanya mengalirkan air seperti halnya mandi junub. Sedangkan mengenai mandi junub disebutkan,

ثُمَّ تَصُبُّ عَلَى رَأْسِهَا فَتَدْلُكُهُ حَتَّى تَبْلُغَ شُئُونَ رَأْسِهَا ثُمَّ تُفِيضُ عَلَيْهَا الْمَاءَ

“Kemudian kamu siramkan air pada kepala, lalu memijatnya hingga mencapai dasar kepalanya, kemudian mengguyurkan air padanya.”

Dalam mandi junub tidak disebutkan “menggosok-gosok dengan keras”. Hal ini menunjukkan bedanya mandi junub dan mandi karena haidh/nifas.

Ketiga: Ketika mandi sesuai masa haidh, seorang wanita disunnahkan membawa kapas atau potongan kain untuk mengusap tempat keluarnya darah guna menghilangkan sisa-sisanya. Selain itu, disunnahkan mengusap bekas darah pada kemaluan setelah mandi dengan minyak misk atau parfum lainnya. Hal ini dengan tujuan untuk menghilangkan bau yang tidak enak karena bekas darah haidh.

Perlukah Berwudhu Seusai Mandi?

Cukup kami bawakan dua riwayat tentang hal ini,

عَنْ عَائِشَةَ أَنَّ النَّبِىَّ -صلى الله عليه وسلم- كَانَ لاَ يَتَوَضَّأُ بَعْدَ الْغُسْلِ

Dari ‘Aisyah, ia berkata, “Nabi shallallahu ‘alaihi wa sallam tidak berwudhu setelah selesai mandi.” (HR. Tirmidzi no. 107, An Nasai no. 252, Ibnu Majah no. 579, Ahmad 6/68. Syaikh Al Albani mengatakan bahwa hadits ini shahih)

Sebuah riwayat dari Ibnu ‘Umar,

سُئِلَ عَنِ الْوُضُوءِ بَعْدَ الْغُسْلِ؟ فَقَالَ:وَأَيُّ وُضُوءٍ أَعَمُّ مِنَ الْغُسْلِ؟

Beliau ditanya mengenai wudhu setelah mandi. Lalu beliau menjawab, “Lantas wudhu yang mana lagi yang lebih besar dari mandi?” (HR. Ibnu Abi Syaibah secara marfu’ dan mauquf)

Abu Bakr Ibnul ‘Arobi  berkata, “Para ulama tidak berselisih pendapat bahwa wudhu telah masuk dalam mandi.” Ibnu Baththol juga telah menukil adanya ijma’ (kesepakatan ulama) dalam masalah ini.

Penjelasan ini adalah sebagai alasan yang kuat bahwa jika seseorang sudah berniat untuk mandi wajib, lalu ia mengguyur seluruh badannya dengan air, maka setelah mandi ia tidak perlu berwudhu lagi, apalagi jika sebelum mandi ia sudah berwudhu.

Apakah Boleh Mengeringkan Badan dengan Handuk Setelah Mandi?

Di dalam hadits Maimunah disebutkan mengenai tata cara mandi, lalu diakhir hadits disebutkan,

فَنَاوَلْتُهُ ثَوْبًا فَلَمْ يَأْخُذْهُ ، فَانْطَلَقَ وَهْوَ يَنْفُضُ يَدَيْهِ

“Lalu aku sodorkan kain (sebagai pengering) tetapi beliau tidak mengambilnya, lalu beliau pergi dengan mengeringkan air dari badannya dengan tangannya” (HR. Bukhari no. 276). Berdasarkan hadits ini, sebagian ulama memakruhkan mengeringkan badan setelah mandi. Namun yang tepat, hadits tersebut bukanlah pendukung pendapat tersebut dengan beberapa alasan:

Perbuatan Nabi shallallahu ‘alaihi wa sallam ketika itu masih mengandung beberapa kemungkinan. Boleh jadi beliau tidak mengambil kain (handuk) tersebut karena alasan lainnya yang bukan maksud untuk memakruhkan mengeringkan badan ketika itu. Boleh jadi kain tersebut mungkin sobek atau beliau buru-buru saja karena ada urusan lainnya.
Hadits  ini malah menunjukkan bahwa kebiasaan Nabi shallallahu ‘alaihi wa sallam adalah mengeringkan badan sehabis mandi. Seandainya bukan kebiasaan beliau, maka tentu saja beliau tidak dibawakan handuk ketika itu.
Mengeringkan air dengan tangan menunjukkan bahwa mengeringkan air dengan kain bukanlah makruh karena keduanya sama-sama mengeringkan.
Kesimpulannya, mengeringkan air dengan kain (handuk) tidaklah mengapa.
'''),
    Entry('Sumber', content: '''
https://muslim.or.id/3313-tata-cara-mandi-wajib.html
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
            // SUBTITLE MANDI BESAR
            Center(
                child: Text(
              "Mandi Besar",
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
