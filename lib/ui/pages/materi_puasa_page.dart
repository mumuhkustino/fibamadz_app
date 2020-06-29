part of 'pages.dart';

class MateriPuasaPage extends StatefulWidget {
  @override
  _MateriPuasaPageState createState() => _MateriPuasaPageState();
}

class _MateriPuasaPageState extends State<MateriPuasaPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Makna puasa', content: '''
Puasa dalam bahasa Arab disebut dengan Ash Shiyaam (الصيام) atau Ash Shaum (الصوم). Secara bahasa Ash Shiyam artinya adalah al imsaak (الإمساك) yaitu menahan diri. Sedangkan secara istilah, ash shiyaam artinya: beribadah kepada Allah Ta’ala dengan menahan diri dari makan, minum dan pembatal puasa lainnya, dari terbitnya fajar hingga terbenamnya matahari.
'''),
    Entry('Hukum puasa Ramadhan', content: '''
Puasa Ramadhan hukumnya wajib berdasarkan firman Allah Ta’ala:

يا أيها الذين آمنوا كتب عليكم الصّيَام كما كُتب على الذين من قبلكم لعلّكم تتّقون

“wahai orang-orang yang beriman, diwajibkan atas kamu berpuasa sebagaimana diwajibkan atas orang-orang sebelum kamu agar kalian bertaqwa” (QS. Al Baqarah: 183).

Dan juga karena puasa ramadhan adalah salah dari rukun Islam yang lima. Nabi Shallallahu’alaihi Wasallam bersabda:

بُني الإِسلام على خمس: شهادة أن لا إِله إِلا الله وأنّ محمّداً رسول الله، وإقام الصلاة، وإِيتاء الزكاة، والحجّ، وصوم رمضان

“Islam dibangun di atas lima rukun: syahadat laa ilaaha illallah muhammadur rasulullah, menegakkan shalat, membayar zakat, haji dan puasa Ramadhan” (HR. Bukhari – Muslim).
'''),
    Entry('Keutamaan puasa', content: '''
Puasa adalah ibadah yang tidak ada tandingannya. Rasulullah Shallallahu’alaihi Wasallam bersabda kepada Abu Umamah Al Bahili:
عليك بالصيام فإنه لا مثل له

“hendaknya engkau berpuasa karena puasa itu ibadah yang tidak ada tandingannya” (HR. Ahmad, An Nasa-i. Dishahihkan Al Albani dalam Shahih An Nasa-i)

Allah Ta’ala menyandarkan puasa kepada diri-Nya.
قال الله عز وجل: كل عمل ابن آدم له إلا الصوم، فإنه لي وأنا أجزي به

“Allah ‘azza wa jalla berfirman: setiap amalan manusia itu bagi dirinya, kecuali puasa. Karena puasa itu untuk-Ku dan Aku yang akan membalas pahalanya” (HR. Bukhari – Muslim).

Puasa menggabungkan 3 jenis kesabaran: sabar dalam melakukan ketaatan kepada Allah, sabar dalam menjauhi hal yang dilarang Allah dan sabar terhadap takdir Allah atas rasa lapar dan kesulitan yang ia rasakan selama puasa.
Puasa akan memberikan syafaat di hari kiamat.
الصيام والقرآن يشفعان للعبد

“Puasa dan Al Qur’an, keduanya akan memberi syafaat kelak di hari kiamat” (HR. Ahmad, Thabrani, Al Hakim. Al Haitsami mengatakan: “semua perawinya dijadikan hujjah dalam Ash Shahih“).

Orang yang berpuasa akan diganjar dengan ampunan dan pahala yang besar.
Allah Ta’ala berfirman:
إِنَّ الْمُسْلِمِينَ وَالْمُسْلِمَاتِ وَالْمُؤْمِنِينَ وَالْمُؤْمِنَاتِ وَالْقَانِتِينَ وَالْقَانِتَاتِ وَالصَّادِقِينَ وَالصَّادِقَاتِ وَالصَّابِرِينَ وَالصَّابِرَاتِ وَالْخَاشِعِينَ وَالْخَاشِعَاتِ وَالْمُتَصَدِّقِينَ وَالْمُتَصَدِّقَاتِ وَالصَّائِمِينَ وَالصَّائِمَاتِ وَالْحَافِظِينَ فُرُوجَهُمْ وَالْحَافِظَاتِ وَالذَّاكِرِينَ اللَّهَ كَثِيرًا وَالذَّاكِرَاتِ أَعَدَّ اللَّهُ لَهُم مَّغْفِرَةً وَأَجْرًا عَظِيمًا

“Sesungguhnya laki-laki dan perempuan yang muslim, laki-laki dan perempuan yang mukmin, laki-laki dan perempuan yang tetap dalam ketaatannya, laki-laki dan perempuan yang benar, laki-laki dan perempuan yang sabar, laki-laki dan perempuan yang khusyu’, laki-laki dan perempuan yang bersedekah, laki-laki dan perempuan yang berpuasa, laki-laki dan perempuan yang memelihara kehormatannya, laki-laki dan perempuan yang banyak menyebut (nama) Allah, Allah telah menyediakan untuk mereka ampunan dan pahala yang besar” (QS. Al Ahzab: 35)

Puasa adalah perisai dari api neraka.
Rasulullah Shallallahu’alaihi Wasallam bersabda:
الصيام جُنة

