part of 'models.dart';

enum CoffeeType { manualBrew, espressoBased, snack, nonCoffee, tea }

class Coffee extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String categories;
  final int price;
  final double rate;
  final List<CoffeeType> types;

  Coffee(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.categories,
      this.price,
      this.rate,
      this.types = const []});

  @override
  List<Object> get props => [
        id,
        picturePath,
        name,
        description,
        categories,
        price,
        rate,
      ];
}

List<Coffee> mockCoffees = [
  Coffee(
      id: 1,
      picturePath:
          "https://www.coffindo.id/images/news/mengenal_lebih_dekat_tentang_kopi_tubruk,_kopi_khas_indonesia-kDmwxSW6c6.jpeg",
      name: "Indonesian Tubruk",
      description: "Kopi Tubruk adalah minuman kopi khas Indonesia yang dibuat dengan menuangkan air panas ke dalam gelas atau teko yang sudah diisi bubuk kopi. Bisa dengan ditambahkan gula, bisa juga tanpa gula. Di Bali, Kopi Tubruk dikenal dengan nama “Kopi Selem” yang artinya kopi hitam.",
      categories: "Manual Brew",
      price: 18000,
      rate: 4.2,
      types: [CoffeeType.manualBrew]),
  Coffee(
      id: 2,
      picturePath:
          "https://www.pegipegi.com/travel/wp-content/uploads/2016/02/Kopi-Vietnam-Drip784-edit-1024x682-e1454495997811.jpg",
      name: "Vietnam Drip",
      description: "Kopi Vietnam atau yang dikenal sebagai Cà phê sữa đá adalah minuman kopi dingin yang berasal dari Vietnam dan dibuat dengan cara menyeduh kopi lalu dicampurkan es batu dan susu kental manis.",
      categories: "Manual Brew",
      price: 18000,
      rate: 4.5,
      types: [CoffeeType.manualBrew]),
  Coffee(
      id: 3,
      picturePath:
          "https://www.jakartanotebook.com/images/products/103/1020/45654/2/drohoey-filter-penyaring-kopi-v60-glass-coffee-filter-dripper-1-4-cups-zm00639-black-2.jpg",
      name: "V60",
      description: "V60 Hario adalah salah satu alat seduh kopi yang mengguanakan metode pour over. Jika dilihat kasat mata, bentuk dari alat ini mirip dengan cangkir. Alat seduh kopi satu ini memiliki bentuk kerucut pada bagian bawahnya dan akan mengalirkan kopi yang sudah disaring oleh kertas filter.",
      categories: "Manual Brew",
      price: 18000,
      rate: 3.8,
      types: [CoffeeType.manualBrew]),
  Coffee(
      id: 4,
      picturePath:
          "https://www.jakartanotebook.com/images/products/103/1020/43218/2/aeropress-french-press-coffee-maker-pot-1-liter-t35068-black-2.jpg",
      name: "French Press Coffee",
      description: "French Press adalah perangkat menyeduh kopi dipatenkan oleh desainer Italia Attilio Calimani pada tahun 1929. Benda ini biasa disebut sebagai cafetière, сafetière à piston, press pot, coffee press, atau coffee plunger.",
      categories: "Manual Brew",
      price: 18000,
      rate: 3.0,
      types: [CoffeeType.manualBrew]),
  Coffee(
      id: 5,
      picturePath:
          "http://3.bp.blogspot.com/-21IIdfgImzE/Uu9Ga31N9yI/AAAAAAAACjw/hh_zSbxPX9E/s1600/coffee_siphon.jpg",
      name: "Syphon",
      description: "Syphon merupakan salah satu manual brewing yang tersedia sebagai alternatif pennyeduhan kopi secara manual, alat ini tergolong unik karena alat penyeduh ini terlihat sebagai alat labolatorium ketimbang sebagai alat penyeduh kopi manual.  Terdiri atas dua tabung utama yang di hubungkan oleh tabung kaca kapiler dan terdapat api pemanas di bawah.  Tabung kaca paling bawah  Syphon tidak mengasilkan esspresso namun lebih menghasilkan kopi akhir yang balance mengingat air yang di dapat untuk brewing kopi merupakan air hasil suling dari pemanas tabung paling bawah.",
      categories: "Manual Brew",
      price: 30000,
      rate: 3.5,
      types: [CoffeeType.manualBrew]),
  Coffee(
      id: 6,
      picturePath:
          "https://www.cirellicoffee.com.au/wp-content/uploads/2016/10/1Pc-Dutch-Coffee-font-b-Cold-b-font-font-b-Drip-b-font-Water-font-b.jpg",
      name: "Japanese Cold Drip",
      description: "Japanese Iced Coffee tidak memerlukan alat cold brew atau coffee dripper yang seperti layaknya membuat kopi dingin selama ini. Hanya diperlukan sebuah dripper yang biasa dipakai dalam metode pour over V60. Dan saya yakin semua pecinta kopi dengan metode manual brewing pasti memiliki dripper ini. Selain dripper diperlukan juga paper filter karena cara membuat Japanese Iced Coffee hampir mirip dengan pour over yang biasa digunakan.",
      categories: "Manual Brew",
      price: 18000,
      rate: 3.0,
      types: [CoffeeType.manualBrew]),
];

