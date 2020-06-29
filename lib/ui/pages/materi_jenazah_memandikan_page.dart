part of 'pages.dart';

class MateriJenazahMemandikanPage extends StatefulWidget {
  @override
  _MateriJenazahMemandikanPageState createState() => _MateriJenazahMemandikanPageState();
}

class _MateriJenazahMemandikanPageState extends State<MateriJenazahMemandikanPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Hukum memandikan mayit', content: '''
Memandikan mayit hukumnya fardhu kifayah. Berdasarkan hadits dari Abdullah bin Abbas radhiallahu’anhu, beliau berkata:

بينَا رجلٌ واقفٌ مع النبيِّ صلَّى اللهُ عليهِ وسلَّمَ بعَرَفَةَ ، إذْ وَقَعَ عن راحلتِهِ فَوَقَصَتْهُ ، أو قال فأَقْعَصَتْهُ ، فقالَ النبيُّ صلَّى اللهُ عليهِ وسلَّمَ : اغْسِلوهُ بماءٍ وسِدْرٍ ، وكَفِّنُوهُ في ثَوْبَيْنِ ، أو قالَ : ثَوْبَيْهِ ، ولا تُحَنِّطُوهُ ، ولا تُخَمِّروا رأسَهُ ، فإنَّ اللهَ يبْعَثُهُ يومَ القيامةِ يُلَبِّي

“Ada seorang lelaki yang sedang wukuf di Arafah bersama Nabi Shallallahu’alaihi Wasallam. Tiba-tiba ia terjatuh dari hewan tunggangannya lalu meninggal. Maka Nabi Shallallahu’alaihi Wasallam bersabda: mandikanlah ia dengan air dan daun bidara. Dan kafanilah dia dengan dua lapis kain, jangan beri minyak wangi dan jangan tutup kepalanya. Karena Allah akan membangkitkannya di hari Kiamat dalam keadaan bertalbiyah” (HR. Bukhari no. 1849, Muslim no. 1206).

Juga hadits dari Ummu ‘Athiyyah radhialahu’anha, ia berkata:

تُوفيتْ إحدى بناتِ النبيِّ صلَّى اللهُ عليهِ وسلَّمَ ، فخرج فقال : اغْسِلْنَها ثلاثًا ، أو خمسًا ، أو أكثرَ من ذلك إن رأيتُنَّ ذلك ، بماءٍ وسدرٍ ، واجعلنَ في الآخرةِ كافورًا ، أو شيئًا من كافورٍ، فإذا فرغتُنَّ فآذِنَّنِي فلما فرغنا آذناه فألقى إلينا حقوه فضفرنا شعرها ثلاثة قرون وألقيناها خلفها

“Salah seorang putri Nabi Shallallahu’alaihi Wasallam meninggal (yaitu Zainab). Maka beliau keluar dan bersabda: “mandikanlah ia tiga kali, atau lima kali atau lebih dari itu jika kalian menganggap itu perlu. Dengan air dan daun bidara. Dan jadikanlah siraman akhirnya adalah air yang dicampur kapur barus, atau sedikit kapur barus. Jika kalian sudah selesai, maka biarkanlah aku masuk”. Ketika kami telah menyelesaikannya, maka kami beritahukan kepada beliau. Kemudian diberikan kepada kami kain penutup badannya, dan kami menguncir rambutnya menjadi tiga kunciran, lalu kami arahkan ke belakangnya” (HR. Bukhari no. 1258, Muslim no. 939).
'''),
    Entry('Siapa yang memandikan mayit?', content: '''
Yang memandikan mayit hendaknya orang yang paham fikih pemandian mayit. Lebih diutamakan jika dari kalangan kerabat mayit. Sebagaimana yang memandikan jenazah Nabi Shallallahu’alaihi Wasallam adalah Ali radhiallahu’anhu dan kerabat Nabi. Ali mengatakan:

غسلتُ رسولَ اللهِ صلَّى اللهُ عليه وسلَّم , فذهَبتُ أنظُرُ ما يكونُ منَ الميتِ فلم أرَ شيئًا , وكان طيبًا حيًّا وميتًا , وولي دفنَه وإجنانَه دونَ الناسِ أربعةٌ : عليُّ بنُ أبي طالبٍ , والعباسُ , والفضلُ بنُ العباسِ , وصالحٌ مولى رسولِ اللهِ صلَّى اللهُ عليه وسلَّم وألحدَ لرسولِ اللهِ صلَّى اللهُ عليه وسلَّم لحدًا ونُصِبَ عليه اللبنُ نَصبًا