“puasa adalah perisai” (HR. Bukhari – Muslim)

Puasa adalah sebab masuk ke dalam surga
Rasulullah Shallallahu’alaihi Wasallam bersabda:
في الجنة ثمانية أبواب، فيها باب يسمى الريان، لا يدخله إلا الصائمون

“di surga ada delapan pintu, diantaranya ada pintu yang dinamakan Ar Rayyan. Tidak ada yang bisa memasukinya kecuali orang-orang yang berpuasa” (HR. Bukhari).
'''),
    Entry('Hikmah disyariatkannya puasa', content: '''
- Puasa adalah wasilah untuk mengokohkan ketaqwaan kepada Allah
- Puasa membuat orang merasakan nikmat dari Allah Ta’ala
- Mendidik manusia dalam mengendalikan keinginan dan sabar dalam menahan diri
- Puasa menahan laju godaan setan
- Puasa menimbulkan rasa iba dan sayang kepada kaum miskin
- Puasa membersihkan badan dari elemen-elemen yang tidak baik dan membuat badan sehat
'''),
    Entry('Rukun puasa', content: '''
- Menahan diri dari hal-hal yang membatalkan puasa
- Menepati rentang waktu puasa
'''),
    Entry('Awal dan akhir bulan Ramadhan (bulan puasa)', content: '''
- Wajib menentukan awal bulan Ramadhan dengan ru’yatul hilal, bila hilal tidak terlihat maka bulan Sya’ban digenapkan menjadi 30 hari. Para ulama ijma akan hal ini, tidak ada khilaf di antara mereka.
- Para ulama mensyaratkan minimal satu orang yang melihat hilal untuk bisa menetapkan terlihatnya hilal Ramadhan.
- Jika ada seorang yang mengaku melihat hilal Ramadhan sendirian, ulama khilaf. Jumhur ulama mengatakan ia wajib berpuasa sendirian berdasarkan ru’yah-nya. Pendapat ini dikuatkan oleh Ibnu Al Utsaimin. Sebagian ulama berpendapat ia wajib berpuasa bersama jama’ah kaum Muslimin. Pendapat ini dikuatkan oleh Ibnu Taimiyah dan Ibnu Baz.
- Rukyah hilal suatu negeri berlaku untuk seluruh negeri yang lain (ittifaqul mathali’), ataukah setiap negeri mengikuti rukyah hilal masing-masing di negerinya (ikhtilaful mathali’)? Para ulama khilaf dalam masalah ini. Jumhur ulama berpendapat rukyah hilal suatu negeri berlaku untuk seluruh negeri yang lain. Adapun Syafi’iyyah dan pendapat sebagian salaf, setiap negeri mengikuti rukyah hilal masing-masing. Pendapat kedua ini dikuatkan oleh Ash Shanani dan juga Ibnu Utsaimin.
- Wajib menentukan akhir bulan Ramadhan dengan ru’yatul hilal, bila hilal tidak terlihat maka bulan Ramadhan digenapkan menjadi 30 hari. Para ulama ijma akan hal ini, tidak ada khilaf di antara mereka.
- Jumhur ulama mensyaratkan minimal dua orang yang melihat hilal untuk bisa menetapkan terlihatnya hilal Syawal.
- Jika ada seorang yang mengaku melihat hilal Syawal sendirian, maka ia wajib berbuka bersama jama’ah kaum Muslimin.
- Jika hilal Syawal terlihat pada siang hari, maka kaum Muslimin ketika itu juga berbuka dan shalat Id, jika terjadi sebelum zawal (bergesernya mata hari dari garis tegak lurus).
'''),
    Entry('Rentang waktu puasa', content: '''
Puasa dimulai ketika sudah terbit fajar shadiq atau fajar yang kedua. Allah Ta’ala berfirman:

فَالآنَ بَاشِرُوهُنَّ وَابْتَغُواْ مَا كَتَبَ اللَّهُ لَكُمْ وَكُلُواْ وَاشْرَبُواْ حَتَّى يَتَبَيَّنَ لَكُمُ الْخَيْطُ الأَبْيَضُ مِنَ الْخَيْطِ الأَسْوَدِ مِنَ الْفَجْرِ

“Maka sekarang campurilah mereka dan ikutilah apa yang telah ditetapkan Allah untukmu, dan makan minumlah hingga terang bagimu benang putih dari benang hitam, yaitu fajar” (QS. Al Baqarah: 187).

Yang dimaksud dengan khaythul abyadh di sini adalah fajar shadiq atau fajar kedua karena berwarna putih dan melintang di ufuk seperti benang. Adapun fajar kadzib atau fajar pertama itu bentuknya seperti dzanabus sirhan (ekor serigala). Nabi Shallallahu’alaihi Wasallam bersabda:

الفجر فجران: فأما الفجر الذي يكون كذنب السرحان فلا يحل الصلاة ولا يحرم الطعام، وأما الفجر الذي يذهب مستطيلا في الأفق فإنه يحل الصلاة و يحرم الطعام

“Fajar itu ada dua: pertama, fajar yang bentuknya seperti ekor serigala, maka ini tidak menghalalkan shalat (shubuh) dan tidak mengharamkan makan. Kedua, fajar yang memanjang di ufuk, ia menghalalkan shalat (shubuh) dan mengharamkan makan (mulai puasa)” (HR. Al Hakim, Al Baihaqi, dishahihkan Al Albani dalam Shahih Al Jami’).