List<Coffee> manualBrew = [
  Coffee(
      id: 1,
      picturePath:
          "https://www.coffindo.id/images/news/mengenal_lebih_dekat_tentang_kopi_tubruk,_kopi_khas_indonesia-kDmwxSW6c6.jpeg",
      name: "Indonesian Tubruk",
      description:
          "Kopi Tubruk adalah minuman kopi khas Indonesia yang dibuat dengan menuangkan air panas ke dalam gelas atau teko yang sudah diisi bubuk kopi. Bisa dengan ditambahkan gula, bisa juga tanpa gula. Di Bali, Kopi Tubruk dikenal dengan nama “Kopi Selem” yang artinya kopi hitam.",
      categories: "Manual Brew",
      price: 18000,
      rate: 4.2),
  Coffee(
      id: 2,
      picturePath:
          "https://www.pegipegi.com/travel/wp-content/uploads/2016/02/Kopi-Vietnam-Drip784-edit-1024x682-e1454495997811.jpg",
      name: "Vietnam Drip",
      description:
          "Kopi Vietnam atau yang dikenal sebagai Cà phê sữa đá adalah minuman kopi dingin yang berasal dari Vietnam dan dibuat dengan cara menyeduh kopi lalu dicampurkan es batu dan susu kental manis.",
      categories: "Manual Brew",
      price: 18000,
      rate: 4.5),
  Coffee(
      id: 3,
      picturePath:
          "https://www.jakartanotebook.com/images/products/103/1020/45654/2/drohoey-filter-penyaring-kopi-v60-glass-coffee-filter-dripper-1-4-cups-zm00639-black-2.jpg",
      name: "V60",
      description:
          "V60 Hario adalah salah satu alat seduh kopi yang mengguanakan metode pour over. Jika dilihat kasat mata, bentuk dari alat ini mirip dengan cangkir. Alat seduh kopi satu ini memiliki bentuk kerucut pada bagian bawahnya dan akan mengalirkan kopi yang sudah disaring oleh kertas filter.",
      categories: "Manual Brew",
      price: 18000,
      rate: 3.8),
  Coffee(
      id: 4,
      picturePath:
          "https://www.jakartanotebook.com/images/products/103/1020/43218/2/aeropress-french-press-coffee-maker-pot-1-liter-t35068-black-2.jpg",
      name: "French Press Coffee",
      description:
          "French Press adalah perangkat menyeduh kopi dipatenkan oleh desainer Italia Attilio Calimani pada tahun 1929. Benda ini biasa disebut sebagai cafetière, сafetière à piston, press pot, coffee press, atau coffee plunger.",
      categories: "Manual Brew",
      price: 18000,
      rate: 3.0),
  Coffee(
      id: 5,
      picturePath:
          "http://3.bp.blogspot.com/-21IIdfgImzE/Uu9Ga31N9yI/AAAAAAAACjw/hh_zSbxPX9E/s1600/coffee_siphon.jpg",
      name: "Syphon",
      description:
          "Syphon merupakan salah satu manual brewing yang tersedia sebagai alternatif pennyeduhan kopi secara manual, alat ini tergolong unik karena alat penyeduh ini terlihat sebagai alat labolatorium ketimbang sebagai alat penyeduh kopi manual.  Terdiri atas dua tabung utama yang di hubungkan oleh tabung kaca kapiler dan terdapat api pemanas di bawah.  Tabung kaca paling bawah  Syphon tidak mengasilkan esspresso namun lebih menghasilkan kopi akhir yang balance mengingat air yang di dapat untuk brewing kopi merupakan air hasil suling dari pemanas tabung paling bawah.",
      categories: "Manual Brew",
      price: 30000,
      rate: 3.5),
  Coffee(
      id: 6,
      picturePath:
          "https://www.cirellicoffee.com.au/wp-content/uploads/2016/10/1Pc-Dutch-Coffee-font-b-Cold-b-font-font-b-Drip-b-font-Water-font-b.jpg",
      name: "Japanese Cold Drip",
      description:
          "Japanese Iced Coffee tidak memerlukan alat cold brew atau coffee dripper yang seperti layaknya membuat kopi dingin selama ini. Hanya diperlukan sebuah dripper yang biasa dipakai dalam metode pour over V60. Dan saya yakin semua pecinta kopi dengan metode manual brewing pasti memiliki dripper ini. Selain dripper diperlukan juga paper filter karena cara membuat Japanese Iced Coffee hampir mirip dengan pour over yang biasa digunakan.",
      categories: "Manual Brew",
      price: 18000,
      rate: 3.0),
];