“Aku memandikan Rasulullah Shallallahu’alaihi Wasallam. Dan aku memperhatikan jasad beliau seorang tidak ada celanya. Jasad beliau bagus ketika hidup maupun ketika sudah wafat. Dan yang menguburkan beliau dan menutupi beliau dari pandangan orang-orang ada empat orang: Ali bin Abi Thalib, Al Abbas, Al Fadhl bin Al Abbas, dan Shalih pembantu Rasulullah Shallallahu’alaihi Wasallam. Aku juga membuat liang lahat untuk Rasulullah Shallallahu’alaihi Wasallam dan di atasnya diletakkan batu bata” (HR. Ibnu Majah no. 1467 dishahihkan Al Albani dalam Shahih Ibni Majah).

Dan wajib bagi jenazah laki-laki dimandikan oleh laki-laki. Demikian juga jenazah wanita dimandikan oleh wanita. Karena Kecuali suami terhadap istrinya atau sebaliknya. Hal ini dikarenakan wajibnya menjaga aurat. Rasulullah Shallallahu’alaihi Wasallam ditanya:

يا رسولَ اللَّهِ عوراتُنا ما نأتي منها وما نذَرُ قالَ احفَظْ عورتَكَ إلَّا من زوجتِكَ أو ما ملكت يمينُكَ

“Wahai Rasulullah, mengenai aurat kami, kepada siapa boleh kami tampakkan dan kepada siapa tidak boleh ditampakkan? Rasulullah menjawab: “tutuplah auratmu kecuali kepada istrimu atau budak wanitamu” (HR. Tirmidzi no. 2794, dihasankan Al Albani dalam Shahih At Tirmidzi).

Kecuali bagi anak yang berusia kurang dari 7 tahun maka boleh dimandikan oleh lelaki atau wanita.
'''),
    Entry('Perangkat memandikan mayit', content: '''
Perangkat yang dibutuhkan untuk memandikan mayit diantaranya:

- Sarung tangan atau kain untuk dipakai orang yang memandikan agar terjaga dari najis, kotoran dan penyakit
- Masker penutup hidung juga untuk menjaga orang yang memandikan agar terjaga dari penyakit
- Spon penggosok atau kain untuk membersihkan badan mayit
- Kapur barus yang sudah digerus untuk dilarutkan dengan air
- Daun sidr (bidara) jika ada, yang busanya digunakan untuk mencuci rambut dan kepala mayit. Jika tidak ada, maka bisa diganti dengan sampo
- Satu ember sebagai wadah air
- Satu embar sebagai wadah air kapur barus
- Gayung
- Kain untuk menutupi aurat mayit
- Handuk
- Plester bila dibutuhkan untuk menutupi luka yang ada pada mayat
- Gunting kuku untuk menggunting kuku mayit jika panjang
'''),
    Entry('Cara memandikan mayit', content: '''
Melemaskan persendian mayit
Syaikh Abdullah bin Jibrin mengatakan:

وأما تليين مفاصله فالحكمة في ذلك أن تلين عند الغسل، وذلك بأن يمد يده ثم يثنيها، ويمد منكبه ثم يثنيه، وهكذا يفعل بيده الأخرى، وكذلك يفعل برجليه، فيقبض رجله ليثنيها ثم يمدها مرتين أو ثلاثاً حتى تلين عند الغسل

“Adapun melemaskan persendian, hikmahnya untuk memudahkan ketika dimandikan. Caranya dengan merentangkan tangannya lalu ditekuk. Dan direntangkan pundaknya lalu ditekuk. Kemudian pada tangan yang satunya lagi. Demikian juga dilakukan pada kaki. Kakinya pegang lalu ditekuk, kemudian direntangkan, sebanyak dua kali atau tiga kali. Sampai ia mudah untuk dimandikan” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/424).

Dan hendaknya berlaku lembut pada mayit. Karena Rasulullah shalallahu ‘alaihi wa salam bersabda:

كَسْرُ عَظْمِ الْمَيِّتِ كَكَسْرِهِ حَيًّا

“Memecah tulang orang yang telah meninggal dunia adalah seperti memecahnya dalam keadaan hidup” (HR. Abu Daud no. 3207, dishahihkan Al Albani dalam Shahih Abu Daud).