Puasa berakhir ketika terbenam matahari. Allah Ta’ala berfirman:

ثُمَّ أَتِمُّوا الصِّيَامَ إِلَى اللَّيْلِ

“lalu sempurnakanlah puasa hingga malam” (QS. Al Baqarah: 187).

Rasulullah Shallallahu’alaihi Wasallam bersabda:

إذا أقبل الليل من هاهنا وأدبر النهار من هاهنا، وغربت الشمس، فقد أفطر الصائم

“jika datang malam dari sini, dan telah pergi siang dari sini, dan terbenam matahari, maka orang yang berpuasa boleh berbuka” (HR. Bukhari – Muslim).
'''),
    Entry('Syarat sah puasa', content: '''
- Islam
- Baligh
- Berakal
- Muqim (tidak sedang safar)
- Suci dari haid dan nifas
- Mampu berpuasa
- Niat                                                                                                  
'''),
    Entry('Sunnah-sunnah ketika puasa', content: '''
Sunnah-sunnah terkait berbuka puasa
Disunnahkan menyegerakan berbuka
Berbuka puasa dengan beberapa butir ruthab (kurma segar), jika tidak ada maka denganbeberapa butir tamr (kurma kering), jika tidak ada maka dengan beberapa teguk air putih
Berdoa ketika berbuka dengan doa yang diajarkan oleh Rasulullah Shallallahu’alaihi Wasallam:
ذهب الظمأ وابتلت العروق وثبت الأجر إن شاء الله

/dzahabazh zhomaa-u wabtallatil ‘uruuqu wa tsabatal ajru insyaa Allah/
“telah hilang rasa haus, telah basah tenggorokan, dan telah diraih pahala, insya Allah” (HR. Abu Daud, An Nasa-i, dishahihkan Al Albani dalam Shahih Abi Daud)

Sunnah-sunnah terkait makan sahur
Makan sahur hukumnya sunnah muakkadah. Dianggap sudah makan sahur jika makan atau minum di waktu sahar, walaupun hanya sedikit. Dan di dalam makanan sahur itu terdapat keberkahan
Disunnahkan mengakhirkan makan sahur mendekati waktu terbitnya fajar, pada waktu yang tidak dikhawatirkan datangnya waktu fajar ketika masih makan sahur.
Disunnahkan makan sahur dengan tamr (kurma kering).
Orang yang berpuasa wajib meninggalkan semua perbuatan yang diharamkan agama dan dianjurkan untuk memperbanyak melakukan ketaatan seperti: bersedekah, membaca Al Qur’an, shalat sunnah, berdzikir, membantu orang lain, i’tikaf, menuntut ilmu agama, dll
Membaca Al Qur’an adalah amalan yang lebih dianjurkan untuk diperbanyak di bulan Ramadhan. Bahkan sebagian salaf tidak mengajarkan ilmu di bulan Ramadhan agar bisa fokus memperbanyak membaca Al Qur’an dan mentadabburinya.
'''),
    Entry('Orang-orang yang dibolehkan tidak berpuasa', content: '''
- Orang sakit yang bisa membahayakan dirinya jika berpuasa.
- Musafir.
- Orang yang sudah tua renta
- Wanita hamil dan menyusui
- Orang yang memiliki sebab-sebab yang membolehkan tidak berpuasa, 
'''),
    Entry('Pembatal-pembatal puasa', content: '''
- Makan dan minum dengan sengaja
- Keluar mani dengan sengaja
- Muntah dengan sengaja
- Keluarnya darah haid dan nifas
- Menjadi gila atau pingsan
- Riddah (murtad)
- Berniat untuk berbuka
- Merokok
- Jima (bersenggama) di tengah hari puasa. Selain membatalkan puasa dan wajib meng-qadha puasa, juga diwajibkan menunaikan kafarah membebaskan seorang budak, jika tidak ada maka puasa dua bulan berturut-turut, jika tidak mampu maka memberi makan 60 orang miskin.
- Hijamah (bekam) diperselisihkan apakah dapat membatalkan puasa atau tidak. Pendapat jumhur ulama, hijamah tidak membatalkan puasa. Sedangkan pendapat Hanabilah bekam dapat membatalkan puasa. Pendapat kedua ini dikuatkan oleh Ibnu Taimiyah, Ibnu Baz dan Ibnu Al Utsaimin.
- Masalah donor darah merupakan turunan dari masalah bekam. Maka donor darah tidak membatalkan puasa dengan men-takhrij pendapat jumhur ulama, dan bisa membatalkan puasa dengan men-takhrij pendapat Hanabilah.
- Inhaler dan sejenisnya berupa aroma yang dimasukan melalui hidung, diperselisihkan apakah dapat membatalkan puasa atau tidak. Pendapat jumhur ulama ia dapat membatalkan puasa, sedangkan sebagian ulama Syafi’iyyah dan Malikiyyah mengatakan tidak membatalkan. Pendapat kedua ini juga dikuatkan oleh Ibnu Taimiyah.
'''),
    Entry('Yang bukan merupakan pembatal puasa sehingga dibolehkan melakukannya', content: '''