List<Coffee> espressoBased = [
  Coffee(
      id: 1,
      picturePath:
          "https://statics.indozone.news/content/2019/10/07/ers0M9/t_5d9ae209ae934_700.jpg",
      name: "Cappucino",
      description:
          "Cappucino adalah minuman khas Italia yang dibuat dari espresso dan susu, tetapi referensi lain juga ada yang menyebutkan bahwa kapucino berawal dari biji biji kopi tentara Turki yang tertinggal setelah peperangan yang di pimpin oleh Kara Mustapha Pasha di Wina, Austria melawan tentara gabungan Polandia-Germania.",
      categories: "Espresso Based",
      price: 25000,
      rate: 3.8),
  Coffee(
      id: 2,
      picturePath:
          "https://www.acouplecooks.com/wp-content/uploads/2020/10/How-to-make-a-latte-003.jpg",
      name: "Caffe Latte",
      description:
          "Caffè latte adalah espresso atau kopi yang dicampur dengan susu dan memiliki lapisan busa yang tipis di bagian atasnya. Perbandingan antara susu dengan kopi pada caffè latte adalah 2:1.",
      categories: "Espresso Based",
      price: 25000,
      rate: 4.5),
  Coffee(
      id: 3,
      picturePath:
          "https://majalah.ottencoffee.co.id/wp-content/uploads/2019/09/Screen-Shot-2019-09-18-at-5.19.33-PM.png",
      name: "Macchiato",
      description:
          "macchiato adalah minuman kopi yang dibuat dengan mencampurkan espresso dengan susu. Ada dua jenis macchiato yang biasanya disajikan, yaitu espresso macchiato dan latte macchiato. Espresso macchiato dibuat dengan menambahkan sedikit susu ke dalam segelas espresso.",
      categories: "Espresso Based",
      price: 25000,
      rate: 4.0),
  Coffee(
      id: 4,
      picturePath:
          "https://upload.wikimedia.org/wikipedia/commons/9/95/Long_Black_1.jpg",
      name: "Long Black",
      description:
          "Long Black adalah salah satu jenis kopi yang umumnya tersedia di Australia dan Selandia Baru. Long Black mirip dengan Americano, tetapi memiliki aroma dan cita rasa yang lebih kuat. Secangkir long black dibuat dengan menuangkan dua seloki espreso atau ristreto ke atas air panas.",
      categories: "Espresso Based",
      price: 20000,
      rate: 3.0),
  Coffee(
      id: 5,
      picturePath:
          "https://upload.wikimedia.org/wikipedia/commons/4/41/Espresso_BW_1.jpg",
      name: "Espresso",
      description:
          "Espreso adalah minuman yang dihasilkan dengan mengekstraksi biji kopi yang sudah digiling dengan menyemburkan air panas di bawah tekanan tinggi. Espresso berasal dari Bahasa Italia yang berarti express atau 'cepat' karena dibuat untuk disajikan dengan segera kepada pelanggan.",
      categories: "Espresso Based",
      price: 20000,
      rate: 3.6),
  Coffee(
      id: 6,
      picturePath:
          "https://muchbutter.com/wp-content/uploads/2020/03/094-Dalgona-Coffee-Frothy-Coffee-1.jpg",
      name: "Dalgona Coffee",
      description:
          "Dalgona adalah minuman yang dibuat dengan mencampurkan kopi instan, gula, dan air panas dengan jumlah perbandingan yang sama. Campuran itu kemudian dikocok sehingga menjadi krim dan kemudian ditambahkan ke susu dingin atau panas.",
      categories: "Espresso Based",
      price: 20000,
      rate: 4.0),
  Coffee(
      id: 7,
      picturePath:
          "https://i0.wp.com/resepkoki.id/wp-content/uploads/2020/03/Resep-Coffee-Alpukat.jpg?fit=975%2C1300&ssl=1",
      name: "Avocado Coffee",
      description:
          "Avocado Coffee punya cita rasa yang berbeda dari jenis kopi lainnya. Pahitnya kopi berpadu dengan creamy-nya jus alpukat. Kopi alpukat ini semakin nikmat jika diminum dingin. Sering disajikan di berbagai coffee shop populer, kali ini buat sendiri saja.",
      categories: "Espresso Based",
      price: 20000,
      rate: 4.5),
  Coffee(
      id: 8,
      picturePath:
          "https://cdn.yummy.co.id/content-images/images/20200609/IPBtGi4hifX1dlxDLi2CAuNUV20lAVu3-31353931363837343238d41d8cd98f00b204e9800998ecf8427e_800x800.jpg",
      name: "Brown Sugar Coffee",
      description:
          "Brown sugar di Indonesia dikenal dengan nama gula merah. Jika gula aren terbuat dari nira pohon aren, gula merah berasal dari nira pohon kelapa. Brown sugar atau gula aren juga memiliki konsistensi tekstur yang lebih padat dan lengket dibandingkan gula aren. Rasa brown sugar ini lebih manis sehingga tidak perlu menggunakannya terlalu banyak saat memasak.",
      categories: "Espresso Based",
      price: 20000,
      rate: 3.5),
  Coffee(
      id: 9,
      picturePath:
          "https://globalassets.starbucks.com/assets/cc9b573f8c1b43cd89cdab08ae5b9ec7.jpg?impolicy=1by1_wide_1242",
      name: "Ice Milk Coffee",
      description:
          "Sajian kopi susu dingin yang menyegarkan cocok untuk dihidangkan di segala suasana.",
      categories: "Espresso Based",
      price: 20000,
      rate: 3.8),
  Coffee(
      id: 10,
      picturePath:
          "https://www.nespresso.com/ncp/res/uploads/recipes/c8e03bd68a53da6cae69936e80773b9dac62d981.jpg",
      name: "Cafe Bonbon",
      description:
          "Cafe Bonbon atau yang biasa dikenal dengan cortado condensada. Cafe Bonbon adalah espresso yang dicampur dengan susu kental manis.",
      categories: "Espresso Based",
      price: 20000,
      rate: 3.9),
];