Melepas pakaian yang melekat di badannya
Syaikh Abdullah bin Jibrin mengatakan:

(وخلع ثيابه) يعني: الثياب التي مات فيها يسن أن تخلع ساعة موته، ويستر برداء أو نحوه

“[Dilepaskan pakaiannya] yaitu pakaian yang dipakai mayit ketika meninggal. Disunnahkan untuk dilepaskan ketika ia baru wafat. Kemudian ditutup dengan rida (kain) atau semisalnya” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/424).

Namun orang yang meninggal dunia ketika ihram tidaklah boleh ditutup wajah dan kepalanya, berdasarkan hadits Ibnu Abbas radhiyallahu ‘anhuma di atas.

Cara melepaskan pakaiannya jika memang sulit untuk dilepaskan dengan cara biasa, maka digunting hingga terlepas.

Menutup tempat mandi dari pandangan orang banyak
Syaikh Abdullah bin Jibrin mengatakan:

أن يستر في داخل غرفة مغلقة الأبواب والنوافذ، ولا يراه أحد إلا الذين يتولون تغسيله، ولا يجوز أن يغسل أمام الناس

“Mayat ditutup dalam suatu ruangan yang tertutup pintu dan jendelanya. Sehingga tidak terlihat oleh siapapun kecuali orang yang mengurus pemandian jenazah. Dan tidak boleh dimandikan di hadapan orang-orang banyak” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/428).

Kemudian mayit ditutup dengan kain pada bagian auratnya terhadap sesama jenis, yaitu dari pusar hingga lutut bagi laki-laki dan dari dada hingga lutut bagi wanita.
'''),
    Entry('Teknis pemandian', content: '''
Disebutkan dalam Matan Akhsharil Mukhtasharat:

نوى وسمى وهما كفي غسل حَيّ ثمَّ يرفع راس غير حَامِل الى قرب جُلُوس ويعصر بَطْنه بِرِفْق وَيكثر المَاء حِينَئِذٍ ثمَّ يلف على يَده خرقَة فينجيه بهَا وَحرم مس عَورَة من لَهُ سبع

ثمَّ يدْخل اصبعيه وَعَلَيْهَا خرقَة مبلولة فِي فَمه فيمسح اسنانه وَفِي مَنْخرَيْهِ فينظفهما بِلَا ادخال مَاء ثمَّ يوضئه وَيغسل راسه ولحيته برغوة السدر وبدنه بثفله ثمَّ يفِيض عَلَيْهِ المَاء وَسن تثليث وتيامن وامرار يَده كل مرّة على بَطْنه فان لم ينق زَاد حَتَّى ينقى وَكره اقْتِصَار على مرّة وَمَاء حَار وخلال واشنان بِلَا حَاجَة وتسريح شعره

وَسن كافور وَسدر فِي الاخيرة وخضاب شعر وقص شَارِب وتقليم اظفار ان طالا

“Berniat dan membaca basmalah, keduanya wajib ketika mandi untuk orang hidup. Kemudian angkat kepalanya jika ia bukan wanita hamil, sampai mendekati posisi duduk. Kemudian tekan-tekan perutnya dengan lembut. Perbanyak aliran air ketika itu, kemudian lapisi tangan dengan kain dan lakukan istinja (cebok) dengannya. Namun diharamkan menyentuh aurat orang yang berusia 7 tahun (atau lebih). Kemudian masukkan kain yang basah dengan jari-jari ke mulutnya lalu gosoklah giginya dan kedua lubang hidungnya. Bersihkan keduanya tanpa memasukkan air. Kemudian lakukanlah wudhu pada mayit. Kemudian cucilah kepalanya dan jenggotnya dengan busa dari daun bidara. Dan juga pada badannya beserta bagian belakangnya. Kemudian siram air padanya. Disunnahkan diulang hingga tiga kali dan disunnahkan juga memulai dari sebelah kanan. Juga disunnahkan melewatkan air pada perutnya dengan tangan. Jika belum bersih diulang terus hingga bersih. Dimakruhkan hanya mencukupkan sekali saja, dan dimakruhkan menggunakan air panas dan juga daun usynan tanpa kebutuhan. Kemudian sisirlah rambutnya dan disunnahkan air kapur barus dan bidara pada siraman terakhir. Disunnahkan menyemir rambutnya dan memotong kumisnya serta memotong kukunya jika panjang”.
'''),
    Entry('Poin-poin tambahan seputar teknis pemandian mayit', content: '''