- Mengakhirkan mandi hingga terbit fajar, bagi orang yang junub atau wanita yang sudah bersih dari haid dan nifas. Puasanya tetap sah.
- Berkumur-kumur dan istinsyaq (menghirup air ke hidung)
- Mandi di tengah hari puasa atau mendinginkan diri dengan air
- Menyicipi makanan ketika ada kebutuhan, selama tidak masuk ke kerongkongan
- Bercumbu dan mencium istri, bagi orang yang mampu mengendalikan birahinya
- Memakai parfum dan wangi-wangian
- Menggunakan siwak atau sikat gigi
- Menggunakan celak
- Menggunakan tetes mata
- Menggunakan tetes telinga
- Makan dan minum 5 menit sebelum terbit fajar yang ditandai dengan adzan shubuh, yang biasanya disebut dengan waktu imsak. Karena batas awal rentang waktu puasa adalah ketika terbit fajar yang ditandai dengan adzan shubuh.
'''),
    Entry('Yang dimakruhkan ketika puasa', content: '''
- Terlalu dalam dan berlebihan dalam berkumur-kumur dan istinsyaq (menghirup air ke hidung)
- Puasa wishal, yaitu menyambung puasa selama dua hari tanpa diselingi makan atau minum sama sekali.
- Menyicipi makanan tanpa ada kebutuhan, walaupun tidak masuk ke kerongkongan
- Bercumbu dan mencium istri, bagi orang yang tidak mampu mengendalikan birahinya
- Bermalas-malasan dan terlalu banyak tidur tanpa ada kebutuhan
- Berlebihan dan menghabiskan waktu dalam perkara mubah yang tidak bermanfaat
'''),
    Entry('Beberapa kesalah-pahaman dalam ibadah puasa', content: '''
- Niat puasa tidak perlu dilafalkan, karena niat adalah amalan hati. Nabi Shallallahu’alaihi Wasallam juga tidak pernah mengajarkan lafal niat puasa. Menetapkan itikad di dalam hati bahwa esok hari akan berpuasa, ini sudah niat yang sah.
- Berpuasa namun tidak melaksanakan shalat fardhu adalah kesalahan fatal. Diantara juga perilaku sebagian orang yang makan sahur untuk berpuasa namun tidak bangun shalat shubuh. Karena dinukil bahwa para sahabat berijma tentang kafirnya orang yang meninggalkan shalat dengan sengaja, sehingga tidak ada faedahnya jika ia berpuasa jika statusnya kafir. Sebagian ulama berpendapat orang yang meninggalkan shalat tidak sampai kafir namun termasuk dosa besar, yang juga bisa membatalkan pahala puasa.
- Berbohong tidak membatalkan puasa, namun bisa jadi membatalkan atau mengurangi pahala puasa karena berbohong adalah perbuatan maksiat.
- Sebagian orang menahan diri melakukan perbuatan maksiat hingga datang waktu berbuka puasa. Padahal perbuatan maksiat tidak hanya terlarang dilakukan ketika berpuasa, bahkan terlarang juga setelah berbuka puasa dan juga terlarang dilakukan di luar bulan Ramadhan. Namun jika dilakukan ketika berpuasa selain berdosa juga dapat membatalkan pahala puasa walaupun tidak membatalkan puasanya.
- Hadits “Tidurnya orang yang berpuasa adalah ibadah” adalah hadits yang lemah. tidur adalah perkara mubah (boleh) dan bukan ritual ibadah. Maka, sebagaimana perkara mubah yang lain, tidur dapat bernilai ibadah jika diniatkan sebagai sarana penunjang ibadah. Misalnya, seseorang tidur karena khawatir tergoda untuk berbuka sebelum waktunya, atau tidur untuk mengistirahatkan tubuh agar kuat dalam beribadah. Sebaliknya, tidak setiap tidur orang berpuasa itu bernilai ibadah. Sebagai contoh, tidur karena malas, atau tidur karena kekenyangan setelah sahur. Keduanya, tentu tidak bernilai ibadah, bahkan bisa dinilai sebagai tidur yang tercela. Maka, hendaknya seseorang menjadikan bulan ramadhan sebagai kesempatan baik untuk memperbanyak amal kebaikan, bukan bermalas-malasan.
- Tidak ada hadits “berbukalah dengan yang manis“. Pernyataan yang tersebar di tengah masyarakat dengan bunyi demikian, bukanlah hadits Nabi Shallallahu’alaihi Wasallam.
- Tidak tepat mendahulukan berbuka dengan makanan manis ketika tidak ada kurma. Lebih salah lagi jika mendahulukan makanan manis padahal ada kurma. Yang sesuai sunnah Nabi adalah mendahulukan berbuka dengan kurma, jika tidak ada kurma maka dengan air minum. Adapun makanan manis sebagai tambahan saja, sehingga tetap didapatkan faidah makanan manis yaitu menguatkan fisik.
'''),
    Entry('Sumber', content: '''