List<Coffee> snack = [
  Coffee(
      id: 1,
      picturePath:
          "https://asset.kompas.com/crops/eWHh8pwv_RRbVWvizxmBbLFdCJo=/0x22:968x667/750x500/data/photo/2019/12/09/5dee4f6a9e1dd.jpg",
      name: "French Fries",
      description:
          "Kentang goreng adalah hidangan yang dibuat dari potongan-potongan kentang yang digoreng dalam minyak goreng panas. Di dalam menu rumah-rumah makan, kentang goreng yang dipotong panjang-panjang dan digoreng dalam keadaan terendam di dalam minyak goreng panas disebut French fries.",
      categories: "Snack",
      price: 18000,
      rate: 4.4),
  Coffee(
      id: 2,
      picturePath:
          "https://cdn.idntimes.com/content-images/post/20190729/eatineraryid-25dba62930eea3c91800b382b5fe7f2a.jpg",
      name: "Bedjoe Sausage",
      description:
          "Sosis gulung (bahasa Inggris: sausage roll) adalah sebuah camilan snack gurih, populer di negara-negara Persemakmuran. Mereka dijual di gerai ritel dan juga tersedia dari toko roti sebagai makanan yang bisa dibawa pulang. Versi miniatur dapat disajikan sebagai makanan prasmanan atau pesta. Resep daging dan kue yang serupa termasuk klobásník Ceko, saucijzenbroodje Belanda, Münsterländer Wurstbrötchen Jerman, dan roti sosis di Amerika Serikat.",
      categories: "Snack",
      price: 18000,
      rate: 4.0),
  Coffee(
      id: 3,
      picturePath:
          "https://ae01.alicdn.com/kf/H9e0a4b2023414a80b1fcb0d7512dc4894/Sandwich-Grill-Bersih-Sandwich-Oven-Khusus-Makanan-Roti-Pemanggang-Roti-Grill-Bersih-Sarapan-Baking-Alat-Memasak.jpg_Q90.jpg_.webp",
      name: "Sandwich Grill",
      description:
          "Roti lapis atau roti isi (bahasa Inggris: sandwich), adalah makanan yang biasanya terdiri dari sayuran, keju atau daging yang diiris, diletakkan di atas atau di antara irisan roti, atau lebih tepatnya makanan apa pun di mana dua atau lebih potongan roti berfungsi sebagai wadah atau pembungkus untuk jenis makanan lain",
      categories: "Snack",
      price: 20000,
      rate: 3.7),
  Coffee(
      id: 4,
      picturePath:
          "https://s23209.pcdn.co/wp-content/uploads/2016/09/Sheet-Pan-NachosIMG_2174-600x900.jpg?p=24917",
      name: "Nachos",
      description:
          "Nachos adalah makanan khas Mexico yang terbuat dari keripik Tortilla. Biasanya Nachos dimakan dengan keju cair diatasnya.",
      categories: "Snack",
      price: 20000,
      rate: 3.4),
  Coffee(
      id: 5,
      picturePath:
          "https://asset.kompas.com/crops/Sp5eindGtmEmu-zxjhioDhWXtxk=/0x0:1920x1280/750x500/data/photo/2021/01/04/5ff2caec5696b.jpg",
      name: "Risoles",
      description:
          "Risoles adalah makanan ringan yang cukup terkenal di Indonesia. Risoles berasal dari Bahasa Belanda yang artinya pastri isi daging. Risoles biasanya berisi daging cincang beserta sayuran yang dibungkus dengan dadar yang kemudian dilapisi dengan tepung panir serta kocokan telur.",
      categories: "Snack",
      price: 18000,
      rate: 3.6),
];