- Yang wajib dalam memandikan mayit adalah sekali. Disunnahkan tiga kali, boleh lebih dari itu jika dibutuhkan
- Bagi jenazah wanita, dilepaskan ikatan rambutnya dan dibersihkan. Kemudian dikepang menjadi tiga kepangan dan diletakkan di bagian belakangnya. Sebagaimana dalam hadits Ummu Athiyyah di atas
'''),
    Entry('Jika tidak memungkinkan mandi, maka diganti tayammum', content: '''
Apabila tidak ada air untuk memandikan mayit, atau dikhawatirkan akan tersayat-sayat tubuhnya jika dimandikan, atau mayat tersebut seorang wanita di tengah-tengah kaum lelaki, sedangkan tidak ada mahramnya atau sebaliknya, maka mayat tersebut di tayammumi dengan tanah (debu) yang baik, diusap wajah dan kedua tangannya dengan penghalang dari kain atau yang lainnya.

Syaikh Abdullah bin Jibrin mengatakan:

(وإذا تعذر غسل ميت يمم) وذلك لأجل المشقة، فيضرب أحدهم يديه بالتراب، ويمسح وجهه، ويمسح كفيه، ويقوم مقام الغسل، ويمثلون لذلك بالمحترق الذي إذا غسل تمزق لحمه، فلا يستطيعون أن يغسلوه، وكذلك من كان في بدنه جروح كثيرة، وجلدته بشعة، بحيث إنه إذا صب عليه الماء تمزق جلده، وتمزق لحمه؛ فلا يغسل والحالة هذه

“[Jika ada udzur untuk dimandikan, maka mayit di-tayammumi], yaitu karena adanya masyaqqah. Maka salah seorang memukulkan kedua tangannya ke debu kemudian diusap ke wajah dan kedua telapak tangannya. Ini sudah menggantikan posisi mandi. Misalnya bagi orang yang mati terbakar dan jika dimandikan akan rusak dagingnya, maka tidak bisa dimandikan. Demikian juga orang yang penuh dengan luka dan kulitnya berantakan. Jika terkena dimandikan dengan air maka akan robek-robek kulitnya dan dagingnya. Maka yang seperti ini tidak dimandikan” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/435-436).

Disunnahkan untuk mandi bagi orang yang telah selesai memandikan mayit.
Rasulullah Shallallahu ‘alaihi wa sallam bersabda:

مَنْ غَسَّلَ مَيِّتًا فَلْيَغْتَسِلْ وَمَنْ حَمَلَهُ فَلْيَتَوَضَّأْ

“Barangsiapa yang memandikan mayit, maka hendaklah dia mandi. Dan barangsiapa yang memikul jenazah, maka hendaklah dia wudhu“. (HR Abu Dawud no. 3161 dihasankan Al Albani dalam Ahkamul Janaiz no. 71).
'''),
    Entry('Janin yang keguguran', content: '''
Janin yang mati karena keguguran dan telah berumur lebih dari empat bulan, maka dimandikan dan dishalatkan. Jika 4 bulan atau kurang maka tidak perlu. Berdasarkan hadits dari Al Mughirah bin Syu’bah secara marfu’:

والسِّقطُ يُصلِّى عليه ويُدعَى لوالدَيه بالمغفرةِ والرحمةِ

“Janin yang mati keguguran, dia dishalatkan dan dido’akanampunan dan rahmat untuk kedua orang tuanya” (HR. Abu Dawud no. 3180, dishahihkan Al Albani dalam Shahih Abu Daud).

Syaikh Abdullah bin Jibrin mengatakan:

السقط الذي عمره دون أربعة أشهر: الصحيح أنه لا يكفن، وإنما يلف ويدفن في مكان طاهر، وليس له حكم الإنسان، فإذا تمت له أربعة أشهر فإنه يعامل كالحي، فيغسل، ويكفن، ويصلى عليه

“Janin yang mati keguguran jika di bawah empat bulan maka yang shahih ia tidak dikafani. Namun ia dilipat dan dikuburkan di tempat yang bersih. Dan ia tidak diperlakukan sebagaimana manusia. Jika sudah berusia 4 bulan (atau lebh) maka diperlakukan sebagaimana manusia yang hidup, yaitu dimandikan, dikafani dan dishalatkan” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/435).
'''),
    Entry('Sumber', content: '''