Diringkas dari Mausu’ah Fiqhiyyah Duraris Saniyyah, Kitab Ash Shiyam, ensiklopedi fikih yang disusun dibawah bimbingan Syaikh Alwi bin Abdil Qadir As Segaf, di alamat: http://www.dorar.net/enc/feqhia/1690, dengan beberapa tambahan dari penyusun.
https://muslim.or.id/28133-ringkasan-fikih-puasa-ramadhan.html
''')
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Makna puasa', content: '''
Puasa dalam bahasa Arab disebut dengan Ash Shiyaam (الصيام) atau Ash Shaum (الصوم). Secara bahasa Ash Shiyam artinya adalah al imsaak (الإمساك) yaitu menahan diri. Sedangkan secara istilah, ash shiyaam artinya: beribadah kepada Allah Ta’ala dengan menahan diri dari makan, minum dan pembatal puasa lainnya, dari terbitnya fajar hingga terbenamnya matahari.
'''),
    Entry('Hukum puasa Ramadhan', content: '''
Puasa Ramadhan hukumnya wajib berdasarkan firman Allah Ta’ala:

يا أيها الذين آمنوا كتب عليكم الصّيَام كما كُتب على الذين من قبلكم لعلّكم تتّقون

“wahai orang-orang yang beriman, diwajibkan atas kamu berpuasa sebagaimana diwajibkan atas orang-orang sebelum kamu agar kalian bertaqwa” (QS. Al Baqarah: 183).

Dan juga karena puasa ramadhan adalah salah dari rukun Islam yang lima. Nabi Shallallahu’alaihi Wasallam bersabda:

بُني الإِسلام على خمس: شهادة أن لا إِله إِلا الله وأنّ محمّداً رسول الله، وإقام الصلاة، وإِيتاء الزكاة، والحجّ، وصوم رمضان

“Islam dibangun di atas lima rukun: syahadat laa ilaaha illallah muhammadur rasulullah, menegakkan shalat, membayar zakat, haji dan puasa Ramadhan” (HR. Bukhari – Muslim).
'''),
    Entry('Keutamaan puasa', content: '''
Puasa adalah ibadah yang tidak ada tandingannya. Rasulullah Shallallahu’alaihi Wasallam bersabda kepada Abu Umamah Al Bahili:
عليك بالصيام فإنه لا مثل له

“hendaknya engkau berpuasa karena puasa itu ibadah yang tidak ada tandingannya” (HR. Ahmad, An Nasa-i. Dishahihkan Al Albani dalam Shahih An Nasa-i)

Allah Ta’ala menyandarkan puasa kepada diri-Nya.
قال الله عز وجل: كل عمل ابن آدم له إلا الصوم، فإنه لي وأنا أجزي به

“Allah ‘azza wa jalla berfirman: setiap amalan manusia itu bagi dirinya, kecuali puasa. Karena puasa itu untuk-Ku dan Aku yang akan membalas pahalanya” (HR. Bukhari – Muslim).

Puasa menggabungkan 3 jenis kesabaran: sabar dalam melakukan ketaatan kepada Allah, sabar dalam menjauhi hal yang dilarang Allah dan sabar terhadap takdir Allah atas rasa lapar dan kesulitan yang ia rasakan selama puasa.
Puasa akan memberikan syafaat di hari kiamat.
الصيام والقرآن يشفعان للعبد

“Puasa dan Al Qur’an, keduanya akan memberi syafaat kelak di hari kiamat” (HR. Ahmad, Thabrani, Al Hakim. Al Haitsami mengatakan: “semua perawinya dijadikan hujjah dalam Ash Shahih“).

Orang yang berpuasa akan diganjar dengan ampunan dan pahala yang besar.
Allah Ta’ala berfirman:
إِنَّ الْمُسْلِمِينَ وَالْمُسْلِمَاتِ وَالْمُؤْمِنِينَ وَالْمُؤْمِنَاتِ وَالْقَانِتِينَ وَالْقَانِتَاتِ وَالصَّادِقِينَ وَالصَّادِقَاتِ وَالصَّابِرِينَ وَالصَّابِرَاتِ وَالْخَاشِعِينَ وَالْخَاشِعَاتِ وَالْمُتَصَدِّقِينَ وَالْمُتَصَدِّقَاتِ وَالصَّائِمِينَ وَالصَّائِمَاتِ وَالْحَافِظِينَ فُرُوجَهُمْ وَالْحَافِظَاتِ وَالذَّاكِرِينَ اللَّهَ كَثِيرًا وَالذَّاكِرَاتِ أَعَدَّ اللَّهُ لَهُم مَّغْفِرَةً وَأَجْرًا عَظِيمًا

“Sesungguhnya laki-laki dan perempuan yang muslim, laki-laki dan perempuan yang mukmin, laki-laki dan perempuan yang tetap dalam ketaatannya, laki-laki dan perempuan yang benar, laki-laki dan perempuan yang sabar, laki-laki dan perempuan yang khusyu’, laki-laki dan perempuan yang bersedekah, laki-laki dan perempuan yang berpuasa, laki-laki dan perempuan yang memelihara kehormatannya, laki-laki dan perempuan yang banyak menyebut (nama) Allah, Allah telah menyediakan untuk mereka ampunan dan pahala yang besar” (QS. Al Ahzab: 35)

Puasa adalah perisai dari api neraka.
Rasulullah Shallallahu’alaihi Wasallam bersabda:
الصيام جُنة

“puasa adalah perisai” (HR. Bukhari – Muslim)

Puasa adalah sebab masuk ke dalam surga
Rasulullah Shallallahu’alaihi Wasallam bersabda:
في الجنة ثمانية أبواب، فيها باب يسمى الريان، لا يدخله إلا الصائمون