List<Coffee> nonCoffee = [
  Coffee(
      id: 1,
      picturePath:
          "https://images.japancentre.com/recipes/pics/16/main/matcha-latte.jpg?1469572822",
      name: "Green Tea Latte",
      description:
          "Green tea latte, diracik dari tiga bahan dasar utama berupa powder green tea, ice, dan susu yang diproses mixing. Green tea latte (teh hijau latte) dan kopi Caramel Macchiato. Sedangkan rasanya, identik manis dan pahit khas green tea. Sesuai julukannya, minuman ini dominan dengan warna hijau yang cantik.",
      categories: "Non-Coffee",
      price: 20000,
      rate: 4.6),
  Coffee(
      id: 2,
      picturePath:
          "https://www.tokobubuk.com/wp-content/uploads/2016/03/Choco-Cheese-Glass-New.jpg",
      name: "Ice Choco and Cheese",
      description: "Coklat dengan rasa keju yg gurih manis rasanya",
      categories: "Non-Coffee",
      price: 20000,
      rate: 4.2),
  Coffee(
      id: 3,
      picturePath:
          "https://images.tokopedia.net/img/cache/700/product-1/2020/4/9/batch-upload/batch-upload_65da07a8-361b-4ba8-b589-0565f3d6d0b8",
      name: "Ice Red Velvet",
      description:
          "Rasa red velvetnya kerasa banget apalagi dengan toping es krim nikmatnya tiada tara",
      categories: "Non-Coffee",
      price: 20000,
      rate: 3.8),
  Coffee(
      id: 4,
      picturePath:
          "https://ds393qgzrxwzn.cloudfront.net/resize/m500x500/cat1/img/images/0/bh2fxl9huQ.jpg",
      name: "Ice Taro",
      description:
          "Rasa taro dengan serutan dark chocolate, taro apa sich taro itu dari tales ya gaess",
      categories: "Non-Coffee",
      price: 20000,
      rate: 4.9),
];