https://muslim.or.id/43876-fikih-pengurusan-jenazah-1-memandikan-dan-mengkafani.html
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Hukum memandikan mayit', content: '''
Memandikan mayit hukumnya fardhu kifayah. Berdasarkan hadits dari Abdullah bin Abbas radhiallahu’anhu, beliau berkata:

بينَا رجلٌ واقفٌ مع النبيِّ صلَّى اللهُ عليهِ وسلَّمَ بعَرَفَةَ ، إذْ وَقَعَ عن راحلتِهِ فَوَقَصَتْهُ ، أو قال فأَقْعَصَتْهُ ، فقالَ النبيُّ صلَّى اللهُ عليهِ وسلَّمَ : اغْسِلوهُ بماءٍ وسِدْرٍ ، وكَفِّنُوهُ في ثَوْبَيْنِ ، أو قالَ : ثَوْبَيْهِ ، ولا تُحَنِّطُوهُ ، ولا تُخَمِّروا رأسَهُ ، فإنَّ اللهَ يبْعَثُهُ يومَ القيامةِ يُلَبِّي

“Ada seorang lelaki yang sedang wukuf di Arafah bersama Nabi Shallallahu’alaihi Wasallam. Tiba-tiba ia terjatuh dari hewan tunggangannya lalu meninggal. Maka Nabi Shallallahu’alaihi Wasallam bersabda: mandikanlah ia dengan air dan daun bidara. Dan kafanilah dia dengan dua lapis kain, jangan beri minyak wangi dan jangan tutup kepalanya. Karena Allah akan membangkitkannya di hari Kiamat dalam keadaan bertalbiyah” (HR. Bukhari no. 1849, Muslim no. 1206).

Juga hadits dari Ummu ‘Athiyyah radhialahu’anha, ia berkata:

تُوفيتْ إحدى بناتِ النبيِّ صلَّى اللهُ عليهِ وسلَّمَ ، فخرج فقال : اغْسِلْنَها ثلاثًا ، أو خمسًا ، أو أكثرَ من ذلك إن رأيتُنَّ ذلك ، بماءٍ وسدرٍ ، واجعلنَ في الآخرةِ كافورًا ، أو شيئًا من كافورٍ، فإذا فرغتُنَّ فآذِنَّنِي فلما فرغنا آذناه فألقى إلينا حقوه فضفرنا شعرها ثلاثة قرون وألقيناها خلفها

“Salah seorang putri Nabi Shallallahu’alaihi Wasallam meninggal (yaitu Zainab). Maka beliau keluar dan bersabda: “mandikanlah ia tiga kali, atau lima kali atau lebih dari itu jika kalian menganggap itu perlu. Dengan air dan daun bidara. Dan jadikanlah siraman akhirnya adalah air yang dicampur kapur barus, atau sedikit kapur barus. Jika kalian sudah selesai, maka biarkanlah aku masuk”. Ketika kami telah menyelesaikannya, maka kami beritahukan kepada beliau. Kemudian diberikan kepada kami kain penutup badannya, dan kami menguncir rambutnya menjadi tiga kunciran, lalu kami arahkan ke belakangnya” (HR. Bukhari no. 1258, Muslim no. 939).
'''),
    Entry('Siapa yang memandikan mayit?', content: '''
Yang memandikan mayit hendaknya orang yang paham fikih pemandian mayit. Lebih diutamakan jika dari kalangan kerabat mayit. Sebagaimana yang memandikan jenazah Nabi Shallallahu’alaihi Wasallam adalah Ali radhiallahu’anhu dan kerabat Nabi. Ali mengatakan:

غسلتُ رسولَ اللهِ صلَّى اللهُ عليه وسلَّم , فذهَبتُ أنظُرُ ما يكونُ منَ الميتِ فلم أرَ شيئًا , وكان طيبًا حيًّا وميتًا , وولي دفنَه وإجنانَه دونَ الناسِ أربعةٌ : عليُّ بنُ أبي طالبٍ , والعباسُ , والفضلُ بنُ العباسِ , وصالحٌ مولى رسولِ اللهِ صلَّى اللهُ عليه وسلَّم وألحدَ لرسولِ اللهِ صلَّى اللهُ عليه وسلَّم لحدًا ونُصِبَ عليه اللبنُ نَصبًا