“di surga ada delapan pintu, diantaranya ada pintu yang dinamakan Ar Rayyan. Tidak ada yang bisa memasukinya kecuali orang-orang yang berpuasa” (HR. Bukhari).
'''),
    Entry('Hikmah disyariatkannya puasa', content: '''
- Puasa adalah wasilah untuk mengokohkan ketaqwaan kepada Allah
- Puasa membuat orang merasakan nikmat dari Allah Ta’ala
- Mendidik manusia dalam mengendalikan keinginan dan sabar dalam menahan diri
- Puasa menahan laju godaan setan
- Puasa menimbulkan rasa iba dan sayang kepada kaum miskin
- Puasa membersihkan badan dari elemen-elemen yang tidak baik dan membuat badan sehat
'''),
    Entry('Rukun puasa', content: '''
- Menahan diri dari hal-hal yang membatalkan puasa
- Menepati rentang waktu puasa
'''),
    Entry('Awal dan akhir bulan Ramadhan (bulan puasa)', content: '''
- Wajib menentukan awal bulan Ramadhan dengan ru’yatul hilal, bila hilal tidak terlihat maka bulan Sya’ban digenapkan menjadi 30 hari. Para ulama ijma akan hal ini, tidak ada khilaf di antara mereka.
- Para ulama mensyaratkan minimal satu orang yang melihat hilal untuk bisa menetapkan terlihatnya hilal Ramadhan.
- Jika ada seorang yang mengaku melihat hilal Ramadhan sendirian, ulama khilaf. Jumhur ulama mengatakan ia wajib berpuasa sendirian berdasarkan ru’yah-nya. Pendapat ini dikuatkan oleh Ibnu Al Utsaimin. Sebagian ulama berpendapat ia wajib berpuasa bersama jama’ah kaum Muslimin. Pendapat ini dikuatkan oleh Ibnu Taimiyah dan Ibnu Baz.
- Rukyah hilal suatu negeri berlaku untuk seluruh negeri yang lain (ittifaqul mathali’), ataukah setiap negeri mengikuti rukyah hilal masing-masing di negerinya (ikhtilaful mathali’)? Para ulama khilaf dalam masalah ini. Jumhur ulama berpendapat rukyah hilal suatu negeri berlaku untuk seluruh negeri yang lain. Adapun Syafi’iyyah dan pendapat sebagian salaf, setiap negeri mengikuti rukyah hilal masing-masing. Pendapat kedua ini dikuatkan oleh Ash Shanani dan juga Ibnu Utsaimin.
- Wajib menentukan akhir bulan Ramadhan dengan ru’yatul hilal, bila hilal tidak terlihat maka bulan Ramadhan digenapkan menjadi 30 hari. Para ulama ijma akan hal ini, tidak ada khilaf di antara mereka.
- Jumhur ulama mensyaratkan minimal dua orang yang melihat hilal untuk bisa menetapkan terlihatnya hilal Syawal.
- Jika ada seorang yang mengaku melihat hilal Syawal sendirian, maka ia wajib berbuka bersama jama’ah kaum Muslimin.
- Jika hilal Syawal terlihat pada siang hari, maka kaum Muslimin ketika itu juga berbuka dan shalat Id, jika terjadi sebelum zawal (bergesernya mata hari dari garis tegak lurus).
'''),
    Entry('Rentang waktu puasa', content: '''
Puasa dimulai ketika sudah terbit fajar shadiq atau fajar yang kedua. Allah Ta’ala berfirman:

فَالآنَ بَاشِرُوهُنَّ وَابْتَغُواْ مَا كَتَبَ اللَّهُ لَكُمْ وَكُلُواْ وَاشْرَبُواْ حَتَّى يَتَبَيَّنَ لَكُمُ الْخَيْطُ الأَبْيَضُ مِنَ الْخَيْطِ الأَسْوَدِ مِنَ الْفَجْرِ

“Maka sekarang campurilah mereka dan ikutilah apa yang telah ditetapkan Allah untukmu, dan makan minumlah hingga terang bagimu benang putih dari benang hitam, yaitu fajar” (QS. Al Baqarah: 187).

Yang dimaksud dengan khaythul abyadh di sini adalah fajar shadiq atau fajar kedua karena berwarna putih dan melintang di ufuk seperti benang. Adapun fajar kadzib atau fajar pertama itu bentuknya seperti dzanabus sirhan (ekor serigala). Nabi Shallallahu’alaihi Wasallam bersabda:

الفجر فجران: فأما الفجر الذي يكون كذنب السرحان فلا يحل الصلاة ولا يحرم الطعام، وأما الفجر الذي يذهب مستطيلا في الأفق فإنه يحل الصلاة و يحرم الطعام

“Fajar itu ada dua: pertama, fajar yang bentuknya seperti ekor serigala, maka ini tidak menghalalkan shalat (shubuh) dan tidak mengharamkan makan. Kedua, fajar yang memanjang di ufuk, ia menghalalkan shalat (shubuh) dan mengharamkan makan (mulai puasa)” (HR. Al Hakim, Al Baihaqi, dishahihkan Al Albani dalam Shahih Al Jami’).

Puasa berakhir ketika terbenam matahari. Allah Ta’ala berfirman:

