// disini kita akan membuat model dari data obat
class obatModel {
  final String obat_title;
  final String obat_deskripsi;
  final String obat_komposisi;
  final String obat_rule;
  final String imageUrls;

  const obatModel({
    required this.obat_title,
    required this.obat_deskripsi,
    required this.obat_komposisi,
    required this.obat_rule,
    required this.imageUrls,
  });
}

const obatList = [
  obatModel(
    obat_title: 'POLYSILANE SIRUP',
    obat_deskripsi:
        'POLYSILANE SIRUP merupakan obat dengan kandungan Aluminium hidroksida, Magnesium Hidroksida, dan Polidimetilsiloksan dalam bentuk sirup. Obat ini digunakan untuk mengurangi gejala-gejala yang berhubungan dengan: kelebihan asam lambung, gastritis, tukak lambung, tukak usus 12 jari, mual, nyeri lambung, nyeri ulu hati, kembung dan perasaan penuh pada lambung.',
    obat_komposisi:
        'Tiap 5 ml suspensi mengandung : \n -Dimetilpolisiloksan 80 mg, \n -Aluminium Hidroksida 200 mg, \n -Magnesium Hidroksida 200 mg.',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa dan anak usia lebih dari 12 tahun : 1 - 2 sendok takar (5-10 ml), 3-4 kali sehari. Anak-anak usia 6-12 tahun : 1/2 - 1 sendok takar (2.5-5 ml), 3-4 kali sehari.',
  ),
  obatModel(
    obat_title: 'LAPRAZ 30 MG 10 KAPSUL',
    obat_deskripsi:
        'LAPRAZ 30 MG 10 KAPSUL mengandung zat aktif Lansoprazole. Lansoprazole adalah merupakan obat golongan proton pump inhibitor yang digunakantukak duodenum dan tukak lambung ringan, tukak peptik, refluks esofagitis, sindrom zollinger-ellison dan eradikasi H.pylori. Dalam penggunaan obat ini harus SESUAI DENGAN RESEP DOKTER',
    obat_komposisi: 'Lansoprazole 30 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. Esofagitis refluks Dewasa: Pengobatan: 30 mg 1 kali sehari, selama 4-8 minggu. Profilaksis: 15 mg 1 kali sehari, dapat ditingkatkan hingga 30 mg jika perlu. Refluks gastro-esofagus Dewasa: 15-30 mg 1 kali sehari, selama 4 minggu. Ulserasi terkait NSAID Dewasa: 30 mg sekali sehari selama 4-8 minggu. Sindrom Zollinger-Ellison Dewasa: Awalnya, 60 mg 2 kali sehari, dapat disesuaikan hingga 180 mg setiap hari sesuai respons. Dosis harian >120 mg harus diberikan dalam 2 dosis terbagi. Eradikasi H. pylori Dewasa: Sebagai terapi rangkap 3: 30 mg 2 kali sehari, selama 7-14 hari (dalam kombinasi dengan antibiotik). Sebagai terapi ganda: 30 mg tiga kali sehari selama 14 hari dalam kombinasi dengan amoksisilin. Tukak lambung/duodenum karena NSAID Dewasa: 15-30 mg 1 kali sehari. Tukak Peptik/ Peptic Ulcer Dewasa: 30 mg 1 kali sehari, selama 2-4 minggu (ulkus duodenum) atau selama 4-8 minggu (tukak lambung). Lansia: Maks: 30 mg per hari.',
  ),
  obatModel(
    obat_title: 'ANTASIDA DOEN ',
    obat_deskripsi:
        'ANTASIDA DOEN merupakan obat sakit maag dengan kandungan Alumunium Hydroxide dan Magnesium Hydroxide. Kombinasi Alumunium Hydroxide dan Magnesium Hydroxide bekerja menetralkan asam lambung dan menginaktifkan pepsin, sehingga dapat digunakan untuk mengurangi gejala yang berhubungan dengan kelebihan asam lambung, nyeri ulu hati akibat iritasi oleh asam lambung, kembung dan perasaan penuh pada lambung.',
    obat_komposisi: 'Alumunium Hydroxide 200 mg, Magnesium Hydroxide 200 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa : 1-2 tablet, 3-4 kali per hari. Anak (6-12 tahun) : 0.5-1 tablet, 3-4 kali per hari.',
  ),
  obatModel(
    obat_title: 'MAGNAL FORTE',
    obat_deskripsi:
        'MAGTRAL FORTE merupakan obat dengan kandungan Al(OH)3, Mg(OH)2 dan simethicone dalam bentuk sirup. Obat ini digunakan untuk mengurangi gejala-gejala yang berhubungan dengan kelebihan asam lambung, gastritis, tukak lambung, tukak usus dua belas jari, dengan gejala seperti mual, nyeri lambung, nyeri ulu hati, kembung dan perasaan penuh pada lambung',
    obat_komposisi:
        'Per 5 mL : Al(OH)3 400 mg, Mg(OH)2 400 mg, Simethicone 80 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa : 1-2 sendok takar (5-10 ml), 3-4 kali sehari Anak-anak 6-12 tahun 0.5 -1 sendok takar(2.5 ml-5 ml), 3-4 kali sehari',
  ),
  obatModel(
    obat_title: 'GASTRUCID TABLET',
    obat_deskripsi:
        'GASTRUCID TABLET merupakan obat yang digunakan untuk mengatasi gangguan pada saluran pencernaan seperti gastritis, perut kembung, maag, dispepsia, hiatus hernia, tukak lambung dan usus duabelas jari.',
    obat_komposisi:
        'Mg(OH)2 325 mg, Al(OH)3 325 mg, Dimethylpolysiloxane 50 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule: '3 x sehari 1-2 tablet kunyah',
  ),
  obatModel(
    obat_title: 'Polysilane 8 Tablet',
    obat_deskripsi:
        'Polysilane Tablet  bermanfaat untuk mengatasi sakit maag dan perut kembung. Polysilane Tablet  memiliki kandungan utama aluminium hidroksida, magnesium hidroksida, dan simethicone. Bahan tersebut bekerja dengan cara menetralkan asam lambung dan mengurangi gas di dalam saluran pencernaan.',
    obat_komposisi:
        'Gel kering aluminium hidroksida 200 mg, magnesium hidroksida 200 mg, dan simethicone 80 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'TabletDewasa dan anak usia >12 tahun: 1–2 tablet, 3–4 kali sehari. Anak usia 6–12 tahun: ½–1 tablet, 3–4 kali sehari.',
  ),
  obatModel(
    obat_title: 'Pumpitor 20Mg 10 Kapsul',
    obat_deskripsi:
        'Pumpitor Capsule 20 Mg 10 Kapsul bermanfaat untuk mengatasi gangguan lambung, seperti penyakit asam lambung, sakit maag, atau tukak lambung.Pumpitor Capsule 20 Mg 10 Kapsul bekerja dengan cara mengurangi produksi asam di dalam lambung. Dengan begitu, keluhan akibat peningkatan asam lambung bisa mereda.',
    obat_komposisi: 'Omeprazole 20 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Kondisi: Penyakit asam lambung (GERD) Dewasa: 20–40 mg sekali sehari, selama 4–8 minggu.Kondisi: Tukak lambungDewasa: 20–40 mg sekali sehari, selama 4 sampai 8 minggu..',
  ),
  obatModel(
    obat_title: 'Rantin 150Mg 10 Tablet',
    obat_deskripsi:
        'Rantin 150 Mg 10 Tablet bermanfaat untuk mengatasi penyakit akibat asam lambung berlebih.Beberapa contoh penyakit akibat asam lambung berlebih adalah tukak lambung, sakit maag, penyakit refluks asam lambung (GERD), dan sindrom Zollinger-Ellison. Rantin 150 Mg 10 Tablet bekerja dengan cara menghambat sekresi asam lambung berlebih.',
    obat_komposisi: 'Ranitidine 150mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Kondisi: Penyakit asam lambung atau GERDDewasa: 150 mg 2 kali sehari atau 300 mg sekali sehari, dikonsumsi selama 8 minggu. Pada kasus GERD berat, dapat diberikan dosis 150 mg 4 kali sehari selama 12 minggu.Anak-anak (1 bulan–16 tahun): 5–10 mg/kgBB per hari, dibagi 2 kali pemberian. Dosis maksimal 300 mg per hari.',
  ),
  obatModel(
    obat_title: 'Promag Suspensi 60 ml',
    obat_deskripsi:
        'Promag Suspensi bermanfaat untuk mengatasi sakit maag, penyakit asam lambung naik, dan perut kembung.Promag Suspensi mengandung hydrotalcite dan magnesium hidroksida yang bekerja cepat dalam mengatasi dan meredakan sakit maag, serta menurunkan asam lambung. Promag juga mengandung simethicone yang bekerja dengan mengurangi gas berlebih di saluran pencernaan.',
    obat_komposisi:
        'Setiap 5 ml mengandung hydrotalcite 200 mg, magnesium hydroxide 150 mg, dan simethicone 50 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa: 1–2 sendok takar (5–10 ml), 3-4 kali sehari. Anak usia 6–12 tahun: 1 sendok takar (5 ml), 3–4 kali sehari.ikuti petunjuk dokter.',
  ),
  obatModel(
    obat_title: 'Promag Tablet',
    obat_deskripsi:
        'Promag Tablet bermanfaat untuk mengatasi sakit maag, penyakit asam lambung naik, dan perut kembung.Promag Tablet mengandung hydrotalcite dan magnesium hidroksida yang bekerja cepat atasi redakan sakit maag dan menurunkan asam lambung. Selain itu, Promag juga mengandung simethicone yang dapat mengurangi gas berlebih di saluran pencernaan.',
    obat_komposisi:
        'Hydrotalcite 200 mg, magnesium hydroxide 150 mg, simethicone 50 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa dan anak di atas 12 tahun: 3–4 kali sehari 1–2 tabletAnak-anak 6–12 tahun: 3–4 kali sehari, 1/2–1 tablet, atau ikuti petunjuk dokter.',
  ),
  obatModel(
    obat_title: 'Esomeprazole 20 mg Tablet ',
    obat_deskripsi:
        'Esomeprazole 20 mg Tablet bermanfaat untuk mengobati penyakit asam lambung atau gastroesophageal reflux disease (GERD), tukak lambung, esofagitis erosif, dan sindrom Zollinger-Ellison.Esomeprazole 20 mg Tablet bekerja dengan cara menurunkan produksi asam berlebih di dalam lambung. Dengan begitu, keluhan akibat peningkatan asam lambung, seperti nyeri ulu hati, mual, dan kembung, bisa mereda.',
    obat_komposisi: 'Esomeprazole magnesium 20 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa: 20–40 mg, 1 kali sehari selama 4 minggu. Dosis pemeliharaan adalah 20 mg, 1 kali sehari selama 6 bulan.Anak-anak usia 1–11 tahun dengan berat badan ≥10 kg hingga <20 kg: 10 mg, 1 kali sehari selama 8 minggu.Anak-anak usia 1–11 tahun dengan berat badan ≥20 kg: 10–20 mg, 1 kali sehari selama 8 minggu. Dosis pemeliharaan 10 mg, 1 kali sehari',
  ),
  obatModel(
    obat_title: 'Sanmag Suspensi 120Ml',
    obat_deskripsi:
        'Sanmag Suspensi bermanfaat untuk mengatasi keluhan yang disebabkan oleh kelebihan produksi asam lambung, seperti nyeri ulu hati, rasa panas di dada, mual, muntah, atau perut kembung akan mereda.Sanmag Suspensi mengandung magnesium trisilikat dan aluminium hidroksida, yang bekerja dengan menetralisir asam lambung, dan simetikon yang bekerja dengan memecah gas dalam saluran pencernaan. Obat ini dapat digunakan pada penderita sakit maag, tukak lambung, maupun ulkus duodenum',
    obat_komposisi:
        'Tiap 5 ml mengandung 325 mg magnesium trisilikat, 325 mg aluminium hidroksida, dan 25 mg simethicone',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule: 'Sanmag Suspensi dapat dikonsumsi 1–2 sendok takar per hari.',
  ),
  obatModel(
    obat_title: 'Ranivel Sirup',
    obat_deskripsi:
        'Ranivel Sirup bermanfaat untuk mengobati keluhan yang berkaitan dengan produksi asam lambung berlebih, seperti rasa panas pada ulu hati, mual, dan kembung.',
    obat_komposisi: 'Ranitidine 75 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa: 150 mg 2 kali sehari atau 300 mg sekali sehari sebelum tidur, selama 8 minggu atau dapat diperpanjang hingga 12 minggu jika perlu.Anak-anak usia 3–11 tahun: 5–10 mg/kgBB per hari, dibagi menjadi 2 dosis. Dosis maksimal 600 mg per hari.',
  ),
  obatModel(
    obat_title: 'Mylanta 200 Mg 10 Tablet',
    obat_deskripsi:
        'Mylanta 200 Mg 10 Tablet bermanfaat untuk meredakan gejala sakit maag, gastritis, tukak lambung, atau ulkus duodenum, seperti mual, sakit perut, atau nyeri ulu hati.',
    obat_komposisi:
        'Aluminium hidroksida 200 mg, magnesium hidroksida 200 mg, dan simethicone 20 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule: '1–2 tablet, 3-–4 kali sehari.',
  ),
  obatModel(
    obat_title: 'Mylanta Cair 50 Ml',
    obat_deskripsi:
        'Mylanta Cair 50 Ml bermanfaat untuk meredakan gejala sakit maag, gastritis, tukak lambung, atau ulkus duodenum, seperti mual, sakit perut, atau nyeri ulu hati..',
    obat_komposisi:
        'Aluminium hidroksida 200 mg, magnesium hidroksida 200 mg, dan simethicone 20 mg/5 ml',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule: '1–2 sendok takar (5–10 ml), 3–4 kali sehari',
  ),
  obatModel(
    obat_title: 'Plantacid Suspensi',
    obat_deskripsi:
        'Plantacid Suspensi bermanfaat untuk menangani gejala kelebihan asam lambung, seperti mual, mulas, sakit perut, nyeri ulu hati, dan kembung. Obat ini juga digunakan untuk menangani gejala akibat gastritis, tukak lambung, atau ulkus duodenum.Plantacid Suspensi mengandung aluminium hidroksida, magnesium hidroksida, dan simethicone. Aluminium hidroksida dan magnesium hidroksida bekerja dengan cara menetralkan asam lambung, sedangkan simethicone bekerja dengan cara menguraikan gelembung gas di dalam perut.',
    obat_komposisi:
        'Tiap 5 ml Plantacid mengandung 230 mg aluminium hidroksida, 300 mg magnesium hidroksida, dan 50 mg simethicone',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa: 5–10 ml, 3–4 kali sehari. Anak usia 6–12 tahun: 2,5–5 ml, 3–4 kali sehari.',
  ),
  obatModel(
    obat_title: 'Hufamag Plus Tablet Kunyah ',
    obat_deskripsi:
        'Hufamag Plus Tablet Kunyah bermanfaat mengurangi gejala yang berhubungan dengan kelebihan asam lambung, seperti mual, nyeri lambung, nyeri ulu hati, kembung, dan perasaan penuh pada lambung. Hufamag Plus Tablet Kunyah memiliki kandungan utama aluminium hidroksida, magnesium hidroksida, dan simethicone. Kombinasi bahan tersebut bekerja dengan cara menurunkan jumlah asam lambung dan mengurangi gas di dalam saluran pencernaan.',
    obat_komposisi:
        'Gel kering aluminium hidroksida 200 mg, magnesium hidroksida 200 mg, dan simethicone 50 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa dan anak usia >12 tahun: 1–2 tablet, 3–4 kali sehari. Anak usia 6–12 tahun: ½–1 tablet, 3–4 kali sehari.',
  ),
  obatModel(
    obat_title: 'ISPRINOL SIRUP ',
    obat_deskripsi:
        'ISPRINOL SIRUP adalah obat yang mengandung methisoprinol yang di gunakan untuk meningkatkan daya tahan tubuh dan menyembuhkan penyakit-penyakit akibat infeksi yang di sebabkan oleh virus atau penyakit yang menyebabkan lemahnya sistem kekebalan tubuh seperti kanker. Obat ini di gunakan untuk mempercepat penyembuhan cacar air, gondongan, herpes, kutil kelamin, hepatitis B, influenza pada orang dewasa dan anak, bronkhitis, rinofaringitis, campak. Dalam penggunaan obat ini HARUS SESUAI DENGAN PETUNJUK DOKTER.',
    obat_komposisi: 'Per 5 mL : Methisoprinol 250 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. Dewasa dan anak: 50 mg/kg bb/hr dalam 3-4 dosis terbagi. Dapat ditingkatkan sampai dengan 100 mg/kg bb/hr dalam 4- 6 dosis terbagi. Pengobatan dilanjutkan 1-2 hari sesudah gejala penyakit mereda',
  ),
  obatModel(
    obat_title: 'LAPROSIN SIRUP',
    obat_deskripsi:
        'LAPROSIN SIRUP merupakan obat yang digunakan untuk mengobati beberapa infeksi yang disebabkan oleh virus. Laprosin mengandung methisoprinol, Cara kerja obat ini dengan cara meningkatkan respons kekebalan alami limfosit dan dapat menghambat perkembangan virus dengan meningkatkan ribosom dan polyribosomes. Dalam penggunaan obat ini harus SESUAI DENGAN PETUNJUK DOKTER.',
    obat_komposisi: 'Methisoprinol',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. Dws & anak >5 thn 50 mg/kg BB/hr, dpt ditingkatkan s/d 100 mg/kg BB/hr. Dosis dpt diberikan dlm 4-6 dosis terbagi. Anak <5 thn 50 mg/kgBB/hr, dpt ditingkatkan menjadi 100 mg/kg BB/hr. Lama terapi: Terapi jangka pendek untuk infeksi virus akut Dosis hrs dilanjutkan hngga 1 sampai 2 hr ssdh gejala membaik. Terapi jangka panjang untuk infeksi virus akut Dosis hrs dilanjutkan hingga 1-2 minggu ssdh gejala membaik.',
  ),
  obatModel(
    obat_title: 'VALTREX',
    obat_deskripsi:
        'VALTREX merupakan antivirus yang mengandung Valacyclovir. Obat ini berfungsi pada anak untuk mengobati infeksi mulut akibat virus herpes simplex dan cacar akibat virus varicella zoster. Pada dewasa untuk mengobati infeksi kulit dan mulut akibat virus herpes zoster. Dalam penggunaan obat ini HARUS SESUAI DENGAN PETUNJUK DOKTER.',
    obat_komposisi: 'Valaciclovir HCl 500 mg',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. Dewasa herpes zoster 1000 mg 3 kali/hari selama 7 hari. pasien dgn bersihan kreatinin 15-30 ml/mnt 1000 mg 2 kali/hari. Herpes simpleks episode awal 500mg 2 kali/hari selama 10 hr.episode rekuen 500mg 2 kali/hari selama 5 hari. Pasien dengan bersihan kreatin 15-30 mL/mnt tidak perlu modifikasi dosis. Pasien dengan bersihan kreatin <15mL/mnt 500mg 1 kali sehari',
  ),
  obatModel(
    obat_title: 'Zegavit 5 Kaplet',
    obat_deskripsi:
        'ZEGAVIT KAPLET merupakan campuran multivitamin dan mineral. Vitamin dan beberapa mineral merupakan bahan-bahan esensial yang terdapat dalam makanan sehari-hari untuk metabolisme yang normal dan mempertahankan kesehatan. Suplementasi vitamin dan mineral dibutuhkan untuk mencegah/memperbaiki defisiensi relatif pada diet yang disebabkan meningkatnya kebutuhan, kurangnya makanan yang masuk atau adanya gangguan dalam penyerapan makanan.',
    obat_komposisi:
        'Vitamin E 30 IU, Vitamin C 750 mg, Vitamin B1 HCL 15 mg, Vitamin B2 15 mg, Niacinamide 100 mg, Vitamin B6 25 mg, Vitamin B12 12 mcg, Folic Acid 0.4 mg, Calcium (sebagai Calcium Pantothenate and Calcium Carbonate) 20 mg, Pantothenic Acid (sebagai Calcium Pantothenate) 20 mg, Zinc (sebagai Zinc Sulfate Heptahydrate) 20 mg.',
    imageUrls: 'https://cf.shopee.co.id/file/9605e0a3cfb406c238166b6bf882c705',
    obat_rule:
        'Dewasa dan anak 12 tahun atau lebih: 1 x per hari, 1 kaplet atau sesuai petunjuk dokter.',
  ),
];