“Aku memandikan Rasulullah Shallallahu’alaihi Wasallam. Dan aku memperhatikan jasad beliau seorang tidak ada celanya. Jasad beliau bagus ketika hidup maupun ketika sudah wafat. Dan yang menguburkan beliau dan menutupi beliau dari pandangan orang-orang ada empat orang: Ali bin Abi Thalib, Al Abbas, Al Fadhl bin Al Abbas, dan Shalih pembantu Rasulullah Shallallahu’alaihi Wasallam. Aku juga membuat liang lahat untuk Rasulullah Shallallahu’alaihi Wasallam dan di atasnya diletakkan batu bata” (HR. Ibnu Majah no. 1467 dishahihkan Al Albani dalam Shahih Ibni Majah).

Dan wajib bagi jenazah laki-laki dimandikan oleh laki-laki. Demikian juga jenazah wanita dimandikan oleh wanita. Karena Kecuali suami terhadap istrinya atau sebaliknya. Hal ini dikarenakan wajibnya menjaga aurat. Rasulullah Shallallahu’alaihi Wasallam ditanya:

يا رسولَ اللَّهِ عوراتُنا ما نأتي منها وما نذَرُ قالَ احفَظْ عورتَكَ إلَّا من زوجتِكَ أو ما ملكت يمينُكَ

“Wahai Rasulullah, mengenai aurat kami, kepada siapa boleh kami tampakkan dan kepada siapa tidak boleh ditampakkan? Rasulullah menjawab: “tutuplah auratmu kecuali kepada istrimu atau budak wanitamu” (HR. Tirmidzi no. 2794, dihasankan Al Albani dalam Shahih At Tirmidzi).

Kecuali bagi anak yang berusia kurang dari 7 tahun maka boleh dimandikan oleh lelaki atau wanita.
'''),
    Entry('Perangkat memandikan mayit', content: '''
Perangkat yang dibutuhkan untuk memandikan mayit diantaranya:

- Sarung tangan atau kain untuk dipakai orang yang memandikan agar terjaga dari najis, kotoran dan penyakit
- Masker penutup hidung juga untuk menjaga orang yang memandikan agar terjaga dari penyakit
- Spon penggosok atau kain untuk membersihkan badan mayit
- Kapur barus yang sudah digerus untuk dilarutkan dengan air
- Daun sidr (bidara) jika ada, yang busanya digunakan untuk mencuci rambut dan kepala mayit. Jika tidak ada, maka bisa diganti dengan sampo
- Satu ember sebagai wadah air
- Satu embar sebagai wadah air kapur barus
- Gayung
- Kain untuk menutupi aurat mayit
- Handuk
- Plester bila dibutuhkan untuk menutupi luka yang ada pada mayat
- Gunting kuku untuk menggunting kuku mayit jika panjang
'''),
    Entry('Cara memandikan mayit', content: '''
Melemaskan persendian mayit
Syaikh Abdullah bin Jibrin mengatakan:

وأما تليين مفاصله فالحكمة في ذلك أن تلين عند الغسل، وذلك بأن يمد يده ثم يثنيها، ويمد منكبه ثم يثنيه، وهكذا يفعل بيده الأخرى، وكذلك يفعل برجليه، فيقبض رجله ليثنيها ثم يمدها مرتين أو ثلاثاً حتى تلين عند الغسل

“Adapun melemaskan persendian, hikmahnya untuk memudahkan ketika dimandikan. Caranya dengan merentangkan tangannya lalu ditekuk. Dan direntangkan pundaknya lalu ditekuk. Kemudian pada tangan yang satunya lagi. Demikian juga dilakukan pada kaki. Kakinya pegang lalu ditekuk, kemudian direntangkan, sebanyak dua kali atau tiga kali. Sampai ia mudah untuk dimandikan” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/424).

Dan hendaknya berlaku lembut pada mayit. Karena Rasulullah shalallahu ‘alaihi wa salam bersabda:

كَسْرُ عَظْمِ الْمَيِّتِ كَكَسْرِهِ حَيًّا

“Memecah tulang orang yang telah meninggal dunia adalah seperti memecahnya dalam keadaan hidup” (HR. Abu Daud no. 3207, dishahihkan Al Albani dalam Shahih Abu Daud).

Melepas pakaian yang melekat di badannya
Syaikh Abdullah bin Jibrin mengatakan:

(وخلع ثيابه) يعني: الثياب التي مات فيها يسن أن تخلع ساعة موته، ويستر برداء أو نحوه