ثُمَّ أَتِمُّوا الصِّيَامَ إِلَى اللَّيْلِ

“lalu sempurnakanlah puasa hingga malam” (QS. Al Baqarah: 187).

Rasulullah Shallallahu’alaihi Wasallam bersabda:

إذا أقبل الليل من هاهنا وأدبر النهار من هاهنا، وغربت الشمس، فقد أفطر الصائم

“jika datang malam dari sini, dan telah pergi siang dari sini, dan terbenam matahari, maka orang yang berpuasa boleh berbuka” (HR. Bukhari – Muslim).
'''),
    Entry('Syarat sah puasa', content: '''
- Islam
- Baligh
- Berakal
- Muqim (tidak sedang safar)
- Suci dari haid dan nifas
- Mampu berpuasa
- Niat                                                                                                  
'''),
    Entry('Sunnah-sunnah ketika puasa', content: '''
Sunnah-sunnah terkait berbuka puasa
Disunnahkan menyegerakan berbuka
Berbuka puasa dengan beberapa butir ruthab (kurma segar), jika tidak ada maka denganbeberapa butir tamr (kurma kering), jika tidak ada maka dengan beberapa teguk air putih
Berdoa ketika berbuka dengan doa yang diajarkan oleh Rasulullah Shallallahu’alaihi Wasallam:
ذهب الظمأ وابتلت العروق وثبت الأجر إن شاء الله

/dzahabazh zhomaa-u wabtallatil ‘uruuqu wa tsabatal ajru insyaa Allah/
“telah hilang rasa haus, telah basah tenggorokan, dan telah diraih pahala, insya Allah” (HR. Abu Daud, An Nasa-i, dishahihkan Al Albani dalam Shahih Abi Daud)

Sunnah-sunnah terkait makan sahur
Makan sahur hukumnya sunnah muakkadah. Dianggap sudah makan sahur jika makan atau minum di waktu sahar, walaupun hanya sedikit. Dan di dalam makanan sahur itu terdapat keberkahan
Disunnahkan mengakhirkan makan sahur mendekati waktu terbitnya fajar, pada waktu yang tidak dikhawatirkan datangnya waktu fajar ketika masih makan sahur.
Disunnahkan makan sahur dengan tamr (kurma kering).
Orang yang berpuasa wajib meninggalkan semua perbuatan yang diharamkan agama dan dianjurkan untuk memperbanyak melakukan ketaatan seperti: bersedekah, membaca Al Qur’an, shalat sunnah, berdzikir, membantu orang lain, i’tikaf, menuntut ilmu agama, dll
Membaca Al Qur’an adalah amalan yang lebih dianjurkan untuk diperbanyak di bulan Ramadhan. Bahkan sebagian salaf tidak mengajarkan ilmu di bulan Ramadhan agar bisa fokus memperbanyak membaca Al Qur’an dan mentadabburinya.
'''),
    Entry('Orang-orang yang dibolehkan tidak berpuasa', content: '''
- Orang sakit yang bisa membahayakan dirinya jika berpuasa.
- Musafir.
- Orang yang sudah tua renta
- Wanita hamil dan menyusui
- Orang yang memiliki sebab-sebab yang membolehkan tidak berpuasa, 
'''),
    Entry('Pembatal-pembatal puasa', content: '''
- Makan dan minum dengan sengaja
- Keluar mani dengan sengaja
- Muntah dengan sengaja
- Keluarnya darah haid dan nifas
- Menjadi gila atau pingsan
- Riddah (murtad)
- Berniat untuk berbuka
- Merokok
- Jima (bersenggama) di tengah hari puasa. Selain membatalkan puasa dan wajib meng-qadha puasa, juga diwajibkan menunaikan kafarah membebaskan seorang budak, jika tidak ada maka puasa dua bulan berturut-turut, jika tidak mampu maka memberi makan 60 orang miskin.
- Hijamah (bekam) diperselisihkan apakah dapat membatalkan puasa atau tidak. Pendapat jumhur ulama, hijamah tidak membatalkan puasa. Sedangkan pendapat Hanabilah bekam dapat membatalkan puasa. Pendapat kedua ini dikuatkan oleh Ibnu Taimiyah, Ibnu Baz dan Ibnu Al Utsaimin.
- Masalah donor darah merupakan turunan dari masalah bekam. Maka donor darah tidak membatalkan puasa dengan men-takhrij pendapat jumhur ulama, dan bisa membatalkan puasa dengan men-takhrij pendapat Hanabilah.
- Inhaler dan sejenisnya berupa aroma yang dimasukan melalui hidung, diperselisihkan apakah dapat membatalkan puasa atau tidak. Pendapat jumhur ulama ia dapat membatalkan puasa, sedangkan sebagian ulama Syafi’iyyah dan Malikiyyah mengatakan tidak membatalkan. Pendapat kedua ini juga dikuatkan oleh Ibnu Taimiyah.
'''),
    Entry('Yang bukan merupakan pembatal puasa sehingga dibolehkan melakukannya', content: '''
