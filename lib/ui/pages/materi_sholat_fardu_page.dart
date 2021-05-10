part of 'pages.dart';

class MateriSholatFarduPage extends StatefulWidget {
  @override
  _MateriSholatFarduPageState createState() => _MateriSholatFarduPageState();
}

class _MateriSholatFarduPageState extends State<MateriSholatFarduPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText = '';
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('Sholat Menurut Bahasa', content: '''
Sholat Menurut Bahasa adalah berdoa dalam kebaikan sedangkan menurut syara’ sholat adalah perbuatan yang dilakukan dengan memulai dari takbiratul ihram dan di akhiri dengan salam.
      '''),
    Entry('', content: '''Berikut ini pendapat 4 Imam Madzhab (Maliki, Hambali, Hanafi dan Syafi’i) terkait rukun-rukun dan fardhu-fardhu shalat :'''),
    Entry('1. NIAT', content: '''
Semua ulama mazhab sepakat bahwa mengungkapkan niat dengan kata-kata tidaklah diminta. (Mughniyah; 2001). Ibnu Qayyim berpendapat dalam bukunya Zadul Ma’ad, sebagaimana yang dijelaskan dalam jilid pertama dari buku Al-Mughni, karya Ibnu Qudamah, sebagai berikut : Nabi Muhammad saw bila menegakkan shalat, beliau langsung mengucapkan “Allahu akbar” dan beliau tidak mengucapkan apa-apa sebelumnya, dan tidak melafalkan niat sama sekali.
      '''),
    Entry('2. TAKBIRATUL IHRAM', children: [
      Entry('', content: '''Shalat tidak akan sempurna tanpa takbiratul ihram. Nama takbiratul ihram ini berdasarkan sabda Rasulullah saw :“Kunci shalat adalah bersuci, dan yang mengharamkannya (dari perbuatan sesuatu selain perbuatan-perbuatan shalat) adalah takbir, dan penghalalnya adalah salam.”'''),
      Entry('Maliki dan Hambali :', content: '''
Kalimat takbiratul ihram adalah “Allah Akbar” (Allah Maha Besar) tidak boleh menggunakan katakata lainnya.
      '''),
      Entry('Hanafi :', content: '''
Boleh dengan kata-kata lain yang sesuai atau sama artinya dengan kata-kata tersebut, seperti “Allah Al-A’dzam” dan “Allahu Al-Ajall” (Allah Yang Maha Agung dan Allah Yang Maha Mulia). (Mughniyah; 2001)
      '''),
      Entry('Syafi’i :', content: '''
Boleh mengganti “Allahu Akbar” dengan ”Allahu Al-Akbar”, ditambah dengan alif dan lam pada kata “Akbar”. (Mughniyah; 2001)
      '''),
      Entry('Mengenai bahasa pengucapan takbirotul ikrom', children: [
        Entry('Syafi’i, Maliki dan Hambali :', content: '''
Sepakat bahwa mengucapkannya dalam bahasa Arab adalah wajib,walaupun orang yang shalat itu adalah orang ajam (bukan orang Arab).
      '''),
        Entry('Hanafi :', content: '''
Sah mengucapkannya dengan bahasa apa saja, walau yang bersangkutan bisa bahasa Arab.
Semua ulama mazhab sepakat : syarat takbiratul ihram adalah semua yang disyaratkan dalamshalat. Kalau bisa melkitakannya dengan berdiri; dan dalam mengucapkan kata “Allahu Akbar” ituharus didengar sendiri, baik terdengar secara keras oleh dirinya, atau dengan perkiraan jika ia tuli.(Mughniyah; 2001)
      '''),
      ]),
    ]),
    Entry('3. BERDIRI', children: [
      Entry('', content: '''Semua ulama mazhab sepakat bahwa berdiri dalam shalat fardhu itu wajib sejak mulai dari takbiratul ihram sampai ruku’, harus tegap, bila tidak mampu ia boleh shalat dengan duduk. Bila tidak mampu duduk, ia boleh shalat dengan miring pada bagian kanan, seperti letak orang yang meninggal di liang lahat, menghadapi kiblat di hadapan badannya, menurut kesepakatan semua ulama mazhab selain Hanafi.'''),
      Entry('Hanafi berpendapat : ', content: '''
Siapa yang tidak bisa duduk, ia boleh shalat terlentang dan menghadap kiblat dengan dua kakinya sehingga isyaratnya dalam ruku’ dan sujud tetap menghadap kiblat. . Hanafi : bila sampai pada tingkat ini tetapi tidak mampu, maka gugurlah perintah shalat baginya, hanya ia harus melaksanakannya (meng-qadha’-nya) bila telah sembuh dan hilang sesuatu yang menghalanginya. (Mughniyah;2001)
      '''),
      Entry('Syafi’i dan Hambali :', content: '''
Dan bila tidak mampu miring ke kanan, maka menurut Syafi’i dan Hambali ia boleh shalat terlentang dan kepalanya menghadap ke kiblat. Bila tidak mampu juga, ia harus mengisyaratkan dengan kepalanya atau dengan kelopak matanya.

Shalat itu tidaklah gugur dalam keadaan apa pun. Maka bila tidak mampu mengisyaratkan dengan kelopak matanya (kedipan mata), maka ia harus shalat dengan hatinya dan menggerakkan lisannya dengan dzikir dan membacanya. Bila juga tidak mampu untuk menggerakkan lisannya, maka ia harus menggambarkan tentang melkitakan shalat di dalam hatinya selama akalnya masih berfungsi.
      '''),
      Entry('Maliki :', content: '''
Bila sampai seperti ini, maka gugur perintah shalat terhadapnya dan tidak diwajibkan mengqadha’-nya. (Mughniyah; 2001)
      '''),
    ]),
    Entry('4. Membaca AL-FATIHAH', children: [
      Entry('Hanafi :', content: '''
Membaca Al-Fatihah dalam shalat fardhu tidak diharuskan, dan membaca bacaan apa saja dari AlQuran itu boleh, berdasarkan Al-Quran surat Muzammil ayat 20 : (Mughniyah; 2001). ”Bacalah apa yang mudah bagimu dari Al-Quran,” (Bidayatul Mujtahid, Jilid I, halaman 122, dan Mizanul Sya’rani, dalam bab shifatus shalah).

Boleh meninggalkan basmalah, karena ia tidak termasuk bagian dari surat. Dan tidak disunnahkan membacanya dengan keras atau pelan. Orang yang shalat sendiri ia boleh memilih apakah mau didengar sendiri (membaca dengan perlahan) atau mau didengar oleh orang lain (membaca dengan keras), dan bila suka membaca dengan sembunyi-sembunyi, bacalah dengannya. Dalam shalat itu tidak ada qunut kecuali pada shalat witir. Sedangkan menyilangkan dua tangan adalah sunnah bukan wajib. Bagi lelaki adalah lebih utama bila meletakkan telapak tangannya yang kanan di atas belakang telapak tangan yang kiri di bawah pusarnya, sedangkan bagi wanita yang lebih utama adalah meletakkan dua tangannya di atas dadanya. (Mughniyah; 2001)
      '''),
      Entry('Syafi’i :', content: '''
Membaca Al-Fatihah adalah wajib pada setiap rakaat tidak ada bedanya, baik pada dua rakaat pertama maupun pada dua rakaat terakhir, baik pada shalat fardhu maupun shalat sunnah. Basmalah itu merupakan bagian dari surat, yang tidak boleh ditinggalkan dalam keadaan apa pun. Dan harus dibaca dengan suara keras pada shalat subuh, dan dua rakaat pertama pada shalat maghrib dan isya’, selain rakaat tersebut harus dibaca dengan pelan. Pada sholat subuh disunnahkan membaca qunut setelah mengangkat kepalanya dari ruku’ pad rakaat kedua sebagaimana juga disunnahkan membaca surat Al-Quran setelah membaca Al-Fatihah pada dua rakaat yang pertama saja. Sedangkan menyilangkan dua tangan bukanlah wajib, hanya disunnahkan bagi lelaki dan wanita. Dan yang paling utama adalah meletakkan telapak tangannya yang kanan di belakang telapak tangannya yang kiri di bawah dadanya tapi di atas pusar dan agak miring ke kiri. (Mughniyah; 2001)
      '''),
      Entry('Maliki :', content: '''
Membaca Al-Fatihah itu harus pada setiap rakaat, tak ada bedanya, baik pada rakaat-rakaat pertama maupun pada rakaat-rakaat terakhir, baik pada shalat fardhu maupun shalat sunnah, sebagaimana pendapat Syafi’i, dan disunnahkan membaca surat Al-Quran setelah Al-Fatihah pada dua rakaat yang pertama.

Basmalah bukan termasuk bagian dari surat, bahkan disunnahkan untuk ditinggalkan. Disunnahkan menyaringkan bacaan pad shalat subuh dan dua rakaat pertama pada shalat maghrib dan isya’, serta qunut pada shalat subuh saja. Sedangkan menyilangkan kedua tangan adalah boleh, tetapi disunnahkan untuk mengulurkan dua tangan pada shalat fardhu. (Mughniyah; 2001)
      '''),
      Entry('Hambali :', content: '''
Wajib membaca Al-Fatihah pada setiap rakaat, dan sesudahnya disunnahkan membaca surat AlQuran pada dua rakaat yang pertama. Dan pada shalat subuh, serta dua rakaat pertama pada shalat maghrib dan isya’ disunnahkan membacanya dengan nyaring.

Basmalah merupakan bagian dari surat, tetapi cara membacanya harus pelan-pelan dan tidak boleh dengan keras. Qunut hanya pada shalat witir bukan pada shalat-shalat lainnya. Sedangkan menyilangkan dua tangan disunahkan bagi lelaki dan wanita, hanya yang paling utama adalah meletakkan telapak tangannya yang kanan pada belakang telapak tangannya yang kiri, dan meletakkan di bawah pusar.
      '''),
      Entry('', content: '''Empat mazhab menyatakan bahwa membaca amin adalah sunnah, berdasarkan hadits Abu Hurairah, bahwa Rasulullah saw bersabda : kalau ingin mengucapkan Ghairil maghdzubi ’alaihim waladzdzaallin, maka kalian harus mengucapkan amin.”'''),
    ]),
    Entry('5. RUKU’', children: [
      Entry('', content: '''Semua ulama mazhab sepakat bahwa ruku’ adalah wajib di dalam shalat. Namun mereka berbeda pendapat tentang wajib atau tidaknya ber-thuma’ninah di dalam ruku’, yakni ketika ruku’ semua anggota badan harus diam, tidak bergerak.'''),
      Entry('Hanafi :', content: '''
Yang diwajibkan hanya semata-mata membungkukkan badan dengan lurus, dan tidak wajib thuma’ninah. Mazhab-mazhab yang lain : wajib membungkuk sampai dua telapak tangan orang yang shalat itu berada pada dua lututnya dan juga diwajibkan ber-thuma’ninah dan diam (tidak bergerak) ketika ruku’.
      '''),
      Entry('Syafi’i, Hanafi, dan Maliki :', content: '''
Tidak wajib berdzikir ketika shalat, hanya disunnahkan saja mengucapkan :

Subhaana rabbiyal ’adziim (”Maha Suci Tuhanku Yang Maha Agung”)
      '''),
      Entry('Hambali :', content: '''
Membaca tasbih ketika ruku’ adalah wajib.  Kalimatnya menurut Hambali :
Subhaana rabbiyal ’adziim (”Maha Suci Tuhanku Yang Maha Agung”)
      '''),
    ]),
    Entry('6. I’TIDAL', content: '''
Hanafi : tidak wajib mengangkat kepala dari ruku’ yakni i’tidal (dalam keadaan berdiri). Dibolehkan untuk langsung sujud, namun hal itu makruh.
 
Mazhab-mazhab yang lain : wajib mengangkat kepalanya dan ber-i’tidal, serta disunnahkan membaca tasmi’, yaitu mengucapkan : Sami’allahuliman hamidah (”Allah mendengar orang yang memuji-Nya”)
      '''),
    Entry('7. SUJUD', children: [
      Entry('', content: '''Semua ulama mazhab sepakat bahwa sujud itu wajib dilkitakan dua kali pada setipa rakaat. Mereka berbeda pendapat tentang batasnya. (Mughniyah; 2001)'''),
      Entry('Maliki, Syafi’i, dan Hanafi :', content: '''
Yang wajib (menempel) hanya dahi, sedangkan yang lain-lainnya adalah sunnah.
      '''),
      Entry('Hambali :', content: '''
Yang diwajibkan itu semua anggota yang tujuh (dahi, dua telapak tangan, dua lutut, dan ibu jari dua kaki) secara sempurna. Bahkan Hambali menambahi hidung, sehingga menjadi delapan.
      '''),
      Entry('', content: '''Perbedaan juga terjadi pada tasbih dan thuma’ninah di dalam sujud, sebagaimana dalam ruku’. Maka mazhab yang mewajibkannya di dalam ruku’ juga mewajibkannya di dalam sujud. Hanafi : tidak diwajibkan duduk di antara dua sujud itu. Mazhab-mazhab yang lain : wajib duduk di antara dua sujud. (Mughniyah; 2001)'''),
    ]),
    Entry('8. TAHIYYAT', children: [
      Entry('', content: '''Tahiyyat di dalam shalat dibagi menjadi dua bagian :
Pertama yaitu tahiyyat yang terjadi setelah dua rakaat pertama dari shalat maghrib, isya’, dzuhur, dan ashar dan tidak diakhiri dengan salam. 

Yang kedua adalah tahiyyat yang diakhiri dengan salam, baik pada shalat yang dua rakaat, tiga, atau empat rakaat. (Mughniyah; 2001)'''),
      Entry('Tahiyyat Awal', content: '''
Hambali : tahiyyat pertama itu wajib. 

Mazhab-mazhab lain : hanya sunnah.
      '''),
      Entry('Tahiyyat Akhir', children: [
        Entry('Hanafi : ', content: '''
Hanya sunnah, bukan wajib. Kalimat (lafadz) tahiyyat :

Attahiyatu lillahi washolawaatu waththoyyibaatu wassalaamu
”Kehormatan itu kepunyaan Allah, shalawat dan kebaikan serta salam sejahtera”

’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh
”Kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya”

Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin
”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh”

Asyhadu anlaa ilaaha illallah
”Kita bersaksi bahwa tidak ada Tuhan selain Allah”

Waasyhadu anna muhammadan ’abduhu warosuuluh
”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya”
      '''),
        Entry('Maliki : ', content: '''
Hukumnya hanya sunnah, bukan wajib. Kalimat (lafadz) tahiyyat :
Attahiyyatu lillaahi azzaakiyaatu lillaahi aththoyyibaatu ashsholawaatu lillah
”Kehormatan itu kepunyaan Allah, kesucian bagi Allah, kebaikan dan shalawat juga bagi Allah”

Assalaamu’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh
”Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya”

Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin
”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh”

Asyhadu anlaa ilaaha illallah wahdahu laa syariikalah
”Kita bersaksi bahwa tidak ada Tuhan selain Allah Yang Esa tidak ada sekutu bagi-Nya”

Waasyhadu anna muhammadan ’abduhu warosuuluh
”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya”
      '''),
        Entry('Syafi’i :', content: '''
Hukumnya wajib. Kalimat (lafadz) tahiyyat :
Attahiyyatul mubaarokaatush sholawaatuth thoyyibaatu lillaah
”Kehormatan, barakah-barakah, shalawat, dan kebaikan adalah kepunyaan Allah”

Assalaamu’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh
”Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya”

Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin
”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh”

Asyhadu anlaa ilaaha illallah
”Kita bersaksi bahwa tidak ada Tuhan selain Allah”

Waasyhadu anna muhammadan ’abduhu warosuuluh
”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya”
      '''),
        Entry('Hambali :', content: '''
Hukumnya wajib. Kalimat (lafadz) tahiyyat :
Attahiyyatu lillahi washsholawaatu waththoyyibaatu
”Kehormatan itu kepunyaan Allah, juga shalawat dan kebaikan”

Assalaamu’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh
”Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya”

Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin
”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh”

Asyhadu anlaa ilaaha illallah wahdahu laa syariikalah
”Kita bersaksi bahwa tidak ada Tuhan selain Allah Yang Esa tidak ada sekutu bagi-Nya”

Waasyhadu anna muhammadan ’abduhu warosuuluh
”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya”

Allahumma sholli ’alaa muhammad
”Ya Allah, berikanlah shalawat kepada muhammad”
      '''),
      ]),
    ]),
    Entry('9. Mengucapkan SALAM', children: [
      Entry('', content: '''Menurut empat mazhab, kalimatnya sama yaitu :
Assalaamu’alaikum warahmatullaah
”Semoga kesejahteraan dan rahmat Allah tercurah kepada kalian”'''),
      Entry('Syafi’i, Maliki, dan Hambali : ', content: '''
Mengucapkan salam adalah wajib. Hanafi : tidak wajib. (Bidayatul Mujtahid, Jilid I, halaman 126).
      '''),
      Entry('Hambali : ', content: '''
Wajib mengucapkan salam dua kali, sedangkan yang lain hanya mencukupkan satu kali saja yang wajib.
      '''),
    ]),
    Entry('10. TERTIB', content: '''
Diwajibkan tertib antara bagian-bagian shalat. Maka takbiratul Ihram wajib didahulukan dari bacaan Al-Quran (salam atau Al-Fatihah), sedangkan membaca Al-Fatihah wajib didahulukan dari ruku’, dan ruku’ didahulukan daru sujud, begitu seterusnya.

Berturut-turut
Diwajibkan mengerjakan bagian-bagian shalat secara berurutan dan langsung, juga antara satu bagian dengan bagian yang lain. Artinya membaca Al-Fatihah langsung setelah bertakbir tanpa ada selingan. Dan mulai ruku’ setelah membaca Al-Fatihah atau ayat Al-Quran, tanpa selingan, begitu seterusnya. Juga tidak boleh ada selingan lain, antara ayat-ayat, kalimat-kalimat, dan huruf-huruf.
      '''),
  ];
  final List<Entry> dataText = <Entry>[
    Entry('Sholat Menurut Bahasa', content: '''
Sholat Menurut Bahasa adalah berdoa dalam kebaikan sedangkan menurut syara’ sholat adalah perbuatan yang dilakukan dengan memulai dari takbiratul ihram dan di akhiri dengan salam.
      '''),
    Entry('', content: '''Berikut ini pendapat 4 Imam Madzhab (Maliki, Hambali, Hanafi dan Syafi’i) terkait rukun-rukun dan fardhu-fardhu shalat :'''),
    Entry('1. NIAT', content: '''
Semua ulama mazhab sepakat bahwa mengungkapkan niat dengan kata-kata tidaklah diminta. (Mughniyah; 2001). Ibnu Qayyim berpendapat dalam bukunya Zadul Ma’ad, sebagaimana yang dijelaskan dalam jilid pertama dari buku Al-Mughni, karya Ibnu Qudamah, sebagai berikut : Nabi Muhammad saw bila menegakkan shalat, beliau langsung mengucapkan “Allahu akbar” dan beliau tidak mengucapkan apa-apa sebelumnya, dan tidak melafalkan niat sama sekali.
      '''),
    Entry('2. TAKBIRATUL IHRAM', children: [
      Entry('', content: '''Shalat tidak akan sempurna tanpa takbiratul ihram. Nama takbiratul ihram ini berdasarkan sabda Rasulullah saw :“Kunci shalat adalah bersuci, dan yang mengharamkannya (dari perbuatan sesuatu selain perbuatan-perbuatan shalat) adalah takbir, dan penghalalnya adalah salam.”'''),
      Entry('Maliki dan Hambali :', content: '''
Kalimat takbiratul ihram adalah “Allah Akbar” (Allah Maha Besar) tidak boleh menggunakan katakata lainnya.
      '''),
      Entry('Hanafi :', content: '''
Boleh dengan kata-kata lain yang sesuai atau sama artinya dengan kata-kata tersebut, seperti “Allah Al-A’dzam” dan “Allahu Al-Ajall” (Allah Yang Maha Agung dan Allah Yang Maha Mulia). (Mughniyah; 2001)
      '''),
      Entry('Syafi’i :', content: '''
Boleh mengganti “Allahu Akbar” dengan ”Allahu Al-Akbar”, ditambah dengan alif dan lam pada kata “Akbar”. (Mughniyah; 2001)
      '''),
      Entry('Mengenai bahasa pengucapan takbirotul ikrom', children: [
        Entry('Syafi’i, Maliki dan Hambali :', content: '''
Sepakat bahwa mengucapkannya dalam bahasa Arab adalah wajib,walaupun orang yang shalat itu adalah orang ajam (bukan orang Arab).
      '''),
        Entry('Hanafi :', content: '''
Sah mengucapkannya dengan bahasa apa saja, walau yang bersangkutan bisa bahasa Arab.
Semua ulama mazhab sepakat : syarat takbiratul ihram adalah semua yang disyaratkan dalamshalat. Kalau bisa melkitakannya dengan berdiri; dan dalam mengucapkan kata “Allahu Akbar” ituharus didengar sendiri, baik terdengar secara keras oleh dirinya, atau dengan perkiraan jika ia tuli.(Mughniyah; 2001)
      '''),
      ]),
    ]),
    Entry('3. BERDIRI', children: [
      Entry('', content: '''Semua ulama mazhab sepakat bahwa berdiri dalam shalat fardhu itu wajib sejak mulai dari takbiratul ihram sampai ruku’, harus tegap, bila tidak mampu ia boleh shalat dengan duduk. Bila tidak mampu duduk, ia boleh shalat dengan miring pada bagian kanan, seperti letak orang yang meninggal di liang lahat, menghadapi kiblat di hadapan badannya, menurut kesepakatan semua ulama mazhab selain Hanafi.'''),
      Entry('Hanafi berpendapat : ', content: '''
Siapa yang tidak bisa duduk, ia boleh shalat terlentang dan menghadap kiblat dengan dua kakinya sehingga isyaratnya dalam ruku’ dan sujud tetap menghadap kiblat. . Hanafi : bila sampai pada tingkat ini tetapi tidak mampu, maka gugurlah perintah shalat baginya, hanya ia harus melaksanakannya (meng-qadha’-nya) bila telah sembuh dan hilang sesuatu yang menghalanginya. (Mughniyah;2001)
      '''),
      Entry('Syafi’i dan Hambali :', content: '''
Dan bila tidak mampu miring ke kanan, maka menurut Syafi’i dan Hambali ia boleh shalat terlentang dan kepalanya menghadap ke kiblat. Bila tidak mampu juga, ia harus mengisyaratkan dengan kepalanya atau dengan kelopak matanya.

Shalat itu tidaklah gugur dalam keadaan apa pun. Maka bila tidak mampu mengisyaratkan dengan kelopak matanya (kedipan mata), maka ia harus shalat dengan hatinya dan menggerakkan lisannya dengan dzikir dan membacanya. Bila juga tidak mampu untuk menggerakkan lisannya, maka ia harus menggambarkan tentang melkitakan shalat di dalam hatinya selama akalnya masih berfungsi.
      '''),
      Entry('Maliki :', content: '''
Bila sampai seperti ini, maka gugur perintah shalat terhadapnya dan tidak diwajibkan mengqadha’-nya. (Mughniyah; 2001)
      '''),
    ]),
    Entry('4. Membaca AL-FATIHAH', children: [
      Entry('Hanafi :', content: '''
Membaca Al-Fatihah dalam shalat fardhu tidak diharuskan, dan membaca bacaan apa saja dari AlQuran itu boleh, berdasarkan Al-Quran surat Muzammil ayat 20 : (Mughniyah; 2001). ”Bacalah apa yang mudah bagimu dari Al-Quran,” (Bidayatul Mujtahid, Jilid I, halaman 122, dan Mizanul Sya’rani, dalam bab shifatus shalah).

Boleh meninggalkan basmalah, karena ia tidak termasuk bagian dari surat. Dan tidak disunnahkan membacanya dengan keras atau pelan. Orang yang shalat sendiri ia boleh memilih apakah mau didengar sendiri (membaca dengan perlahan) atau mau didengar oleh orang lain (membaca dengan keras), dan bila suka membaca dengan sembunyi-sembunyi, bacalah dengannya. Dalam shalat itu tidak ada qunut kecuali pada shalat witir. Sedangkan menyilangkan dua tangan adalah sunnah bukan wajib. Bagi lelaki adalah lebih utama bila meletakkan telapak tangannya yang kanan di atas belakang telapak tangan yang kiri di bawah pusarnya, sedangkan bagi wanita yang lebih utama adalah meletakkan dua tangannya di atas dadanya. (Mughniyah; 2001)
      '''),
      Entry('Syafi’i :', content: '''
Membaca Al-Fatihah adalah wajib pada setiap rakaat tidak ada bedanya, baik pada dua rakaat pertama maupun pada dua rakaat terakhir, baik pada shalat fardhu maupun shalat sunnah. Basmalah itu merupakan bagian dari surat, yang tidak boleh ditinggalkan dalam keadaan apa pun. Dan harus dibaca dengan suara keras pada shalat subuh, dan dua rakaat pertama pada shalat maghrib dan isya’, selain rakaat tersebut harus dibaca dengan pelan. Pada sholat subuh disunnahkan membaca qunut setelah mengangkat kepalanya dari ruku’ pad rakaat kedua sebagaimana juga disunnahkan membaca surat Al-Quran setelah membaca Al-Fatihah pada dua rakaat yang pertama saja. Sedangkan menyilangkan dua tangan bukanlah wajib, hanya disunnahkan bagi lelaki dan wanita. Dan yang paling utama adalah meletakkan telapak tangannya yang kanan di belakang telapak tangannya yang kiri di bawah dadanya tapi di atas pusar dan agak miring ke kiri. (Mughniyah; 2001)
      '''),
      Entry('Maliki :', content: '''
Membaca Al-Fatihah itu harus pada setiap rakaat, tak ada bedanya, baik pada rakaat-rakaat pertama maupun pada rakaat-rakaat terakhir, baik pada shalat fardhu maupun shalat sunnah, sebagaimana pendapat Syafi’i, dan disunnahkan membaca surat Al-Quran setelah Al-Fatihah pada dua rakaat yang pertama.

Basmalah bukan termasuk bagian dari surat, bahkan disunnahkan untuk ditinggalkan. Disunnahkan menyaringkan bacaan pad shalat subuh dan dua rakaat pertama pada shalat maghrib dan isya’, serta qunut pada shalat subuh saja. Sedangkan menyilangkan kedua tangan adalah boleh, tetapi disunnahkan untuk mengulurkan dua tangan pada shalat fardhu. (Mughniyah; 2001)
      '''),
      Entry('Hambali :', content: '''
Wajib membaca Al-Fatihah pada setiap rakaat, dan sesudahnya disunnahkan membaca surat AlQuran pada dua rakaat yang pertama. Dan pada shalat subuh, serta dua rakaat pertama pada shalat maghrib dan isya’ disunnahkan membacanya dengan nyaring.

Basmalah merupakan bagian dari surat, tetapi cara membacanya harus pelan-pelan dan tidak boleh dengan keras. Qunut hanya pada shalat witir bukan pada shalat-shalat lainnya. Sedangkan menyilangkan dua tangan disunahkan bagi lelaki dan wanita, hanya yang paling utama adalah meletakkan telapak tangannya yang kanan pada belakang telapak tangannya yang kiri, dan meletakkan di bawah pusar.
      '''),
      Entry('', content: '''Empat mazhab menyatakan bahwa membaca amin adalah sunnah, berdasarkan hadits Abu Hurairah, bahwa Rasulullah saw bersabda : kalau ingin mengucapkan Ghairil maghdzubi ’alaihim waladzdzaallin, maka kalian harus mengucapkan amin.”'''),
    ]),
    Entry('5. RUKU’', children: [
      Entry('', content: '''Semua ulama mazhab sepakat bahwa ruku’ adalah wajib di dalam shalat. Namun mereka berbeda pendapat tentang wajib atau tidaknya ber-thuma’ninah di dalam ruku’, yakni ketika ruku’ semua anggota badan harus diam, tidak bergerak.'''),
      Entry('Hanafi :', content: '''
Yang diwajibkan hanya semata-mata membungkukkan badan dengan lurus, dan tidak wajib thuma’ninah. Mazhab-mazhab yang lain : wajib membungkuk sampai dua telapak tangan orang yang shalat itu berada pada dua lututnya dan juga diwajibkan ber-thuma’ninah dan diam (tidak bergerak) ketika ruku’.
      '''),
      Entry('Syafi’i, Hanafi, dan Maliki :', content: '''
Tidak wajib berdzikir ketika shalat, hanya disunnahkan saja mengucapkan :

Subhaana rabbiyal ’adziim (”Maha Suci Tuhanku Yang Maha Agung”)
      '''),
      Entry('Hambali :', content: '''
Membaca tasbih ketika ruku’ adalah wajib.  Kalimatnya menurut Hambali :
Subhaana rabbiyal ’adziim (”Maha Suci Tuhanku Yang Maha Agung”)
      '''),
    ]),
    Entry('6. I’TIDAL', content: '''
Hanafi : tidak wajib mengangkat kepala dari ruku’ yakni i’tidal (dalam keadaan berdiri). Dibolehkan untuk langsung sujud, namun hal itu makruh.
 
Mazhab-mazhab yang lain : wajib mengangkat kepalanya dan ber-i’tidal, serta disunnahkan membaca tasmi’, yaitu mengucapkan : Sami’allahuliman hamidah (”Allah mendengar orang yang memuji-Nya”)
      '''),
    Entry('7. SUJUD', children: [
      Entry('', content: '''Semua ulama mazhab sepakat bahwa sujud itu wajib dilkitakan dua kali pada setipa rakaat. Mereka berbeda pendapat tentang batasnya. (Mughniyah; 2001)'''),
      Entry('Maliki, Syafi’i, dan Hanafi :', content: '''
Yang wajib (menempel) hanya dahi, sedangkan yang lain-lainnya adalah sunnah.
      '''),
      Entry('Hambali :', content: '''
Yang diwajibkan itu semua anggota yang tujuh (dahi, dua telapak tangan, dua lutut, dan ibu jari dua kaki) secara sempurna. Bahkan Hambali menambahi hidung, sehingga menjadi delapan.
      '''),
      Entry('', content: '''Perbedaan juga terjadi pada tasbih dan thuma’ninah di dalam sujud, sebagaimana dalam ruku’. Maka mazhab yang mewajibkannya di dalam ruku’ juga mewajibkannya di dalam sujud. Hanafi : tidak diwajibkan duduk di antara dua sujud itu. Mazhab-mazhab yang lain : wajib duduk di antara dua sujud. (Mughniyah; 2001)'''),
    ]),
    Entry('8. TAHIYYAT', children: [
      Entry('', content: '''Tahiyyat di dalam shalat dibagi menjadi dua bagian :
Pertama yaitu tahiyyat yang terjadi setelah dua rakaat pertama dari shalat maghrib, isya’, dzuhur, dan ashar dan tidak diakhiri dengan salam.
 
Yang kedua adalah tahiyyat yang diakhiri dengan salam, baik pada shalat yang dua rakaat, tiga, atau empat rakaat. (Mughniyah; 2001)'''),
      Entry('Tahiyyat Awal', content: '''
Hambali : tahiyyat pertama itu wajib. 

Mazhab-mazhab lain : hanya sunnah.
      '''),
      Entry('Tahiyyat Akhir', children: [
        Entry('Hanafi : ', content: '''
Hanya sunnah, bukan wajib. Kalimat (lafadz) tahiyyat :

Attahiyatu lillahi washolawaatu waththoyyibaatu wassalaamu
”Kehormatan itu kepunyaan Allah, shalawat dan kebaikan serta salam sejahtera”

’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh
”Kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya”

Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin
”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh”

Asyhadu anlaa ilaaha illallah
”Kita bersaksi bahwa tidak ada Tuhan selain Allah”

Waasyhadu anna muhammadan ’abduhu warosuuluh
”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya”
      '''),
        Entry('Maliki : ', content: '''
Hukumnya hanya sunnah, bukan wajib. Kalimat (lafadz) tahiyyat :
Attahiyyatu lillaahi azzaakiyaatu lillaahi aththoyyibaatu ashsholawaatu lillah
”Kehormatan itu kepunyaan Allah, kesucian bagi Allah, kebaikan dan shalawat juga bagi Allah”

Assalaamu’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh
”Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya”

Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin
”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh”

Asyhadu anlaa ilaaha illallah wahdahu laa syariikalah
”Kita bersaksi bahwa tidak ada Tuhan selain Allah Yang Esa tidak ada sekutu bagi-Nya”

Waasyhadu anna muhammadan ’abduhu warosuuluh
”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya”
      '''),
        Entry('Syafi’i :', content: '''
Hukumnya wajib. Kalimat (lafadz) tahiyyat :
Attahiyyatul mubaarokaatush sholawaatuth thoyyibaatu lillaah
”Kehormatan, barakah-barakah, shalawat, dan kebaikan adalah kepunyaan Allah”

Assalaamu’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh
”Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya”

Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin
”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh”

Asyhadu anlaa ilaaha illallah
”Kita bersaksi bahwa tidak ada Tuhan selain Allah”

Waasyhadu anna muhammadan ’abduhu warosuuluh
”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya”
      '''),
        Entry('Hambali :', content: '''
Hukumnya wajib. Kalimat (lafadz) tahiyyat :
Attahiyyatu lillahi washsholawaatu waththoyyibaatu
”Kehormatan itu kepunyaan Allah, juga shalawat dan kebaikan”

Assalaamu’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh
”Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya”

Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin
”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh”

Asyhadu anlaa ilaaha illallah wahdahu laa syariikalah
”Kita bersaksi bahwa tidak ada Tuhan selain Allah Yang Esa tidak ada sekutu bagi-Nya”

Waasyhadu anna muhammadan ’abduhu warosuuluh
”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya”

Allahumma sholli ’alaa muhammad
”Ya Allah, berikanlah shalawat kepada muhammad”
      '''),
      ]),
    ]),
    Entry('9. Mengucapkan SALAM', children: [
      Entry('', content: '''Menurut empat mazhab, kalimatnya sama yaitu :
Assalaamu’alaikum warahmatullaah
”Semoga kesejahteraan dan rahmat Allah tercurah kepada kalian”'''),
      Entry('Syafi’i, Maliki, dan Hambali : ', content: '''
Mengucapkan salam adalah wajib. Hanafi : tidak wajib. (Bidayatul Mujtahid, Jilid I, halaman 126).
      '''),
      Entry('Hambali : ', content: '''
Wajib mengucapkan salam dua kali, sedangkan yang lain hanya mencukupkan satu kali saja yang wajib.
      '''),
    ]),
    Entry('10. TERTIB', content: '''
Diwajibkan tertib antara bagian-bagian shalat. Maka takbiratul Ihram wajib didahulukan dari bacaan Al-Quran (salam atau Al-Fatihah), sedangkan membaca Al-Fatihah wajib didahulukan dari ruku’, dan ruku’ didahulukan daru sujud, begitu seterusnya.

Berturut-turut
Diwajibkan mengerjakan bagian-bagian shalat secara berurutan dan langsung, juga antara satu bagian dengan bagian yang lain. Artinya membaca Al-Fatihah langsung setelah bertakbir tanpa ada selingan. Dan mulai ruku’ setelah membaca Al-Fatihah atau ayat Al-Quran, tanpa selingan, begitu seterusnya. Juga tidak boleh ada selingan lain, antara ayat-ayat, kalimat-kalimat, dan huruf-huruf.
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
        context.bloc<PageBloc>().add(GoToMateriPage());
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
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                          "Sholat",
                          style: blackTextFont.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        )),
                  ),
//            // SUBTITLE FARDU
//            Center(
//                child: Text(
//                  "Fardu",
//                  style: blackTextFont.copyWith(fontSize: 14),
//                )),
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