“[Dilepaskan pakaiannya] yaitu pakaian yang dipakai mayit ketika meninggal. Disunnahkan untuk dilepaskan ketika ia baru wafat. Kemudian ditutup dengan rida (kain) atau semisalnya” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/424).

Namun orang yang meninggal dunia ketika ihram tidaklah boleh ditutup wajah dan kepalanya, berdasarkan hadits Ibnu Abbas radhiyallahu ‘anhuma di atas.

Cara melepaskan pakaiannya jika memang sulit untuk dilepaskan dengan cara biasa, maka digunting hingga terlepas.

Menutup tempat mandi dari pandangan orang banyak
Syaikh Abdullah bin Jibrin mengatakan:

أن يستر في داخل غرفة مغلقة الأبواب والنوافذ، ولا يراه أحد إلا الذين يتولون تغسيله، ولا يجوز أن يغسل أمام الناس

“Mayat ditutup dalam suatu ruangan yang tertutup pintu dan jendelanya. Sehingga tidak terlihat oleh siapapun kecuali orang yang mengurus pemandian jenazah. Dan tidak boleh dimandikan di hadapan orang-orang banyak” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/428).

Kemudian mayit ditutup dengan kain pada bagian auratnya terhadap sesama jenis, yaitu dari pusar hingga lutut bagi laki-laki dan dari dada hingga lutut bagi wanita.
'''),
    Entry('Teknis pemandian', content: '''
Disebutkan dalam Matan Akhsharil Mukhtasharat:

نوى وسمى وهما كفي غسل حَيّ ثمَّ يرفع راس غير حَامِل الى قرب جُلُوس ويعصر بَطْنه بِرِفْق وَيكثر المَاء حِينَئِذٍ ثمَّ يلف على يَده خرقَة فينجيه بهَا وَحرم مس عَورَة من لَهُ سبع

ثمَّ يدْخل اصبعيه وَعَلَيْهَا خرقَة مبلولة فِي فَمه فيمسح اسنانه وَفِي مَنْخرَيْهِ فينظفهما بِلَا ادخال مَاء ثمَّ يوضئه وَيغسل راسه ولحيته برغوة السدر وبدنه بثفله ثمَّ يفِيض عَلَيْهِ المَاء وَسن تثليث وتيامن وامرار يَده كل مرّة على بَطْنه فان لم ينق زَاد حَتَّى ينقى وَكره اقْتِصَار على مرّة وَمَاء حَار وخلال واشنان بِلَا حَاجَة وتسريح شعره

وَسن كافور وَسدر فِي الاخيرة وخضاب شعر وقص شَارِب وتقليم اظفار ان طالا

“Berniat dan membaca basmalah, keduanya wajib ketika mandi untuk orang hidup. Kemudian angkat kepalanya jika ia bukan wanita hamil, sampai mendekati posisi duduk. Kemudian tekan-tekan perutnya dengan lembut. Perbanyak aliran air ketika itu, kemudian lapisi tangan dengan kain dan lakukan istinja (cebok) dengannya. Namun diharamkan menyentuh aurat orang yang berusia 7 tahun (atau lebih). Kemudian masukkan kain yang basah dengan jari-jari ke mulutnya lalu gosoklah giginya dan kedua lubang hidungnya. Bersihkan keduanya tanpa memasukkan air. Kemudian lakukanlah wudhu pada mayit. Kemudian cucilah kepalanya dan jenggotnya dengan busa dari daun bidara. Dan juga pada badannya beserta bagian belakangnya. Kemudian siram air padanya. Disunnahkan diulang hingga tiga kali dan disunnahkan juga memulai dari sebelah kanan. Juga disunnahkan melewatkan air pada perutnya dengan tangan. Jika belum bersih diulang terus hingga bersih. Dimakruhkan hanya mencukupkan sekali saja, dan dimakruhkan menggunakan air panas dan juga daun usynan tanpa kebutuhan. Kemudian sisirlah rambutnya dan disunnahkan air kapur barus dan bidara pada siraman terakhir. Disunnahkan menyemir rambutnya dan memotong kumisnya serta memotong kukunya jika panjang”.
'''),
    Entry('Poin-poin tambahan seputar teknis pemandian mayit', content: '''