List<Coffee> tea = [
  Coffee(
      id: 1,
      picturePath:
          "https://content.instructables.com/ORIG/FZS/6XPW/IICCX4IR/FZS6XPWIICCX4IR.jpg?auto=webp",
      name: "French Press Tea",
      description:
          "Sebuah pers Perancis, juga dikenal sebagai cafetière, cafetière à piston, Caffettiera sebuah stantuffo, press pot, kopi pers, atau kopi plunger, adalah kopi perangkat pembuatan bir, meskipun juga dapat digunakan untuk tugas-tugas lainnya. Pada tahun 1923 Ugo Paolini, seorang Italia, mengajukan dokumen paten yang berkaitan dengan pemisah jus tomat dan ia mengembangkan ide membuat teko kopi dengan tindakan tekan dan filter. Ia menyerahkan patennya pada tahun 1928 kepada desainer Italia Attilio Calimani dan Giulio Moneta yang mengajukannya pada tahun 1929.",
      categories: "Tea",
      price: 15000,
      rate: 3.8),
  Coffee(
      id: 2,
      picturePath:
          "https://magfood-amazy.com/wp-content/uploads/2017/12/ice-lemon-tea.jpg",
      name: "Lemon Tea",
      description:
          "Lemon tea adalah minuman rendah kalori yang akan membantu Anda mengatur dan mengurangi jumlah kalori yang Anda konsumsi. Selain menurunkan berat badan, lemon tea mengandung phytochemical yang membantu kondisi tubuh dalam memerangi penyakit jantung, diabetes, kanker dan osteoporosis.",
      categories: "Tea",
      price: 18000,
      rate: 4.1),
  Coffee(
      id: 3,
      picturePath:
          "https://images.tokopedia.net/img/cache/500-square/product-1/2020/8/31/5787003/5787003_17e1d6ee-bd48-452d-bd9e-319458696c5b.jpeg.webp",
      name: "Lychee Tea",
      description:
          "Menu anti gerah sore ini adalah menghabiskan sisa buah lychee kaleng kemaren. Kali ini nggak pakai syrup jahe deh biar mudah dibuat siapa saja. Iced lychee tea ini kalau direstoran harganya bikin dendam kesumat. Pengen nyuruh orang restoran gantian beli bikinan kita dengan harga lebih murah deh diskon 10% wong bikinnya simpel saja lho. Bikin biang teh dulu biar mudah, dari teh daun diseduh air mendidih. Diamkan sampai dingin. Saring. Sisihkan.",
      categories: "Tea",
      price: 20000,
      rate: 3.6),
];