- Mengakhirkan mandi hingga terbit fajar, bagi orang yang junub atau wanita yang sudah bersih dari haid dan nifas. Puasanya tetap sah.
- Berkumur-kumur dan istinsyaq (menghirup air ke hidung)
- Mandi di tengah hari puasa atau mendinginkan diri dengan air
- Menyicipi makanan ketika ada kebutuhan, selama tidak masuk ke kerongkongan
- Bercumbu dan mencium istri, bagi orang yang mampu mengendalikan birahinya
- Memakai parfum dan wangi-wangian
- Menggunakan siwak atau sikat gigi
- Menggunakan celak
- Menggunakan tetes mata
- Menggunakan tetes telinga
- Makan dan minum 5 menit sebelum terbit fajar yang ditandai dengan adzan shubuh, yang biasanya disebut dengan waktu imsak. Karena batas awal rentang waktu puasa adalah ketika terbit fajar yang ditandai dengan adzan shubuh.
'''),
    Entry('Yang dimakruhkan ketika puasa', content: '''
- Terlalu dalam dan berlebihan dalam berkumur-kumur dan istinsyaq (menghirup air ke hidung)
- Puasa wishal, yaitu menyambung puasa selama dua hari tanpa diselingi makan atau minum sama sekali.
- Menyicipi makanan tanpa ada kebutuhan, walaupun tidak masuk ke kerongkongan
- Bercumbu dan mencium istri, bagi orang yang tidak mampu mengendalikan birahinya
- Bermalas-malasan dan terlalu banyak tidur tanpa ada kebutuhan
- Berlebihan dan menghabiskan waktu dalam perkara mubah yang tidak bermanfaat
'''),
    Entry('Beberapa kesalah-pahaman dalam ibadah puasa', content: '''
- Niat puasa tidak perlu dilafalkan, karena niat adalah amalan hati. Nabi Shallallahu’alaihi Wasallam juga tidak pernah mengajarkan lafal niat puasa. Menetapkan itikad di dalam hati bahwa esok hari akan berpuasa, ini sudah niat yang sah.
- Berpuasa namun tidak melaksanakan shalat fardhu adalah kesalahan fatal. Diantara juga perilaku sebagian orang yang makan sahur untuk berpuasa namun tidak bangun shalat shubuh. Karena dinukil bahwa para sahabat berijma tentang kafirnya orang yang meninggalkan shalat dengan sengaja, sehingga tidak ada faedahnya jika ia berpuasa jika statusnya kafir. Sebagian ulama berpendapat orang yang meninggalkan shalat tidak sampai kafir namun termasuk dosa besar, yang juga bisa membatalkan pahala puasa.
- Berbohong tidak membatalkan puasa, namun bisa jadi membatalkan atau mengurangi pahala puasa karena berbohong adalah perbuatan maksiat.
- Sebagian orang menahan diri melakukan perbuatan maksiat hingga datang waktu berbuka puasa. Padahal perbuatan maksiat tidak hanya terlarang dilakukan ketika berpuasa, bahkan terlarang juga setelah berbuka puasa dan juga terlarang dilakukan di luar bulan Ramadhan. Namun jika dilakukan ketika berpuasa selain berdosa juga dapat membatalkan pahala puasa walaupun tidak membatalkan puasanya.
- Hadits “Tidurnya orang yang berpuasa adalah ibadah” adalah hadits yang lemah. tidur adalah perkara mubah (boleh) dan bukan ritual ibadah. Maka, sebagaimana perkara mubah yang lain, tidur dapat bernilai ibadah jika diniatkan sebagai sarana penunjang ibadah. Misalnya, seseorang tidur karena khawatir tergoda untuk berbuka sebelum waktunya, atau tidur untuk mengistirahatkan tubuh agar kuat dalam beribadah. Sebaliknya, tidak setiap tidur orang berpuasa itu bernilai ibadah. Sebagai contoh, tidur karena malas, atau tidur karena kekenyangan setelah sahur. Keduanya, tentu tidak bernilai ibadah, bahkan bisa dinilai sebagai tidur yang tercela. Maka, hendaknya seseorang menjadikan bulan ramadhan sebagai kesempatan baik untuk memperbanyak amal kebaikan, bukan bermalas-malasan.
- Tidak ada hadits “berbukalah dengan yang manis“. Pernyataan yang tersebar di tengah masyarakat dengan bunyi demikian, bukanlah hadits Nabi Shallallahu’alaihi Wasallam.
- Tidak tepat mendahulukan berbuka dengan makanan manis ketika tidak ada kurma. Lebih salah lagi jika mendahulukan makanan manis padahal ada kurma. Yang sesuai sunnah Nabi adalah mendahulukan berbuka dengan kurma, jika tidak ada kurma maka dengan air minum. Adapun makanan manis sebagai tambahan saja, sehingga tetap didapatkan faidah makanan manis yaitu menguatkan fisik.
'''),
    Entry('Sumber', content: '''
Diringkas dari Mausu’ah Fiqhiyyah Duraris Saniyyah, Kitab Ash Shiyam, ensiklopedi fikih yang disusun dibawah bimbingan Syaikh Alwi bin Abdil Qadir As Segaf, di alamat: http://www.dorar.net/enc/feqhia/1690, dengan beberapa tambahan dari penyusun.
https://muslim.or.id/28133-ringkasan-fikih-puasa-ramadhan.html
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
        context.bloc<PageBloc>().add(GoToMateriPage());
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
                              .add(GoToMateriPage());
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
            // TITLE SHOLAT
            Center(
                child: Text(
                  "Puasa",
                  style: blackTextFont.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w700),
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
