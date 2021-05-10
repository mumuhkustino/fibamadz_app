part of 'pages.dart';

class MateriPuasaPage extends StatefulWidget {
  @override
  _MateriPuasaPageState createState() => _MateriPuasaPageState();
}

class _MateriPuasaPageState extends State<MateriPuasaPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText = '';
  List<Entry> data = <Entry>[];
  // DATA YANG TIDAK BERUBAH
  final List<Entry> text = <Entry>[
    Entry('', content: '''Puasa adalah menahan dari segala sesuatu yang membatalkan puasa'''),
    Entry('Syarat Wajib Puasa', children: [
      Entry('', content: '''Syarat Wajib Puasa adalah harus islam, aqil baligh, mampu dan menetap. Selanjutnya kita simak yuk pembahasan berikut ini:'''),
      Entry('1. Islam', content: '''
Dengan demikian orang kafir tidak wajib berpuasa dan tidak wajib mengqadha' (mengganti) begitulah menurut jumhur (mayoritas) ulama, bahkan kalaupun mereka melakukannya tetap dianggap tidak sah. Hanya saja ulama berbeda pendapat dalam menentukan apakah syarat islam ini syarat wajib atau syarat sahnya puasa? Dan yang melatar belakangi mereka dalam hal ini adalah karena adanya perbedaan mereka dalam memahami ayat kewajiban puasa, mengenai apakah orang kafir termasuk di dalamnya atau tidak.

Menurut Ulama Hanafiyah: orang kafir tidak termasuk dalam ketentuan wajib puasa. Sementara jumhur (mayoritas) ulama berpendapat bahwa mereka tetap termasuk dalam setiap firman Allah. Dengan demikian mereka dibebani untuk melakukan semua syariatNya (dalam hal ini mereka wajib memeluk agama Islam kemudian melakukan puasa). Jadi menurut pendapat pertama (Hanafiyah) mereka hanya menaggung dosa atas kekafirannya sementara menurut pendapat kedua (Jumhur Ulama) mereka menanggung dosa kekafiran dan meninggalkan syariat.

Maka jika ada seorang kafir masuk Islam pada bulan ramadhan dia wajib melaksanakan puasa sejak saat itu. Sebagaimana firman Allah "Katakanlah pada orang kafir bahwa jika mereka masuk islam akan diampuni dosanya yang telah lalu" (QS. Al Anfal:38).
      '''),
      Entry('2 & 3. Aqil dan Baligh (berakal dan melewati masa pubertas)', content: '''
Tidak wajib puasa bagi anak kecil (belum baligh), orang gila (tidak berakal) dan orang mabuk, karena mereka tidak termasuk orang mukallaf (orang yang sudah masuk dalam konstitusi hukum), sebagaimana dalam hadist:

"Seseorang tidak termasuk mukallaf pada saat sebelum baligh, hilang ingatan dan dalan keadaan tidur".
      '''),
      Entry('4 & 5, Mampu dan Menetap', content: '''
Puasa tidak diwajibkan atas orang sakit (tidak mampu) dan sedang bepergian (tidak menetap), tetapi mereka wajib mengqadha'-nya.

Syarat-syarat tersebut di atas mendapat tambahan satu syarat lagi dari Ulama Hanafiyah menjadi syarat yang ke-6 yaitu: Mengetahui kewajiban puasa (semisal bagi orang yang memeluk Islam di negara non muslim).
      '''),
    ]),
    Entry('Syarat Sahnya Puasa', children: [
      Entry('1.	Menurut ulama Hanafiyah ada 3 : ', content: '''
o	Niat
o	Tidak ada yang menghalanginya (seperti haid dan nifas)
o	Tidak ada yang membatalkannya
      '''),
      Entry('2.	Menurut ulama Malikiyah ada 4 : ',  content: '''
o	Niat
o	Suci dari haid dan nifas
o	Islam
o	Pada waktunya dan juga disyaratkan orang yang berpuasa berakal.
      '''),
      Entry('3.	Menurut ulama Syafi\'iyah ada 4 : ', content: '''
o	Islam
o	Berakal
o	Suci dari haid dan nifas sepanjang hari
o	Dilaksanakan pada waktunya.
(Sedangkan "niat", menurut Syafi'iyah, dimasukkan ke rukun puasa).
      '''),
      Entry('4.	Menurut ulama Hambaliyah ada 3:', content: '''
o	Islam
o	Niat
o	Suci dari haid dan nifas
      '''),
      Entry('', content: '''
Sebagai catatan lebih lanjut bahwa:
Definisi Niat ; Keyakinan hati dan kehendak untuk melakukan suatu perbuatan tanpa keragu-raguan.'''),
    ]),
    Entry('Apakah niat itu termasuk syarat atau rukun?', content: '''
Pada dasarnya ulama sepakat bahwa, niat wajib dilakukan dalam setiap ibadah, sebagaimana sabda Rasulullah saw. "Sesungguhnya setiap perbuatan itu tergantung pada niatnya". Dan dalam riwayat 'Aisyah, bahwasanya Rasul Saw. bersabda: "Barang siapa tidak berniat puasa pada malam hari maka puasanya dianggap tidak sah." Menurut mazhab selain Syafi'iyah: "Niat" adalah syarat, karena puasa dan ibadah lainnya merupakan perbuatan yang dilakukan oleh seorang hamba dengan ikhlas hanya karena Allah semata. Keikhalasn disini tidak bisa terwujud kecuali dengan niat. Adapun pelaksanaan "Niat" harus dilakukan di hati tidak cukup mengucapkan di mulut saja.
      '''),
    Entry('Syarat bersuci jinabah (mandi junub)', content: '''
Ulama sepakat bahwa, orang yang hendak berpuasa tidak diwajibkan untuk bersuci jinabah pada malam hari, karena tidak menutup kemungkkinan hal-hal yang mewajibkan mandi junub (seperti bersenggama, mimpi basah, haidh dan nifas) terjadi pada pagi hari. Sebagaimana HR. Aisyah dan Ummu Salmah bahwa: Rasulullah saw. mandi junub (karena jima') pada pagi hari kemudian beliau berpuasa. Maka barang siapa mandi junub pada pagi hari atau seseorang wanita belum bersuci dari haid (atau nifas) dipagi harinya tetap boleh berpuasa dan dianggap sah.
      '''),
    Entry('Kapan Niat Puasa Dilakukan?', children: [
      Entry('', content: '''
Dalam hal niat puasa wajib (jenis apa saja), para ulama berbagai mazhab sepakat bahwa niat harus dilaksanakan pada malam hari. Pendapat ini didasarkan pada hadis Rasul saw. yang diriwayatkan oleh Sayidah 'Aisyah: "Barangsiapa yang tidak berniat puasa pada malam hari sebelum terbit fajar, maka tidak sah puasanya".

Lain halnya puasa sunnat, waktu berniat tidak harus malam hari, tapi bisa dilakukan setelah terbit fajar sampai sebelum tergelincirnya matahari (waktu Dzuhur) dengan syarat ia belum makan/minum sedikitpun sejak Subuh. Bahkan ulama mazhab Hambali, untuk puasa sunat, membolehkan berniat setelah waktu Dzuhur.

Kembali ke persoalan, seandainya lupa berniat pada malam hari atau tertidur, bolehkah melakukan niat setelah terbit fajar atau pagi harinya?

Untuk lebih detailnya, marilah kita ikuti berbagai pendapat berikut ini:'''),
      Entry('Pendapat mazhab Hanafiyah : ', content: '''
Lebih baik bila niat puasa (apa saja) dilakukan bersamaan dengan terbitnya fajar, karena saat terbit fajar merupakan awal ibadah. Jika dilaksanakan setelah terbitnya fajar, untuk semua jenis puasa wajib yang sifatnya menjadi tanggungan/hutang (seperti puasa qadla, puasa kafarat, puasa karena telah melakukan haji tamattu' dan qiran sebagai gantinya denda/dam, dll) maka tidak sah puasanya.
Karena, menurut mazhab ini, puasa-puasa jenis ini niatnya harus dilakukan pada malam hari. Tapi lain dengan puasa wajib yang hanya dilakukan pada waktu-waktu tertentu, seperti puasa Ramadhan, nadzar, dan pusa-puasa sunnah yang tidak dikerjakan dengan sempurna, maka boleh saja niatnya dilakukan setelah fajar sampai sebelum Dhuhur.
      '''),
      Entry('Mazhab Malikiyah : ', content: '''
Niat dianggap sah, untuk semua jenis puasa, bila dilakukan pada malam hari atau bersamaan dengan terbitnya fajar. Adapun apabila seseorang berniat sebelum terbenamnya matahari pada hari sebelumnya atau berniat sebelum tergelincirnya matahari pada hari ia berpuasa maka puasanya tidak sah walaupun puasa sunnah.
      '''),
      Entry('Mazhab Syafi\'iyah : ', content: '''
  Untuk semua jenis puasa wajib (baik yang dilakukan pada waktu-waktu tertentu seperti puasa Ramadlan; yang sifatnya menjadi tanggungan seperti qadla', nazar, kafarat, dll.) niat harus dilakukan pada malam hari. Adapun puasa sunnnah, niat bisa dilakukan sejak malam hari sampai sebelum tergelincirnya matahari. Karena Nabi saw. suatu hari berkata pada 'Aisyah: 'Apakah kamu mempunyai makanan?'. Jawab 'Aisyah: 'Tidak punya'. Terus Nabi bilang: 'Kalau begitu aku puasa'. Lantas 'Aisyah mengisahkan bahwa Nabi pada hari yang lain berkata kepadanya: 'Adakah sesuatu yang bisa dimakan?'. Jawab 'Aisyah: 'Ada'. Lantas Nabi berkata: 'Kalau begitu saya tak berpuasa, meskipun saya telah berniat puasa'.
      '''),
      Entry('Mazhab Hambaliyah : ', content: '''
Tidak beda dari Syafi'iyah, mazhab ini mengharuskan niat dilakukan pada malam hari, untuk semupa jenis puasa wajib. Adapun puasa sunnah, berbeda dari Syafi'iyah, niat bisa dilakukan walaupun telah lewat waktu Dhuhur (dengan syarat belum makan/minum sedikitpun sejak fajar)
      '''),
    ]),
    Entry('Hal-hal Yang Membatalkan Puasa Yang Hanya Mewajibkan Qadla', children: [
      Entry('', content: '''Hal-hal yang membatalkan puasa ada dua macam: yang mewajibkan qadla' saja (tidak kafarat), dan ada yang mengharuskan qadla' dan kafarat. Kali ini, kita akan menampilkan yang pertama, yang mewajibkan qadla' saja, menurut 4 mazhab besar : Hanafiyah, Malikiyah, Syafi'iyah, dan Hanbaliyah.'''),
      Entry('Madzhab Hanafiyah', content: '''
Hal-hal yang membatalkan puasa, dalam mazhab Hanafiyah ini terbagi ke dalam 3 kelompok besar.
Pertama, memakan/menelan/meminum sesuatu yang tidak selayaknya ia makan. Masuk dalam kelompok ini adalah hal-hal berikut:

1.	Memakan beras mentah.
2.	Makan adonan tepung yang tidak dimasak.
3.	Menelan obat-obatan (tanpa maksud yang jelas).
4.	Memakan buah yang belum masak.
5.	Memakan sisa-sisa makanan di mulut sebesar kacang Arab (sama dengan setengahnya kacang tanah).
6.	Memakan garam banyak dengan sekali telan juga mewajibkan qadla' (tidak kafarat), berbeda jika menelannya sedikit-sedikit, maka selain qadla' puasa ia juga wajib membayar kafarat.
7.	Memakan biji-bijian.
8.	Memakan/menelan kapas, kertas atau kulit, kerikil, besi, debu, batu, uang kertas/perak atau sejenisnya.
9.	Memasukkan air atau obat ke dalam tubuh dengan cara menyuntukkan melalui lubang kemalvan, hidung, atau tenggorokan.
10.	Meneteskan minyak ke dalam telinga (bukan air, karena air tidak bisa meresap lebih jauh ke dalam).
11.	Masuknya air hujan atau salju ke dalam tenggorokan tanpa sengaja, dan dia tidak menelannya.

Sengaja muntah-muntah, atau mengeluarkan muntah dengan paksa lantas ditelankannya kembali, jika muntahannya itu memenuhi mulut; atau walaupun tidak sampai memenuhi mulut namun yang kembali tertelan minimal menyamai biji kacang Arab, sementara dia sadar bahwa dia puasa. Namun jika muntahan itu terjadi dengan tanpa sengaja; atau kalaupun muntah secara disengaja namun muntahannya tidak memenuhi mulutnya; atau saat muntah dia lupa bahwa dia sedang puasa; atau muntahannya itu berupa lendir, tidak makanan; maka puasanya tidak batal. Ini berdasar hadis "Barang siapa muntah dengan tanpa sengaja maka dia tidak wajib mengqadla, namun jika sengaja muntah-muntah maka diwajibkan mengqadla'".

Jenis kedua adalah memakan/meminum/menelan makan-makanan atau obat-obatan karena ada udzur, baik itu berupa penyakit, dipaksa, memakan/meminum/menelan secara keliru, atau karena menyepelekan, atau karena samar. Masuk dalam kategori ini adalah hal-hal berikut ini:

1.	Masuknya air kumur ke dalam perut secara tak sengaja.
2.	Berobat dengan cara membedah tubuh bagian kepala atau perut, lantas obat yang dimasukkan mencapai otak atau perut.
3.	Orang tidur yang dimasuki air ke dalam tubuhnya dengan sengaja.
4.	Orang perempuan yang membatalkan puasanya dengan alasan khawatir sakit karena melaksanakan suatu pekerjaan.
5.	Makan atau bersenggama secara syubhat/samar, setelah ia melakukan hal itu (makan atau senggama) karena lupa.
6.	Makan setelah ia berniat puasa pada siang hari.
7.	Seorang musafir (orang yang bepergian) yang makan saat niat puasanya dilakukan pada malam hari setelah ia memutuskan untuk menetap (mukim) di tempat ia berada.
8.	Makan/minum/senggama pada saat fajar telah terbit, namun ia ragu apakah fajar telah terbit.
9.	Makan/minum/senggama pada saat matahari belum terbenam, namun ia menyangka bahwa matahari telah terbenam (telah maghrib)
Catatan ; Seorang yang makan atau melakukan hubvngan badan sejak sebelum terbitnya fajar, kemudian fajar terbit, maka jika ia langsung menghentikannya atau memuntahkan makanan yang ada di mulutnya, maka hal tersebut tidak membatalkan puasanya.

Sebelum pindah madzhab baca dulu ATURANNYA

Jenis ketiga adalah pelampiasan nafsu seks/birahi secara tak sempurna. Masuk dalam kategori ini adalah hal-hal berikut:

1.	Keluarnya mani dikarenakan berhubvngan badan dengan mayat atau binatang atau anak kecil yang belum menimbulkan syahwat.
2.	Keluarnya mani karena berpelukan atau adu paha.
3.	Keluarnya mani karena civman atau rabaan.
4.	Perempuan yang disetvbuh! saat ia tertidur.
5.	Perempuan yang menetesi kemaluannya dengan minyak.
6.	Memasukkan jari yang dibasahi dengan minyak atau air kedalam anus, lantas air atau minyak itu masuk ke dalam.
7.	Bercebok sehingga ada air yang masuk ke dalam melalui anus.
8.	Memasukkan sesuatu sampai tenggelam seluruhnya (kapas, kain, atau jarum suntik, dll) ke dalam anus.(Jika tidak tenggelam seluruhnya, maka tidak membatalkan puasa)
9.	Perempuan yang memasukkan jarinya yang dibasahi dengan minyak atau air ke dalam vaginanya bagian dalam.
      '''),
      Entry('Madzhab Malikiyah', content: '''
Dalam mazhab ini, hal-hal yang mewajibkan qadla' (tanpa kafarat) ada 3 kategori berikut ini:

Membatalkan puasa-puasa fardlu (seperti qadla' Ramadlan, puasa kafarat, puasa nadzar yang tidak tertentu, puasanya orang yang haji tamattu' dan qiraan yang tidak membayar denda). Adapun puasa nadzar yang ditentukan, semisal bernadzar puasa hari/beberapa hari/bulan tertentu, jika dia membatalkan puasanya itu karena udzur seperti haidl, nifas, ayan, gila, sakit, dll, maka ia tak wajib mengqadla'. Namun jika uzdurnya sudah hilang sementara apa yang dinadzarkannya masih tersisa, maka ia wajib melakukan puasa pada hari yang tersisa itu.

Membatalkan puasa dengan sengaja pada puasa Ramadhan, selama syarat-syarat wajibnya kafarat tak terpenuhi. Seperti batalnya puasa karena udzur seperti sakit; atau karena udzur yang menghilangkan dosa seperti lupa, kesalahan, keterpaksaan; batalnya puasa karena keluarnya madzi atau m@ni karena melamun/melihat/memikir-mikir (sesuatu yang menimbulkan syahwat), dengan tanpa berlebihan, namun kebiasaannya keluar m@ni pada saat berhenti dari tindakan itu. Singkatnya, semua puasa wajib yang dibatalkannya wajib baginya mengqadla, kecuali puasa nadzar tertentu yang dibatalkannya karena udzur.

Membatalkan puasa dengan sengaja pada puasa-puasa sunat. Karena menurut mazhab ini, melakukan suatu ibadah sunat, hukumnya wajib melakukannya sampai sempurna. Jika dibatalkan secara sengaja maka harus mengqadlanya, dan jika tanpa jika batalnya karena udzur tidak wajib mengqadlanya.

Kesimpulannya, seseorang yang membatalkan puasa (semua jenis puasa) dengan sengaja maka ia wajib mengqadlanya, dan tidak wajib membayar kafarat kecuali pada puasa Ramadhan saja. Dan barang siapa yang batal puasanya (jenis apa saja) karena lupa, wajib baginya mengqadla (tidak kafarat), kecuali pada puasa sunat (tidak wajib qadla' tidak pula kafarat).

Adapun hal-hal yang bisa membatalkan puasa, dalam mazhab ini, ada 5 hal:

1.	Bersenggama yang mewajibkan mandi.
2.	Keluarnya mani atau madzi karena civman, belaian, dan melihat/memikir-mikir (sesuatu yang menimbulkan syahwat) dan itu dilakukannya dengan sengaja dan terus-terusan.
3.	Muntah-muntah secara sengaja, baik muntahannya itu memenuhi mulut atau tidak. Namun jika muntah itu terjadi secara tak sengaja maka tak membatalkan puasanya, kecuali jika ada muntahannya yang kembali masuk ke perut walau tak sengaja (maka batal puasanya).
4.	Sampainya sesuatu yang cair ke tenggorokan melalui mulut, hidung, atau telinga, baik itu secara sengaja, lupa, kesalahan, atau keterpaksaan. Seperti air kumur atau saat gosok gigi. Masuk dalam kategori hukum cairan ini juga, dupa dan kemenyan jika dihirup kuat-kuat sehingga masuk ke tenggorokan, asap yang diketahui (seperti rokok-pent), bercelak dan berminyak rambut pada siang hari jika rasanya sampai ke tenggorokan, jika tidak sampai ke tenggorokan tidak membatalkan puasa. Sebagaimana ia tak membatalkan puasa, jika hal itu dilakukannya pada malam hari).
5.	Sampainya sesuatu ke pencernaan, baik zat cair atau tidak, melalui mulut, hidung, mata atau pangkal rambut, baik masuknya dengan disengaja, keliru, lupa atau terlanjur. Adapun suntikan pada lobang kelamin laki-laki tidak membatalkan puasa. Begitu juga halnya mengkorek-korek lubang telinga, juga menelan sisa-sisa makanan yang masih menempel di antara gigi-gigi tidak membatalkan puasa, meskipun itu dilakukan dengan sengaja.

Demikian pula masuknya segala sesuatu, baik berupa cairan atau tidak, ke dalam pencernaan melalui lubang-lubang (menuju dalam tubuh) yang berada di atas perut, baik lubang tersebut lebar atau sempit, membatalkan puasa dan wajib mengqadlanya. Beda dengan sesuatu yang masuk melalui lubang bawah (perut), ia baru dianggap membatalkan puasa jika lubang bawah itu lebar (seperti lubang anus dan kelamin perempuan), dan barang yang masuk itu berupa zat cair (tidak benda yang keras).

Singkatnya, qadla' itu wajib bagi orang yang membatalkan puasa-puasa wajib, baik itu dilakukannya dengan sengaja, lupa, keterpaksaan; baik pembatalannya itu haram, boleh, atau wajib seperti orang yang membatalkan puasanya karena kekhawatirannya akan sesuatu yang fatal (jika ia puasa); baik pembatalan itu juga mewajibkan kafarat atau tidak; baik puasa fardhu itu asli atau puasa nadzar.
      '''),
    ]),
  ];
  final List<Entry> dataText = <Entry>[
    Entry('', content: '''Puasa adalah menahan dari segala sesuatu yang membatalkan puasa'''),
    Entry('Syarat Wajib Puasa', children: [
      Entry('', content: '''Syarat Wajib Puasa adalah harus islam, aqil baligh, mampu dan menetap. Selanjutnya kita simak yuk pembahasan berikut ini:'''),
      Entry('1. Islam', content: '''
Dengan demikian orang kafir tidak wajib berpuasa dan tidak wajib mengqadha' (mengganti) begitulah menurut jumhur (mayoritas) ulama, bahkan kalaupun mereka melakukannya tetap dianggap tidak sah. Hanya saja ulama berbeda pendapat dalam menentukan apakah syarat islam ini syarat wajib atau syarat sahnya puasa? Dan yang melatar belakangi mereka dalam hal ini adalah karena adanya perbedaan mereka dalam memahami ayat kewajiban puasa, mengenai apakah orang kafir termasuk di dalamnya atau tidak.

Menurut Ulama Hanafiyah: orang kafir tidak termasuk dalam ketentuan wajib puasa. Sementara jumhur (mayoritas) ulama berpendapat bahwa mereka tetap termasuk dalam setiap firman Allah. Dengan demikian mereka dibebani untuk melakukan semua syariatNya (dalam hal ini mereka wajib memeluk agama Islam kemudian melakukan puasa). Jadi menurut pendapat pertama (Hanafiyah) mereka hanya menaggung dosa atas kekafirannya sementara menurut pendapat kedua (Jumhur Ulama) mereka menanggung dosa kekafiran dan meninggalkan syariat.

Maka jika ada seorang kafir masuk Islam pada bulan ramadhan dia wajib melaksanakan puasa sejak saat itu. Sebagaimana firman Allah "Katakanlah pada orang kafir bahwa jika mereka masuk islam akan diampuni dosanya yang telah lalu" (QS. Al Anfal:38).
      '''),
      Entry('2 & 3. Aqil dan Baligh (berakal dan melewati masa pubertas)', content: '''
Tidak wajib puasa bagi anak kecil (belum baligh), orang gila (tidak berakal) dan orang mabuk, karena mereka tidak termasuk orang mukallaf (orang yang sudah masuk dalam konstitusi hukum), sebagaimana dalam hadist:

"Seseorang tidak termasuk mukallaf pada saat sebelum baligh, hilang ingatan dan dalan keadaan tidur".
      '''),
      Entry('4 & 5, Mampu dan Menetap', content: '''
Puasa tidak diwajibkan atas orang sakit (tidak mampu) dan sedang bepergian (tidak menetap), tetapi mereka wajib mengqadha'-nya.

Syarat-syarat tersebut di atas mendapat tambahan satu syarat lagi dari Ulama Hanafiyah menjadi syarat yang ke-6 yaitu: Mengetahui kewajiban puasa (semisal bagi orang yang memeluk Islam di negara non muslim).
      '''),
    ]),
    Entry('Syarat Sahnya Puasa', children: [
      Entry('1.	Menurut ulama Hanafiyah ada 3 : ', content: '''
o	Niat
o	Tidak ada yang menghalanginya (seperti haid dan nifas)
o	Tidak ada yang membatalkannya
      '''),
      Entry('2.	Menurut ulama Malikiyah ada 4 : ',  content: '''
o	Niat
o	Suci dari haid dan nifas
o	Islam
o	Pada waktunya dan juga disyaratkan orang yang berpuasa berakal.
      '''),
      Entry('3.	Menurut ulama Syafi\'iyah ada 4 : ', content: '''
o	Islam
o	Berakal
o	Suci dari haid dan nifas sepanjang hari
o	Dilaksanakan pada waktunya.
(Sedangkan "niat", menurut Syafi'iyah, dimasukkan ke rukun puasa).
      '''),
      Entry('4.	Menurut ulama Hambaliyah ada 3:', content: '''
o	Islam
o	Niat
o	Suci dari haid dan nifas
      '''),
      Entry('', content: '''
Sebagai catatan lebih lanjut bahwa:
Definisi Niat ; Keyakinan hati dan kehendak untuk melakukan suatu perbuatan tanpa keragu-raguan.'''),
    ]),
    Entry('Apakah niat itu termasuk syarat atau rukun?', content: '''
Pada dasarnya ulama sepakat bahwa, niat wajib dilakukan dalam setiap ibadah, sebagaimana sabda Rasulullah saw. "Sesungguhnya setiap perbuatan itu tergantung pada niatnya". Dan dalam riwayat 'Aisyah, bahwasanya Rasul Saw. bersabda: "Barang siapa tidak berniat puasa pada malam hari maka puasanya dianggap tidak sah." Menurut mazhab selain Syafi'iyah: "Niat" adalah syarat, karena puasa dan ibadah lainnya merupakan perbuatan yang dilakukan oleh seorang hamba dengan ikhlas hanya karena Allah semata. Keikhalasn disini tidak bisa terwujud kecuali dengan niat. Adapun pelaksanaan "Niat" harus dilakukan di hati tidak cukup mengucapkan di mulut saja.
      '''),
    Entry('Syarat bersuci jinabah (mandi junub)', content: '''
Ulama sepakat bahwa, orang yang hendak berpuasa tidak diwajibkan untuk bersuci jinabah pada malam hari, karena tidak menutup kemungkkinan hal-hal yang mewajibkan mandi junub (seperti bersenggama, mimpi basah, haidh dan nifas) terjadi pada pagi hari. Sebagaimana HR. Aisyah dan Ummu Salmah bahwa: Rasulullah saw. mandi junub (karena jima') pada pagi hari kemudian beliau berpuasa. Maka barang siapa mandi junub pada pagi hari atau seseorang wanita belum bersuci dari haid (atau nifas) dipagi harinya tetap boleh berpuasa dan dianggap sah.
      '''),
    Entry('Kapan Niat Puasa Dilakukan?', children: [
      Entry('', content: '''
Dalam hal niat puasa wajib (jenis apa saja), para ulama berbagai mazhab sepakat bahwa niat harus dilaksanakan pada malam hari. Pendapat ini didasarkan pada hadis Rasul saw. yang diriwayatkan oleh Sayidah 'Aisyah: "Barangsiapa yang tidak berniat puasa pada malam hari sebelum terbit fajar, maka tidak sah puasanya".

Lain halnya puasa sunnat, waktu berniat tidak harus malam hari, tapi bisa dilakukan setelah terbit fajar sampai sebelum tergelincirnya matahari (waktu Dzuhur) dengan syarat ia belum makan/minum sedikitpun sejak Subuh. Bahkan ulama mazhab Hambali, untuk puasa sunat, membolehkan berniat setelah waktu Dzuhur.

Kembali ke persoalan, seandainya lupa berniat pada malam hari atau tertidur, bolehkah melakukan niat setelah terbit fajar atau pagi harinya?

Untuk lebih detailnya, marilah kita ikuti berbagai pendapat berikut ini:'''),
      Entry('Pendapat mazhab Hanafiyah : ', content: '''
Lebih baik bila niat puasa (apa saja) dilakukan bersamaan dengan terbitnya fajar, karena saat terbit fajar merupakan awal ibadah. Jika dilaksanakan setelah terbitnya fajar, untuk semua jenis puasa wajib yang sifatnya menjadi tanggungan/hutang (seperti puasa qadla, puasa kafarat, puasa karena telah melakukan haji tamattu' dan qiran sebagai gantinya denda/dam, dll) maka tidak sah puasanya.
Karena, menurut mazhab ini, puasa-puasa jenis ini niatnya harus dilakukan pada malam hari. Tapi lain dengan puasa wajib yang hanya dilakukan pada waktu-waktu tertentu, seperti puasa Ramadhan, nadzar, dan pusa-puasa sunnah yang tidak dikerjakan dengan sempurna, maka boleh saja niatnya dilakukan setelah fajar sampai sebelum Dhuhur.
      '''),
      Entry('Mazhab Malikiyah : ', content: '''
Niat dianggap sah, untuk semua jenis puasa, bila dilakukan pada malam hari atau bersamaan dengan terbitnya fajar. Adapun apabila seseorang berniat sebelum terbenamnya matahari pada hari sebelumnya atau berniat sebelum tergelincirnya matahari pada hari ia berpuasa maka puasanya tidak sah walaupun puasa sunnah.
      '''),
      Entry('Mazhab Syafi\'iyah : ', content: '''
  Untuk semua jenis puasa wajib (baik yang dilakukan pada waktu-waktu tertentu seperti puasa Ramadlan; yang sifatnya menjadi tanggungan seperti qadla', nazar, kafarat, dll.) niat harus dilakukan pada malam hari. Adapun puasa sunnnah, niat bisa dilakukan sejak malam hari sampai sebelum tergelincirnya matahari. Karena Nabi saw. suatu hari berkata pada 'Aisyah: 'Apakah kamu mempunyai makanan?'. Jawab 'Aisyah: 'Tidak punya'. Terus Nabi bilang: 'Kalau begitu aku puasa'. Lantas 'Aisyah mengisahkan bahwa Nabi pada hari yang lain berkata kepadanya: 'Adakah sesuatu yang bisa dimakan?'. Jawab 'Aisyah: 'Ada'. Lantas Nabi berkata: 'Kalau begitu saya tak berpuasa, meskipun saya telah berniat puasa'.
      '''),
      Entry('Mazhab Hambaliyah : ', content: '''
Tidak beda dari Syafi'iyah, mazhab ini mengharuskan niat dilakukan pada malam hari, untuk semupa jenis puasa wajib. Adapun puasa sunnah, berbeda dari Syafi'iyah, niat bisa dilakukan walaupun telah lewat waktu Dhuhur (dengan syarat belum makan/minum sedikitpun sejak fajar)
      '''),
    ]),
    Entry('Hal-hal Yang Membatalkan Puasa Yang Hanya Mewajibkan Qadla', children: [
      Entry('', content: '''Hal-hal yang membatalkan puasa ada dua macam: yang mewajibkan qadla' saja (tidak kafarat), dan ada yang mengharuskan qadla' dan kafarat. Kali ini, kita akan menampilkan yang pertama, yang mewajibkan qadla' saja, menurut 4 mazhab besar : Hanafiyah, Malikiyah, Syafi'iyah, dan Hanbaliyah.'''),
      Entry('Madzhab Hanafiyah', content: '''
Hal-hal yang membatalkan puasa, dalam mazhab Hanafiyah ini terbagi ke dalam 3 kelompok besar.
Pertama, memakan/menelan/meminum sesuatu yang tidak selayaknya ia makan. Masuk dalam kelompok ini adalah hal-hal berikut:

1.	Memakan beras mentah.
2.	Makan adonan tepung yang tidak dimasak.
3.	Menelan obat-obatan (tanpa maksud yang jelas).
4.	Memakan buah yang belum masak.
5.	Memakan sisa-sisa makanan di mulut sebesar kacang Arab (sama dengan setengahnya kacang tanah).
6.	Memakan garam banyak dengan sekali telan juga mewajibkan qadla' (tidak kafarat), berbeda jika menelannya sedikit-sedikit, maka selain qadla' puasa ia juga wajib membayar kafarat.
7.	Memakan biji-bijian.
8.	Memakan/menelan kapas, kertas atau kulit, kerikil, besi, debu, batu, uang kertas/perak atau sejenisnya.
9.	Memasukkan air atau obat ke dalam tubuh dengan cara menyuntukkan melalui lubang kemalvan, hidung, atau tenggorokan.
10.	Meneteskan minyak ke dalam telinga (bukan air, karena air tidak bisa meresap lebih jauh ke dalam).
11.	Masuknya air hujan atau salju ke dalam tenggorokan tanpa sengaja, dan dia tidak menelannya.

Sengaja muntah-muntah, atau mengeluarkan muntah dengan paksa lantas ditelankannya kembali, jika muntahannya itu memenuhi mulut; atau walaupun tidak sampai memenuhi mulut namun yang kembali tertelan minimal menyamai biji kacang Arab, sementara dia sadar bahwa dia puasa. Namun jika muntahan itu terjadi dengan tanpa sengaja; atau kalaupun muntah secara disengaja namun muntahannya tidak memenuhi mulutnya; atau saat muntah dia lupa bahwa dia sedang puasa; atau muntahannya itu berupa lendir, tidak makanan; maka puasanya tidak batal. Ini berdasar hadis "Barang siapa muntah dengan tanpa sengaja maka dia tidak wajib mengqadla, namun jika sengaja muntah-muntah maka diwajibkan mengqadla'".

Jenis kedua adalah memakan/meminum/menelan makan-makanan atau obat-obatan karena ada udzur, baik itu berupa penyakit, dipaksa, memakan/meminum/menelan secara keliru, atau karena menyepelekan, atau karena samar. Masuk dalam kategori ini adalah hal-hal berikut ini:

1.	Masuknya air kumur ke dalam perut secara tak sengaja.
2.	Berobat dengan cara membedah tubuh bagian kepala atau perut, lantas obat yang dimasukkan mencapai otak atau perut.
3.	Orang tidur yang dimasuki air ke dalam tubuhnya dengan sengaja.
4.	Orang perempuan yang membatalkan puasanya dengan alasan khawatir sakit karena melaksanakan suatu pekerjaan.
5.	Makan atau bersenggama secara syubhat/samar, setelah ia melakukan hal itu (makan atau senggama) karena lupa.
6.	Makan setelah ia berniat puasa pada siang hari.
7.	Seorang musafir (orang yang bepergian) yang makan saat niat puasanya dilakukan pada malam hari setelah ia memutuskan untuk menetap (mukim) di tempat ia berada.
8.	Makan/minum/senggama pada saat fajar telah terbit, namun ia ragu apakah fajar telah terbit.
9.	Makan/minum/senggama pada saat matahari belum terbenam, namun ia menyangka bahwa matahari telah terbenam (telah maghrib)
Catatan ; Seorang yang makan atau melakukan hubvngan badan sejak sebelum terbitnya fajar, kemudian fajar terbit, maka jika ia langsung menghentikannya atau memuntahkan makanan yang ada di mulutnya, maka hal tersebut tidak membatalkan puasanya.

Sebelum pindah madzhab baca dulu ATURANNYA

Jenis ketiga adalah pelampiasan nafsu seks/birahi secara tak sempurna. Masuk dalam kategori ini adalah hal-hal berikut:

1.	Keluarnya mani dikarenakan berhubvngan badan dengan mayat atau binatang atau anak kecil yang belum menimbulkan syahwat.
2.	Keluarnya mani karena berpelukan atau adu paha.
3.	Keluarnya mani karena civman atau rabaan.
4.	Perempuan yang disetvbuh! saat ia tertidur.
5.	Perempuan yang menetesi kemaluannya dengan minyak.
6.	Memasukkan jari yang dibasahi dengan minyak atau air kedalam anus, lantas air atau minyak itu masuk ke dalam.
7.	Bercebok sehingga ada air yang masuk ke dalam melalui anus.
8.	Memasukkan sesuatu sampai tenggelam seluruhnya (kapas, kain, atau jarum suntik, dll) ke dalam anus.(Jika tidak tenggelam seluruhnya, maka tidak membatalkan puasa)
9.	Perempuan yang memasukkan jarinya yang dibasahi dengan minyak atau air ke dalam vaginanya bagian dalam.
      '''),
      Entry('Madzhab Malikiyah', content: '''
Dalam mazhab ini, hal-hal yang mewajibkan qadla' (tanpa kafarat) ada 3 kategori berikut ini:

Membatalkan puasa-puasa fardlu (seperti qadla' Ramadlan, puasa kafarat, puasa nadzar yang tidak tertentu, puasanya orang yang haji tamattu' dan qiraan yang tidak membayar denda). Adapun puasa nadzar yang ditentukan, semisal bernadzar puasa hari/beberapa hari/bulan tertentu, jika dia membatalkan puasanya itu karena udzur seperti haidl, nifas, ayan, gila, sakit, dll, maka ia tak wajib mengqadla'. Namun jika uzdurnya sudah hilang sementara apa yang dinadzarkannya masih tersisa, maka ia wajib melakukan puasa pada hari yang tersisa itu.

Membatalkan puasa dengan sengaja pada puasa Ramadhan, selama syarat-syarat wajibnya kafarat tak terpenuhi. Seperti batalnya puasa karena udzur seperti sakit; atau karena udzur yang menghilangkan dosa seperti lupa, kesalahan, keterpaksaan; batalnya puasa karena keluarnya madzi atau m@ni karena melamun/melihat/memikir-mikir (sesuatu yang menimbulkan syahwat), dengan tanpa berlebihan, namun kebiasaannya keluar m@ni pada saat berhenti dari tindakan itu. Singkatnya, semua puasa wajib yang dibatalkannya wajib baginya mengqadla, kecuali puasa nadzar tertentu yang dibatalkannya karena udzur.

Membatalkan puasa dengan sengaja pada puasa-puasa sunat. Karena menurut mazhab ini, melakukan suatu ibadah sunat, hukumnya wajib melakukannya sampai sempurna. Jika dibatalkan secara sengaja maka harus mengqadlanya, dan jika tanpa jika batalnya karena udzur tidak wajib mengqadlanya.

Kesimpulannya, seseorang yang membatalkan puasa (semua jenis puasa) dengan sengaja maka ia wajib mengqadlanya, dan tidak wajib membayar kafarat kecuali pada puasa Ramadhan saja. Dan barang siapa yang batal puasanya (jenis apa saja) karena lupa, wajib baginya mengqadla (tidak kafarat), kecuali pada puasa sunat (tidak wajib qadla' tidak pula kafarat).

Adapun hal-hal yang bisa membatalkan puasa, dalam mazhab ini, ada 5 hal:

1.	Bersenggama yang mewajibkan mandi.
2.	Keluarnya mani atau madzi karena civman, belaian, dan melihat/memikir-mikir (sesuatu yang menimbulkan syahwat) dan itu dilakukannya dengan sengaja dan terus-terusan.
3.	Muntah-muntah secara sengaja, baik muntahannya itu memenuhi mulut atau tidak. Namun jika muntah itu terjadi secara tak sengaja maka tak membatalkan puasanya, kecuali jika ada muntahannya yang kembali masuk ke perut walau tak sengaja (maka batal puasanya).
4.	Sampainya sesuatu yang cair ke tenggorokan melalui mulut, hidung, atau telinga, baik itu secara sengaja, lupa, kesalahan, atau keterpaksaan. Seperti air kumur atau saat gosok gigi. Masuk dalam kategori hukum cairan ini juga, dupa dan kemenyan jika dihirup kuat-kuat sehingga masuk ke tenggorokan, asap yang diketahui (seperti rokok-pent), bercelak dan berminyak rambut pada siang hari jika rasanya sampai ke tenggorokan, jika tidak sampai ke tenggorokan tidak membatalkan puasa. Sebagaimana ia tak membatalkan puasa, jika hal itu dilakukannya pada malam hari).
5.	Sampainya sesuatu ke pencernaan, baik zat cair atau tidak, melalui mulut, hidung, mata atau pangkal rambut, baik masuknya dengan disengaja, keliru, lupa atau terlanjur. Adapun suntikan pada lobang kelamin laki-laki tidak membatalkan puasa. Begitu juga halnya mengkorek-korek lubang telinga, juga menelan sisa-sisa makanan yang masih menempel di antara gigi-gigi tidak membatalkan puasa, meskipun itu dilakukan dengan sengaja.

Demikian pula masuknya segala sesuatu, baik berupa cairan atau tidak, ke dalam pencernaan melalui lubang-lubang (menuju dalam tubuh) yang berada di atas perut, baik lubang tersebut lebar atau sempit, membatalkan puasa dan wajib mengqadlanya. Beda dengan sesuatu yang masuk melalui lubang bawah (perut), ia baru dianggap membatalkan puasa jika lubang bawah itu lebar (seperti lubang anus dan kelamin perempuan), dan barang yang masuk itu berupa zat cair (tidak benda yang keras).

Singkatnya, qadla' itu wajib bagi orang yang membatalkan puasa-puasa wajib, baik itu dilakukannya dengan sengaja, lupa, keterpaksaan; baik pembatalannya itu haram, boleh, atau wajib seperti orang yang membatalkan puasanya karena kekhawatirannya akan sesuatu yang fatal (jika ia puasa); baik pembatalan itu juga mewajibkan kafarat atau tidak; baik puasa fardhu itu asli atau puasa nadzar.
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
                                context.bloc<PageBloc>().add(GoToMateriPage());
                              } else {
                                setState(() {
                                  if (searchController.text.compareTo("") ==
                                      0) {
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
                                    width: MediaQuery.of(context).size.width *
                                        6 /
                                        8,
                                    child: TextField(
                                      autofocus: (searchController.text
                                              .compareTo("") ==
                                          0),
                                      controller: searchController,
                                      decoration:
                                          InputDecoration(hintText: "Search"),
                                    ),
                                  )
                                : Container(
                                    width: MediaQuery.of(context).size.width *
                                        6 /
                                        8,
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
                      "Puasa",
                      style: blackTextFont.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w700),
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