- Yang wajib dalam memandikan mayit adalah sekali. Disunnahkan tiga kali, boleh lebih dari itu jika dibutuhkan
- Bagi jenazah wanita, dilepaskan ikatan rambutnya dan dibersihkan. Kemudian dikepang menjadi tiga kepangan dan diletakkan di bagian belakangnya. Sebagaimana dalam hadits Ummu Athiyyah di atas
'''),
    Entry('Jika tidak memungkinkan mandi, maka diganti tayammum', content: '''
Apabila tidak ada air untuk memandikan mayit, atau dikhawatirkan akan tersayat-sayat tubuhnya jika dimandikan, atau mayat tersebut seorang wanita di tengah-tengah kaum lelaki, sedangkan tidak ada mahramnya atau sebaliknya, maka mayat tersebut di tayammumi dengan tanah (debu) yang baik, diusap wajah dan kedua tangannya dengan penghalang dari kain atau yang lainnya.

Syaikh Abdullah bin Jibrin mengatakan:

(وإذا تعذر غسل ميت يمم) وذلك لأجل المشقة، فيضرب أحدهم يديه بالتراب، ويمسح وجهه، ويمسح كفيه، ويقوم مقام الغسل، ويمثلون لذلك بالمحترق الذي إذا غسل تمزق لحمه، فلا يستطيعون أن يغسلوه، وكذلك من كان في بدنه جروح كثيرة، وجلدته بشعة، بحيث إنه إذا صب عليه الماء تمزق جلده، وتمزق لحمه؛ فلا يغسل والحالة هذه

“[Jika ada udzur untuk dimandikan, maka mayit di-tayammumi], yaitu karena adanya masyaqqah. Maka salah seorang memukulkan kedua tangannya ke debu kemudian diusap ke wajah dan kedua telapak tangannya. Ini sudah menggantikan posisi mandi. Misalnya bagi orang yang mati terbakar dan jika dimandikan akan rusak dagingnya, maka tidak bisa dimandikan. Demikian juga orang yang penuh dengan luka dan kulitnya berantakan. Jika terkena dimandikan dengan air maka akan robek-robek kulitnya dan dagingnya. Maka yang seperti ini tidak dimandikan” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/435-436).

Disunnahkan untuk mandi bagi orang yang telah selesai memandikan mayit.
Rasulullah Shallallahu ‘alaihi wa sallam bersabda:

مَنْ غَسَّلَ مَيِّتًا فَلْيَغْتَسِلْ وَمَنْ حَمَلَهُ فَلْيَتَوَضَّأْ

“Barangsiapa yang memandikan mayit, maka hendaklah dia mandi. Dan barangsiapa yang memikul jenazah, maka hendaklah dia wudhu“. (HR Abu Dawud no. 3161 dihasankan Al Albani dalam Ahkamul Janaiz no. 71).
'''),
    Entry('Janin yang keguguran', content: '''
Janin yang mati karena keguguran dan telah berumur lebih dari empat bulan, maka dimandikan dan dishalatkan. Jika 4 bulan atau kurang maka tidak perlu. Berdasarkan hadits dari Al Mughirah bin Syu’bah secara marfu’:

والسِّقطُ يُصلِّى عليه ويُدعَى لوالدَيه بالمغفرةِ والرحمةِ

“Janin yang mati keguguran, dia dishalatkan dan dido’akanampunan dan rahmat untuk kedua orang tuanya” (HR. Abu Dawud no. 3180, dishahihkan Al Albani dalam Shahih Abu Daud).

Syaikh Abdullah bin Jibrin mengatakan:

السقط الذي عمره دون أربعة أشهر: الصحيح أنه لا يكفن، وإنما يلف ويدفن في مكان طاهر، وليس له حكم الإنسان، فإذا تمت له أربعة أشهر فإنه يعامل كالحي، فيغسل، ويكفن، ويصلى عليه

“Janin yang mati keguguran jika di bawah empat bulan maka yang shahih ia tidak dikafani. Namun ia dilipat dan dikuburkan di tempat yang bersih. Dan ia tidak diperlakukan sebagaimana manusia. Jika sudah berusia 4 bulan (atau lebh) maka diperlakukan sebagaimana manusia yang hidup, yaitu dimandikan, dikafani dan dishalatkan” (Ad Durar Al Mubtakirat Syarah Akhsharil Mukhtasharat, 1/435).
'''),
    Entry('Sumber', content: '''
https://muslim.or.id/43876-fikih-pengurusan-jenazah-1-memandikan-dan-mengkafani.html
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
            // SUBTITLE MEMANDIKAN
            Center(
                child: Text(
                  "Memandikan",
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
